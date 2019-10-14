-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 04, 2019 at 07:25 PM
-- Server version: 5.6.40-84.0-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fleekico_onearena`
--

-- --------------------------------------------------------

--
-- Table structure for table `arcades`
--

CREATE TABLE `arcades` (
  `arcade_id` int(128) UNSIGNED NOT NULL,
  `arcade_admin_user` int(24) UNSIGNED NOT NULL,
  `arcade_category` int(24) UNSIGNED NOT NULL,
  `arcade_name` varchar(100) DEFAULT NULL,
  `arcade_description` varchar(2000) NOT NULL,
  `arcade_email` varchar(100) NOT NULL,
  `arcade_website` varchar(100) NOT NULL,
  `arcade_youtube_video` varchar(100) NOT NULL,
  `arcade_youtube_channel` varchar(100) NOT NULL,
  `arcade_discord` varchar(50) NOT NULL,
  `arcade_instagram` varchar(50) NOT NULL,
  `arcade_telegram` varchar(50) NOT NULL,
  `arcade_twitter` varchar(50) NOT NULL,
  `arcade_snapchat` varchar(50) NOT NULL,
  `arcade_twitch` varchar(50) NOT NULL,
  `arcade_address_1` varchar(100) NOT NULL,
  `arcade_address_2` varchar(100) NOT NULL,
  `arcade_city` varchar(100) NOT NULL,
  `arcade_state` varchar(50) NOT NULL,
  `arcade_zip` varchar(50) NOT NULL,
  `arcade_country` varchar(50) NOT NULL,
  `arcade_latitude` varchar(50) NOT NULL,
  `arcade_longitude` varchar(50) NOT NULL,
  `arcade_directions` varchar(255) NOT NULL,
  `arcade_phone` varchar(20) NOT NULL,
  `arcade_notes` varchar(255) NOT NULL,
  `arcade_logo` varchar(100) NOT NULL,
  `arcade_banner` varchar(100) NOT NULL,
  `arcade_pic_1` varchar(100) NOT NULL,
  `arcade_pic_2` varchar(100) NOT NULL,
  `arcade_pic_3` varchar(100) NOT NULL,
  `arcade_pic_4` varchar(100) NOT NULL,
  `arcade_icon` varchar(100) NOT NULL,
  `arcade_hours` varchar(255) NOT NULL,
  `arcade_join_date` datetime NOT NULL,
  `arcade_last_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `arcade_equipment`
--

