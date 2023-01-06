-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Гру 31 2022 р., 16:39
-- Версія сервера: 10.5.18-MariaDB-10+deb11u1
-- Версія PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `enewgiserz`
--

-- --------------------------------------------------------

--
-- Структура таблиці `lgtpwr_cluster`
--

CREATE TABLE `lgtpwr_cluster` (
  `group_id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп даних таблиці `lgtpwr_cluster`
--

INSERT INTO `lgtpwr_cluster` (`group_id`, `name`) VALUES
(1, 'Група 1'),
(2, 'Група 2'),
(3, 'Група 3');

-- --------------------------------------------------------

--
-- Структура таблиці `lgtpwr_regions`
--

CREATE TABLE `lgtpwr_regions` (
  `region_id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп даних таблиці `lgtpwr_regions`
--

INSERT INTO `lgtpwr_regions` (`region_id`, `name`) VALUES
(1, 'Львівська');

-- --------------------------------------------------------

--
-- Структура таблиці `lgtpwr_shutdown_schedule`
--

CREATE TABLE `lgtpwr_shutdown_schedule` (
  `shutdown_schedule_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `weekday_id` int(11) NOT NULL,
  `time_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп даних таблиці `lgtpwr_shutdown_schedule`
--

INSERT INTO `lgtpwr_shutdown_schedule` (`shutdown_schedule_id`, `region_id`, `group_id`, `weekday_id`, `time_id`, `status_id`) VALUES
(1, 1, 1, 1, 1, 1),
(2, 1, 2, 1, 1, 2),
(3, 1, 3, 1, 1, 3),
(4, 1, 1, 1, 2, 2),
(5, 1, 2, 1, 2, 3),
(6, 1, 3, 1, 2, 1),
(7, 1, 1, 1, 3, 3),
(8, 1, 2, 1, 3, 1),
(9, 1, 3, 1, 3, 2),
(10, 1, 1, 1, 4, 1),
(11, 1, 2, 1, 4, 2),
(12, 1, 3, 1, 4, 3),
(13, 1, 1, 1, 5, 2),
(14, 1, 2, 1, 5, 3),
(15, 1, 3, 1, 5, 1),
(16, 1, 1, 1, 6, 3),
(17, 1, 2, 1, 6, 1),
(18, 1, 3, 1, 6, 2),
(19, 1, 1, 4, 1, 1),
(20, 1, 2, 4, 1, 2),
(21, 1, 3, 4, 1, 3),
(22, 1, 1, 4, 2, 2),
(23, 1, 2, 4, 2, 3),
(24, 1, 3, 4, 2, 1),
(25, 1, 1, 4, 3, 3),
(26, 1, 2, 4, 3, 1),
(27, 1, 3, 4, 3, 2),
(28, 1, 1, 4, 4, 1),
(29, 1, 2, 4, 4, 2),
(30, 1, 3, 4, 4, 3),
(31, 1, 1, 4, 5, 2),
(32, 1, 2, 4, 5, 3),
(33, 1, 3, 4, 5, 1),
(34, 1, 1, 4, 6, 3),
(35, 1, 2, 4, 6, 1),
(36, 1, 3, 4, 6, 2),
(37, 1, 1, 7, 1, 1),
(38, 1, 2, 7, 1, 2),
(39, 1, 3, 7, 1, 3),
(40, 1, 1, 7, 2, 2),
(41, 1, 2, 7, 2, 3),
(42, 1, 3, 7, 2, 1),
(43, 1, 1, 7, 3, 3),
(44, 1, 2, 7, 3, 1),
(45, 1, 3, 7, 3, 2),
(46, 1, 1, 7, 4, 1),
(47, 1, 2, 7, 4, 2),
(48, 1, 3, 7, 4, 3),
(49, 1, 1, 7, 5, 2),
(50, 1, 2, 7, 5, 3),
(51, 1, 3, 7, 5, 1),
(52, 1, 1, 7, 6, 3),
(53, 1, 2, 7, 6, 1),
(54, 1, 3, 7, 6, 2),
(55, 1, 1, 2, 1, 2),
(56, 1, 2, 2, 1, 3),
(57, 1, 3, 2, 1, 1),
(58, 1, 1, 2, 2, 3),
(59, 1, 2, 2, 2, 1),
(60, 1, 3, 2, 2, 2),
(61, 1, 1, 2, 3, 1),
(62, 1, 2, 2, 3, 2),
(63, 1, 3, 2, 3, 3),
(64, 1, 1, 2, 4, 2),
(65, 1, 2, 2, 4, 3),
(66, 1, 3, 2, 4, 1),
(69, 1, 3, 2, 5, 2),
(68, 1, 2, 2, 5, 1),
(67, 1, 1, 2, 5, 3),
(70, 1, 1, 2, 6, 1),
(71, 1, 2, 2, 6, 2),
(72, 1, 3, 2, 6, 3),
(73, 1, 1, 5, 1, 2),
(74, 1, 2, 5, 1, 3),
(75, 1, 3, 5, 1, 1),
(76, 1, 1, 5, 2, 3),
(77, 1, 2, 5, 2, 1),
(78, 1, 3, 5, 2, 2),
(79, 1, 1, 5, 3, 1),
(80, 1, 2, 5, 3, 2),
(81, 1, 3, 5, 3, 3),
(82, 1, 1, 5, 4, 2),
(83, 1, 2, 5, 4, 3),
(84, 1, 3, 5, 4, 1),
(85, 1, 1, 5, 5, 3),
(86, 1, 2, 5, 5, 1),
(87, 1, 3, 5, 5, 2),
(88, 1, 1, 5, 6, 1),
(89, 1, 2, 5, 6, 2),
(90, 1, 3, 5, 6, 3),
(91, 1, 1, 3, 1, 3),
(92, 1, 2, 3, 1, 1),
(93, 1, 3, 3, 1, 2),
(94, 1, 1, 3, 2, 1),
(95, 1, 2, 3, 2, 2),
(96, 1, 3, 3, 2, 3),
(97, 1, 1, 3, 3, 2),
(98, 1, 2, 3, 3, 3),
(99, 1, 3, 3, 3, 1),
(100, 1, 1, 3, 4, 3),
(101, 1, 2, 3, 4, 1),
(102, 1, 3, 3, 4, 2),
(103, 1, 1, 3, 5, 1),
(104, 1, 2, 3, 5, 2),
(105, 1, 3, 3, 5, 3),
(106, 1, 1, 3, 6, 2),
(107, 1, 2, 3, 6, 3),
(108, 1, 3, 3, 6, 1),
(109, 1, 1, 6, 1, 3),
(110, 1, 2, 6, 1, 1),
(111, 1, 3, 6, 1, 2),
(112, 1, 1, 6, 2, 1),
(113, 1, 2, 6, 2, 2),
(114, 1, 3, 6, 2, 3),
(115, 1, 1, 6, 3, 2),
(116, 1, 2, 6, 3, 3),
(117, 1, 3, 6, 3, 1),
(118, 1, 1, 6, 4, 3),
(119, 1, 2, 6, 4, 1),
(120, 1, 3, 6, 4, 2),
(121, 1, 1, 6, 5, 1),
(122, 1, 2, 6, 5, 2),
(123, 1, 3, 6, 5, 3),
(124, 1, 1, 6, 6, 2),
(125, 1, 2, 6, 6, 3),
(126, 1, 3, 6, 6, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `lgtpwr_status`
--

CREATE TABLE `lgtpwr_status` (
  `status_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп даних таблиці `lgtpwr_status`
--

INSERT INTO `lgtpwr_status` (`status_id`, `name`) VALUES
(1, 'Відключення електроенергії'),
(2, 'Електроенергія подається'),
(3, 'Можливе відключення електроенергії');

-- --------------------------------------------------------

--
-- Структура таблиці `lgtpwr_time`
--

CREATE TABLE `lgtpwr_time` (
  `time_id` int(11) NOT NULL,
  `shutdown_time` varchar(256) NOT NULL,
  `power_time` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп даних таблиці `lgtpwr_time`
--

INSERT INTO `lgtpwr_time` (`time_id`, `shutdown_time`, `power_time`) VALUES
(1, '01:00', '05:00'),
(2, '05:00', '09:00'),
(3, '09:00', '13:00'),
(4, '13:00', '17:00'),
(5, '17:00', '21:00'),
(6, '21:00', '01:00');

-- --------------------------------------------------------

--
-- Структура таблиці `lgtpwr_users`
--

CREATE TABLE `lgtpwr_users` (
  `user_id` int(11) NOT NULL,
  `user_telegram_id` bigint(22) DEFAULT NULL,
  `telegram_chat_id` bigint(20) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `first_name` varchar(300) DEFAULT NULL,
  `last_name` varchar(300) DEFAULT NULL,
  `username` varchar(300) DEFAULT NULL,
  `language_code` varchar(300) DEFAULT NULL,
  `notification` tinyint(2) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_last_activity` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп даних таблиці `lgtpwr_users`
--

INSERT INTO `lgtpwr_users` (`user_id`, `user_telegram_id`, `telegram_chat_id`, `group_id`, `region_id`, `first_name`, `last_name`, `username`, `language_code`, `notification`, `date_added`, `date_modified`, `date_last_activity`) VALUES
(1, 691027924, 691027924, 2, 1, 'Dmytro', 'Medvid', 'dart_dim', 'uk', 1, '2022-12-21 12:22:33', '2022-12-31 13:18:54', '2022-12-31 13:18:00'),
(2, 721969791, 721969791, 2, 1, 'Kostya', NULL, 'prosto_kostik', 'uk', 0, '2022-12-21 12:23:53', '2022-12-31 08:39:18', '2022-12-31 08:39:00'),
(4, 865085336, 865085336, 3, 1, 'Оленка', NULL, NULL, 'uk', 1, '2022-12-24 19:35:38', '2022-12-30 17:48:22', '2022-12-30 17:48:00'),
(5, 795416322, 795416322, 2, 1, 'Anna-Mariia', 'Voloshyn', 'voloshkaaaaaaa', 'en', 1, '2022-12-24 20:07:52', '2022-12-31 08:21:04', '2022-12-31 08:21:00'),
(6, 5224554621, 5224554621, 2, 1, 'Svitlana', 'Panko', NULL, 'uk', 1, '2022-12-25 09:43:58', '2022-12-25 07:43:58', '2022-12-26 21:44:09'),
(7, 716243617, 716243617, 1, 1, 'Ostap', NULL, NULL, 'uk', 1, '2022-12-26 09:13:08', '2022-12-28 15:15:40', '2022-12-28 15:15:00'),
(15, 1521917589, 1521917589, 2, 1, 'Mariana', NULL, NULL, 'uk', 1, '2022-12-26 20:34:28', '2022-12-30 19:36:02', '2022-12-30 19:36:00'),
(14, 5665871174, 5665871174, 2, 1, 'Дмитро', NULL, NULL, 'uk', 1, '2022-12-26 12:47:10', '2022-12-29 22:00:25', '2022-12-29 22:00:00'),
(12, 871444707, 871444707, 2, 1, 'Юрій', NULL, NULL, 'uk', 1, '2022-12-26 12:42:52', '2022-12-26 10:43:06', '2022-12-26 21:44:09'),
(16, 1132270221, 1132270221, 2, 1, 'Діана', NULL, 'xd_cat_xd', 'uk', 1, '2022-12-26 21:47:20', '2022-12-28 06:45:21', '2022-12-28 06:45:00'),
(17, 431780842, 431780842, 2, 1, 'Artemko98', 'Inferno', NULL, 'uk', 1, '2022-12-26 22:20:39', '2022-12-26 20:21:09', '2022-12-26 21:44:09'),
(18, 780182702, 780182702, 2, 1, 'Микола', NULL, 'ThisisBased', 'uk', 1, '2022-12-26 23:38:58', '2022-12-26 21:39:05', '2022-12-26 21:44:09'),
(19, 626569312, 626569312, 2, 1, 'Valik', NULL, 'Valentyn3', 'uk', 1, '2022-12-26 23:42:52', '2022-12-30 21:19:18', '2022-12-30 21:19:00'),
(20, 1349551496, 1349551496, 1, 1, 'Івеліна', 'Грицило', 'IVhrytsylo', 'uk', 1, '2022-12-26 23:45:54', '2022-12-30 11:46:16', '2022-12-30 11:46:00'),
(21, 770875552, 770875552, 1, 1, 'Ростік', NULL, 'rostyslavsokalskyi', 'uk', 1, '2022-12-27 00:17:38', '2022-12-26 22:17:48', '2022-12-26 22:17:00'),
(22, 775492090, 775492090, NULL, 1, 'Tanya', NULL, 'ttenim', 'uk', 0, '2022-12-27 00:18:14', '2022-12-26 22:18:18', '2022-12-26 22:18:00'),
(23, 647438703, 647438703, NULL, 1, 'Marinka????', NULL, 'mandariin_ka', 'uk', 0, '2022-12-27 00:18:35', '2022-12-26 22:18:36', '2022-12-26 22:18:00'),
(24, 514007624, 514007624, 2, 1, 'Ksenia', 'Malanchuk ????????', 'ks_snkvch', 'uk', 1, '2022-12-27 00:26:16', '2022-12-26 22:26:21', '2022-12-26 22:26:00'),
(25, 456469491, 456469491, 2, 1, 'molni', NULL, 'molnisss', 'en', 1, '2022-12-27 00:26:17', '2022-12-26 22:26:21', '2022-12-26 22:26:00'),
(26, 717518009, 717518009, NULL, NULL, 'Eля????????', NULL, 'ellankaster', 'uk', 0, '2022-12-27 00:26:22', '2022-12-26 22:26:22', '2022-12-26 22:26:22'),
(27, 748937227, 748937227, 2, 1, '...', NULL, 'vgf444', 'uk', 1, '2022-12-27 00:26:49', '2022-12-29 15:21:04', '2022-12-29 15:21:00'),
(28, 642685257, 642685257, 2, 1, 'Vika', 'Kryzhanivska', NULL, 'uk', 1, '2022-12-27 00:27:59', '2022-12-28 11:01:31', '2022-12-28 11:01:00'),
(29, 973157560, 973157560, 2, 1, 'Olha', 'Stetsiuk', 'stetsiukk', 'uk', 1, '2022-12-27 00:29:33', '2022-12-26 22:29:37', '2022-12-26 22:29:00'),
(30, 1184255644, 1184255644, 2, 1, 'Дима', NULL, 'dimavozniy17', 'uk', 1, '2022-12-27 00:31:52', '2022-12-26 22:31:56', '2022-12-26 22:31:00'),
(31, 572799453, 572799453, NULL, 1, 'Володимир', NULL, NULL, 'en', 0, '2022-12-27 00:34:57', '2022-12-26 22:35:00', '2022-12-26 22:35:00'),
(32, 768994684, 768994684, 2, 1, 'Stas', 'Dozhdzhanyk', 'tw1se', 'uk', 1, '2022-12-27 00:35:10', '2022-12-28 17:36:22', '2022-12-28 17:36:00'),
(33, 776421328, 776421328, 3, 1, 'hutsulyakk', NULL, NULL, 'uk', 1, '2022-12-27 00:36:30', '2022-12-26 22:36:35', '2022-12-26 22:36:00'),
(34, 372028015, 372028015, 2, 1, 'андрій', NULL, 'dre0o', 'uk', 1, '2022-12-27 00:37:08', '2022-12-27 14:11:23', '2022-12-27 14:11:00'),
(35, 853806307, 853806307, 3, 1, 'Ігор', NULL, 'Gwinbllade', 'uk', 1, '2022-12-27 00:39:04', '2022-12-26 22:39:15', '2022-12-26 22:39:00'),
(36, 793749993, 793749993, 2, 1, 'Polina', NULL, 'polypogrebnaya', 'en', 1, '2022-12-27 00:39:38', '2022-12-26 22:39:43', '2022-12-26 22:39:00'),
(37, 286236620, 286236620, 2, 1, 'Лана', NULL, 'llaaannaaaaa', 'uk', 1, '2022-12-27 00:40:44', '2022-12-26 22:41:32', '2022-12-26 22:41:00'),
(38, 1682139887, 1682139887, 2, 1, 'Ilya', NULL, NULL, 'uk', 1, '2022-12-27 00:40:45', '2022-12-27 14:01:27', '2022-12-27 14:01:00'),
(39, 980663420, 980663420, 2, 1, 'Victoria Mischuk', NULL, 'vikamischuk', 'uk', 1, '2022-12-27 00:41:21', '2022-12-28 07:00:21', '2022-12-28 07:00:00'),
(40, 473783447, 473783447, 1, 1, 'Андрій', NULL, NULL, 'uk', 1, '2022-12-27 00:42:01', '2022-12-26 22:42:09', '2022-12-26 22:42:00'),
(41, 988390074, 988390074, 2, 1, 'soglaeva', 'liza', NULL, 'uk', 1, '2022-12-27 00:42:21', '2022-12-29 06:16:15', '2022-12-29 06:16:00'),
(42, 1053082832, 1053082832, 1, 1, 'Христина', 'Турко', 'Khrystyna130', 'uk', 1, '2022-12-27 00:43:55', '2022-12-27 22:45:47', '2022-12-27 22:45:00'),
(43, 722706437, 722706437, 1, 1, 'Саша', 'Шкляров', 'shklyarovv', 'uk', 1, '2022-12-27 00:45:30', '2022-12-31 12:47:15', '2022-12-31 12:47:00'),
(44, 459975952, 459975952, 2, 1, 'Арсений', 'Дроботенко', 'malui69', 'ru', 1, '2022-12-27 00:53:13', '2022-12-30 14:33:12', '2022-12-26 22:53:00'),
(45, 1355389160, 1355389160, 2, 1, 'sashkaavi', NULL, 'sashkaavi', 'uk', 1, '2022-12-27 00:54:34', '2022-12-30 19:09:27', '2022-12-30 19:09:00'),
(46, 781856185, 781856185, NULL, 1, '安东', NULL, 'Count_Antwan', 'uk', 0, '2022-12-27 00:55:59', '2022-12-26 22:56:17', '2022-12-26 22:56:00'),
(47, 1130905261, 1130905261, 2, 1, ';)', NULL, 'kusomeiny', 'uk', 1, '2022-12-27 00:59:21', '2022-12-30 22:48:40', '2022-12-30 22:48:00'),
(48, 683038825, 683038825, 2, 1, 'Arsen', NULL, 'Arrsen4uk', 'uk', 1, '2022-12-27 00:59:32', '2022-12-27 18:01:53', '2022-12-27 18:01:00'),
(49, 1037057579, 1037057579, 2, 1, 'Tanya', NULL, 'mmm_4537', 'uk', 1, '2022-12-27 01:00:04', '2022-12-30 13:30:52', '2022-12-30 13:30:00'),
(50, 2127428479, 2127428479, 3, 1, '????????????????', NULL, 'zaeebalo', 'uk', 1, '2022-12-27 01:06:16', '2022-12-30 22:47:54', '2022-12-30 22:47:00'),
(51, 848904588, 848904588, 2, 1, 'Yarynka', 'Dzumachuk', NULL, 'uk', 1, '2022-12-27 01:51:34', '2022-12-26 23:52:01', '2022-12-26 23:52:00'),
(52, 823875686, 823875686, 2, 1, 'Нікіта', 'Журавель', 'NikitaZhuravel', 'uk', 1, '2022-12-27 02:31:28', '2022-12-28 03:40:01', '2022-12-28 03:40:00'),
(53, 852039316, 852039316, 2, 1, 'Vova', 'Kefa', 'afekvova', 'ru', 1, '2022-12-27 06:23:57', '2022-12-27 04:24:02', '2022-12-27 04:24:00'),
(54, 837409021, 837409021, 2, 1, 'Котюк', NULL, 'Bebr0nyuh', 'uk', 1, '2022-12-27 06:47:40', '2022-12-27 04:47:45', '2022-12-27 04:47:00'),
(55, 1924921100, 1924921100, 2, 1, 'Петро', NULL, NULL, 'uk', 1, '2022-12-27 06:52:19', '2022-12-27 23:11:33', '2022-12-27 23:11:00'),
(56, 1722298947, 1722298947, 2, 1, 'Paul', NULL, 'lorrem_IPSO', 'uk', 1, '2022-12-27 09:19:28', '2022-12-30 12:14:07', '2022-12-30 12:14:00'),
(57, 662321682, 662321682, 2, 1, 'anya <3', NULL, NULL, 'uk', 1, '2022-12-27 09:27:18', '2022-12-27 07:27:24', '2022-12-27 07:27:00'),
(58, 665142187, 665142187, 1, 1, 'Сухар', 'Вікторія', NULL, 'uk', 1, '2022-12-27 11:34:28', '2022-12-27 09:34:36', '2022-12-27 09:34:00'),
(59, 5271327654, 5271327654, 2, 1, 'Роман Онишко', NULL, NULL, 'uk', 1, '2022-12-27 12:07:02', '2022-12-28 09:29:39', '2022-12-28 09:29:00'),
(60, 641323522, 641323522, 2, 1, 'Viktor', 'Сокіабле ✙', 'v_3_t_o', 'uk', 1, '2022-12-27 12:32:31', '2022-12-27 10:32:40', '2022-12-27 10:32:00'),
(61, 707062655, 707062655, 2, 1, 'Nina', 'Soroka', NULL, 'uk', 1, '2022-12-27 18:59:42', '2022-12-30 23:01:19', '2022-12-30 23:01:00'),
(62, 335049672, 335049672, 2, 1, 'Lyubov', 'Schcerbyna', 'lyubov_sc', 'uk', 1, '2022-12-27 23:46:21', '2022-12-30 13:51:11', '2022-12-30 13:51:00'),
(63, 2133003082, 2133003082, NULL, 1, 'ℕ.????.ℤ.????.ℝ', NULL, NULL, 'uk', 0, '2022-12-28 00:40:54', '2022-12-27 22:41:21', '2022-12-27 22:41:00'),
(64, 1690596393, 1690596393, NULL, NULL, 'Diane', NULL, 'dianllows', 'uk', 0, '2022-12-28 14:55:15', '2022-12-28 12:55:15', '2022-12-28 12:55:15'),
(65, 671444298, 671444298, 1, 1, 'GAUSS', NULL, 'yura_gauss', 'uk', 1, '2022-12-28 17:22:00', '2022-12-28 15:24:57', '2022-12-28 15:24:00'),
(66, 5164248393, 5164248393, 3, 1, 'Надя', NULL, NULL, 'uk', 1, '2022-12-29 06:21:39', '2022-12-31 00:16:34', '2022-12-31 00:16:00'),
(67, 5546368723, 5546368723, 2, 1, 'Тиберій', NULL, NULL, 'uk', 1, '2022-12-29 08:05:08', '2022-12-29 21:52:02', '2022-12-29 21:52:00'),
(68, 5315822349, 5315822349, 1, 1, 'Славік', 'Славік', NULL, 'uk', 1, '2022-12-29 19:50:46', '2022-12-30 05:51:14', '2022-12-30 05:51:00'),
(69, 722766148, 722766148, NULL, 1, 'Kate♥', NULL, NULL, 'ru', 0, '2022-12-29 20:29:29', '2022-12-29 18:29:31', '2022-12-29 18:29:00'),
(70, 5771655423, 5771655423, 2, 1, 'bred', NULL, 'guacamolen', 'en', 1, '2022-12-29 23:57:00', '2022-12-30 07:32:37', '2022-12-30 07:32:00'),
(71, 427642317, 427642317, 1, 1, 'Ярослав', NULL, 'zig_zag_fox', 'ru', 1, '2022-12-30 11:43:42', '2022-12-31 11:44:28', '2022-12-31 11:44:00'),
(72, 1761286531, 1761286531, 1, 1, 'Fake', NULL, 'Fake_0312', 'ru', 1, '2022-12-30 12:21:03', '2022-12-30 10:21:10', '2022-12-30 10:21:00'),
(73, 716243425, 716243425, 2, 1, 'Маріна', 'Вовк', NULL, 'uk', 1, '2022-12-30 16:55:50', '2022-12-31 13:07:17', '2022-12-31 13:07:00'),
(74, 572249228, 572249228, 1, 1, 'Настя', NULL, NULL, 'uk', 1, '2022-12-31 00:45:48', '2022-12-30 22:46:05', '2022-12-30 22:46:00'),
(75, 1840233039, 1840233039, 1, 1, 'Nataлю', NULL, NULL, 'ru', 1, '2022-12-31 13:45:36', '2022-12-31 11:45:54', '2022-12-31 11:45:00'),
(76, 1342825103, 1342825103, NULL, 1, '????AnastEisha????', NULL, NULL, 'uk', 0, '2022-12-31 14:03:34', '2022-12-31 12:03:42', '2022-12-31 12:03:00');

-- --------------------------------------------------------

--
-- Структура таблиці `lgtpwr_weekdays`
--

CREATE TABLE `lgtpwr_weekdays` (
  `weekday_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `short_name` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп даних таблиці `lgtpwr_weekdays`
--

INSERT INTO `lgtpwr_weekdays` (`weekday_id`, `name`, `short_name`) VALUES
(1, 'Понеділок', 'ПН'),
(2, 'Вівторок', 'ВТ'),
(3, 'Середа', 'СР'),
(4, 'Четвер', 'ЧТ'),
(5, "П'ятниця", 'ПТ'),
(6, 'Субота', 'СБ'),
(7, 'Неділя', 'НД');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `lgtpwr_cluster`
--
ALTER TABLE `lgtpwr_cluster`
  ADD PRIMARY KEY (`group_id`);

--
-- Індекси таблиці `lgtpwr_regions`
--
ALTER TABLE `lgtpwr_regions`
  ADD PRIMARY KEY (`region_id`);

--
-- Індекси таблиці `lgtpwr_shutdown_schedule`
--
ALTER TABLE `lgtpwr_shutdown_schedule`
  ADD PRIMARY KEY (`shutdown_schedule_id`);

--
-- Індекси таблиці `lgtpwr_status`
--
ALTER TABLE `lgtpwr_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Індекси таблиці `lgtpwr_time`
--
ALTER TABLE `lgtpwr_time`
  ADD PRIMARY KEY (`time_id`);

--
-- Індекси таблиці `lgtpwr_users`
--
ALTER TABLE `lgtpwr_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Індекси таблиці `lgtpwr_weekdays`
--
ALTER TABLE `lgtpwr_weekdays`
  ADD PRIMARY KEY (`weekday_id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `lgtpwr_cluster`
--
ALTER TABLE `lgtpwr_cluster`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `lgtpwr_regions`
--
ALTER TABLE `lgtpwr_regions`
  MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `lgtpwr_shutdown_schedule`
--
ALTER TABLE `lgtpwr_shutdown_schedule`
  MODIFY `shutdown_schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT для таблиці `lgtpwr_status`
--
ALTER TABLE `lgtpwr_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `lgtpwr_time`
--
ALTER TABLE `lgtpwr_time`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблиці `lgtpwr_users`
--
ALTER TABLE `lgtpwr_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT для таблиці `lgtpwr_weekdays`
--
ALTER TABLE `lgtpwr_weekdays`
  MODIFY `weekday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;