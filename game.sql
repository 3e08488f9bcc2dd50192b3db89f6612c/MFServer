-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2023 at 09:11 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `game`
--

-- --------------------------------------------------------

--
-- Table structure for table `cafe_post`
--

CREATE TABLE `cafe_post` (
  `thread_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cafe_thread`
--

CREATE TABLE `cafe_thread` (
  `player_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `post_count` int(11) NOT NULL,
  `last_player` text NOT NULL,
  `time` int(11) NOT NULL,
  `language` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cafe_vote`
--

CREATE TABLE `cafe_vote` (
  `voted_pid` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `puan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum.xf_kl_ui_username_changes`
--

CREATE TABLE `forum.xf_kl_ui_username_changes` (
  `old_username` text NOT NULL,
  `change_date` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum.xf_user`
--

CREATE TABLE `forum.xf_user` (
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hole`
--

CREATE TABLE `hole` (
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log.chat`
--

CREATE TABLE `log.chat` (
  `name` text NOT NULL,
  `room` text NOT NULL,
  `message` text NOT NULL,
  `time_stamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log.ip`
--

CREATE TABLE `log.ip` (
  `ip` text NOT NULL,
  `isp` text NOT NULL,
  `dil` text NOT NULL,
  `city` text NOT NULL,
  `country` text NOT NULL,
  `tz` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log.login`
--

CREATE TABLE `log.login` (
  `name` text NOT NULL,
  `ip` text NOT NULL,
  `time_stamp` int(11) NOT NULL,
  `dil` text NOT NULL,
  `city` text NOT NULL,
  `country` text NOT NULL,
  `tz` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log.mayor`
--

CREATE TABLE `log.mayor` (
  `playerCode` int(11) NOT NULL,
  `name` text NOT NULL,
  `look` text NOT NULL,
  `message` text NOT NULL,
  `vote_count` int(11) NOT NULL,
  `dil` text NOT NULL,
  `time_stamp` int(11) NOT NULL,
  `message2` text NOT NULL,
  `renk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log.mayor_vote`
--

CREATE TABLE `log.mayor_vote` (
  `playerCode` int(11) NOT NULL,
  `votedPlayer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log.mod_chat`
--

CREATE TABLE `log.mod_chat` (
  `name` text NOT NULL,
  `message` text NOT NULL,
  `type` int(11) NOT NULL,
  `time_stamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log.mute`
--

CREATE TABLE `log.mute` (
  `ad` text NOT NULL,
  `yetkili` text NOT NULL,
  `sebep` text NOT NULL,
  `oda` int(11) NOT NULL,
  `surev` int(11) NOT NULL,
  `durum` text NOT NULL,
  `ip` text NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log.pm`
--

CREATE TABLE `log.pm` (
  `name` text NOT NULL,
  `message` text NOT NULL,
  `sent_to` text NOT NULL,
  `time_stamp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE `maps` (
  `id` int(11) NOT NULL,
  `perm` int(11) NOT NULL,
  `xml` text NOT NULL,
  `yes` int(11) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `minigames`
--

CREATE TABLE `minigames` (
  `minioyun` text NOT NULL,
  `isim` text NOT NULL,
  `veri` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tribe_history`
--

CREATE TABLE `tribe_history` (
  `tribe_code` int(11) NOT NULL,
  `js` text NOT NULL,
  `time_stamp` int(11) NOT NULL,
  `typ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