CREATE TABLE `arcade_equipment` (
  `arcade_equipment_id` int(24) UNSIGNED NOT NULL,
  `arcade_id` int(24) UNSIGNED NOT NULL,
  `equipment_id` int(24) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `arcade_games`
--

CREATE TABLE `arcade_games` (
  `arcade_games` int(24) UNSIGNED NOT NULL,
  `arcade_id` int(24) UNSIGNED NOT NULL,
  `game_id` int(24) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `arcade_services`
--

CREATE TABLE `arcade_services` (
  `arcade_services_id` int(24) UNSIGNED NOT NULL,
  `arcade_id` int(24) UNSIGNED NOT NULL,
  `service_id` int(24) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores each service for a arcade. ';

-- --------------------------------------------------------

--
-- Table structure for table `arcade_tourn`
--

CREATE TABLE `arcade_tourn` (
  `arcade_tourn_id` int(24) UNSIGNED NOT NULL,
  `arcade_id` int(24) UNSIGNED NOT NULL,
  `tournament_id` int(24) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(100) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `changelog`
--

CREATE TABLE `changelog` (
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `tab` varchar(255) DEFAULT NULL,
  `rowkey` varchar(255) DEFAULT NULL,
  `col` varchar(255) DEFAULT NULL,
  `oldval` blob,
  `newval` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(24) UNSIGNED NOT NULL,
  `country_name` varchar(100) NOT NULL,
  `country_notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(24) UNSIGNED NOT NULL,
  `currency_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

CREATE TABLE `developer` (
  `developer_id` int(24) UNSIGNED NOT NULL,
  `developer_name` int(24) UNSIGNED NOT NULL,
  `developer_logo` varchar(100) NOT NULL,
  `developer_website` varchar(100) NOT NULL,
  `developer_is_sponsor` varchar(4) NOT NULL,
  `developer_notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `equipment_id` int(24) UNSIGNED NOT NULL,
  `equipment_name` varchar(100) NOT NULL,
  `equipment_manufacturer` int(24) UNSIGNED NOT NULL,
  `equipment_version` varchar(100) NOT NULL,
  `equipment_description` varchar(255) NOT NULL,
  `equipment_available` varchar(2) NOT NULL,
  `equipment_link` varchar(100) NOT NULL,
  `equipment_video` varchar(100) NOT NULL,
  `equipment_pic_1` varchar(100) NOT NULL,
  `equipment_pic_2` varchar(100) NOT NULL,
  `equipment_icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `game_id` int(24) UNSIGNED NOT NULL,
  `game_developer` int(24) UNSIGNED NOT NULL,
  `game_tournament` int(24) UNSIGNED NOT NULL,
  `game_name` varchar(100) NOT NULL,
  `game_description` varchar(255) NOT NULL,
  `game_availability` varchar(100) NOT NULL,
  `game_rules` varchar(255) NOT NULL,
  `game_links` varchar(100) NOT NULL,
  `game_pic` varchar(100) NOT NULL,
  `game_video` varchar(100) NOT NULL,
  `game_icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `login_id` int(24) UNSIGNED NOT NULL,
  `login_user_id` int(24) UNSIGNED NOT NULL,
  `login_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `login_success` varchar(100) NOT NULL,
  `login_ip` varchar(100) NOT NULL,
  `login_inorrect_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login_info`
--

CREATE TABLE `login_info` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `employee_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `login` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_type` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'User'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `manufacturer_id` int(24) UNSIGNED NOT NULL,
  `manufacturer_name` varchar(100) NOT NULL,
  `manufacturer_logo` varchar(100) NOT NULL,
  `manufacturer_website` varchar(100) NOT NULL,
  `manufacturer_is_sponsor` varchar(4) NOT NULL,
  `manufactuer_notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `region_id` int(24) UNSIGNED NOT NULL,
  `region_name` varchar(100) NOT NULL,
  `region_notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(24) UNSIGNED NOT NULL,
  `review_user` int(24) UNSIGNED NOT NULL,
  `review_name` varchar(100) NOT NULL,
  `review_email` varchar(100) NOT NULL,
  `review_title` varchar(100) NOT NULL,
  `review_image` varchar(100) NOT NULL,
  `review_link` varchar(100) NOT NULL,
  `review_star_rating` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(10) UNSIGNED NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `service_cost` text NOT NULL,
  `service_currency` int(24) UNSIGNED NOT NULL,
  `service_description` varchar(100) NOT NULL,
  `service_link` varchar(100) NOT NULL,
  `service_pic` varchar(100) NOT NULL,
  `service_icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tournaments`
--

CREATE TABLE `tournaments` (
  `tournament_id` int(24) UNSIGNED NOT NULL,
  `tournament_name` int(24) UNSIGNED NOT NULL,
  `tournament_game` int(24) UNSIGNED NOT NULL,
  `tournament_sponsor_user_id` int(24) UNSIGNED NOT NULL,
  `tournament_sponsor_name` varchar(100) NOT NULL,
  `tournament_pre_start_date` date NOT NULL,
  `tournamentournament_pre_end_datet_id` date NOT NULL,
  `tournament_start_date` date NOT NULL,
  `tournament_end_date` date NOT NULL,
  `tournament_description` varchar(255) NOT NULL,
  `tournament_rules` varchar(255) NOT NULL,
  `tournament_rewards` varchar(100) NOT NULL,
  `tournament_email` varchar(100) NOT NULL,
  `tournament_icon` varchar(100) NOT NULL,
  `tournament_banner` varchar(100) NOT NULL,
  `tournament_pic_1` varchar(100) NOT NULL,
  `tournament_pic_2` varchar(100) NOT NULL,
  `tournament_video` varchar(100) NOT NULL,
  `tournament_twitter` varchar(100) NOT NULL,
  `tournament_discord` varchar(100) NOT NULL,
  `tournament_twitch` varchar(100) NOT NULL,
  `tournament_youtube` varchar(100) NOT NULL,
  `tournament_notes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(50) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `Firstname` varchar(50) DEFAULT NULL,
  `Lastname` varchar(50) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(100) NOT NULL,
  `Discord` varchar(50) NOT NULL,
  `Instagram` varchar(50) NOT NULL,
  `Telegram` varchar(50) NOT NULL,
  `Twitter` varchar(50) NOT NULL,
  `Snapchat` varchar(50) NOT NULL,
  `Twitch` varchar(50) NOT NULL,
  `Youtube` varchar(50) NOT NULL,
  `Address_1` varchar(70) NOT NULL,
  `Address_2` varchar(70) NOT NULL,
  `City` varchar(70) NOT NULL,
  `State` varchar(70) NOT NULL,
  `Zip` varchar(10) NOT NULL,
  `Country` int(24) UNSIGNED NOT NULL,
  `Phone` varchar(24) NOT NULL,
  `Last_Login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arcades`
--
ALTER TABLE `arcades`
  ADD PRIMARY KEY (`arcade_id`),
  ADD KEY `arcade_name` (`arcade_name`);

--
-- Indexes for table `arcade_equipment`
--
ALTER TABLE `arcade_equipment`
  ADD PRIMARY KEY (`arcade_equipment_id`);

--
-- Indexes for table `arcade_games`
--
ALTER TABLE `arcade_games`
  ADD PRIMARY KEY (`arcade_games`);

--
-- Indexes for table `arcade_services`
--
ALTER TABLE `arcade_services`
  ADD PRIMARY KEY (`arcade_services_id`);

--
-- Indexes for table `arcade_tourn`
--
ALTER TABLE `arcade_tourn`
  ADD PRIMARY KEY (`arcade_tourn_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_name` (`currency_name`);

--
-- Indexes for table `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`developer_id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`equipment_id`),
  ADD UNIQUE KEY `equipment_name` (`equipment_name`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`game_id`),
  ADD UNIQUE KEY `game_name` (`game_name`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `login_info`
--
ALTER TABLE `login_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`region_id`),
  ADD UNIQUE KEY `region_name` (`region_name`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `tournaments`
--
ALTER TABLE `tournaments`
  ADD PRIMARY KEY (`tournament_id`),
  ADD UNIQUE KEY `tournament_name` (`tournament_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arcades`
--
ALTER TABLE `arcades`
  MODIFY `arcade_id` int(128) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `arcade_equipment`
--
ALTER TABLE `arcade_equipment`
  MODIFY `arcade_equipment_id` int(24) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `arcade_games`
--
ALTER TABLE `arcade_games`
  MODIFY `arcade_games` int(24) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `arcade_services`
--
ALTER TABLE `arcade_services`
  MODIFY `arcade_services_id` int(24) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `arcade_tourn`
--
ALTER TABLE `arcade_tourn`
  MODIFY `arcade_tourn_id` int(24) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(24) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(24) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `developer`
--
ALTER TABLE `developer`
  MODIFY `developer_id` int(24) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `equipment_id` int(24) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `game_id` int(24) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `login_id` int(24) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login_info`
--
ALTER TABLE `login_info`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `manufacturer_id` int(24) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `region_id` int(24) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(24) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tournaments`
--
ALTER TABLE `tournaments`
  MODIFY `tournament_id` int(24) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
