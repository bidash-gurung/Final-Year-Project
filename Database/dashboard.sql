-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2025 at 05:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `agricultural_marketing_centres_number`
--

CREATE TABLE `agricultural_marketing_centres_number` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agricultural_marketing_centres_number`
--

INSERT INTO `agricultural_marketing_centres_number` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'agricultural_marketing_centres_number_national_post_harvest_centre', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'agricultural_marketing_centres_number'),
(2, 'agricultural_marketing_centres_number_regional_post_harvest_centre', 2020, NULL, NULL, '4', '4', '2025-05-21 15:40:07', 'agricultural_marketing_centres_number'),
(3, 'agricultural_marketing_centres_number_regional_agricultural_marketing_and_cooperative_office', 2020, NULL, NULL, '3', '3', '2025-05-21 15:40:07', 'agricultural_marketing_centres_number'),
(4, 'agricultural_marketing_centres_number_national_post_harvest_centre', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(5, 'agricultural_marketing_centres_number_regional_post_harvest_centre', 2024, NULL, NULL, '4', '4', '2025-05-21 19:31:45', NULL),
(6, 'agricultural_marketing_centres_number_regional_agricultural_marketing_and_cooperative_office', 2024, NULL, NULL, '3', '3', '2025-05-21 19:31:45', NULL),
(7, 'agricultural_marketing_centres_number_national_post_harvest_centre', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(8, 'agricultural_marketing_centres_number_regional_post_harvest_centre', 2021, NULL, NULL, '4', '4', '2025-05-21 19:35:16', NULL),
(9, 'agricultural_marketing_centres_number_regional_agricultural_marketing_and_cooperative_office', 2021, NULL, NULL, '3', '3', '2025-05-21 19:35:16', NULL),
(10, 'agricultural_marketing_centres_number_national_post_harvest_centre', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(11, 'agricultural_marketing_centres_number_regional_post_harvest_centre', 2023, NULL, NULL, '4', '4', '2025-05-21 20:09:35', NULL),
(12, 'agricultural_marketing_centres_number_regional_agricultural_marketing_and_cooperative_office', 2023, NULL, NULL, '3', '3', '2025-05-21 20:09:35', NULL),
(13, 'agricultural_marketing_centres_number_national_post_harvest_centre', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(14, 'agricultural_marketing_centres_number_regional_post_harvest_centre', 2017, NULL, NULL, '4', '4', '2025-05-22 04:21:56', NULL),
(15, 'agricultural_marketing_centres_number_regional_agricultural_marketing_and_cooperative_office', 2017, NULL, NULL, '3', '3', '2025-05-22 04:21:56', NULL),
(16, 'agricultural_marketing_centres_number_national_post_harvest_centre', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(17, 'agricultural_marketing_centres_number_regional_post_harvest_centre', 2025, NULL, NULL, '4', '4', '2025-05-26 23:53:06', NULL),
(18, 'agricultural_marketing_centres_number_regional_agricultural_marketing_and_cooperative_office', 2025, NULL, NULL, '3', '3', '2025-05-26 23:53:06', NULL),
(19, 'agricultural_marketing_centres_number_national_post_harvest_centre', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(20, 'agricultural_marketing_centres_number_regional_post_harvest_centre', 2016, NULL, NULL, '4', '4', '2025-05-27 14:36:39', NULL),
(21, 'agricultural_marketing_centres_number_regional_agricultural_marketing_and_cooperative_office', 2016, NULL, NULL, '3', '3', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `agriculture_number`
--

CREATE TABLE `agriculture_number` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agriculture_number`
--

INSERT INTO `agriculture_number` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'agriculture_extension_centre', 2020, NULL, NULL, '201', '201', '2025-05-21 15:40:07', 'agriculture_number'),
(2, 'agriculture_seed_centre', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'agriculture_number'),
(3, 'agriculture_seed_centre_regional_seed_centre', 2020, NULL, NULL, '3', '3', '2025-05-21 15:40:07', 'agriculture_number'),
(4, 'agriculture_seed_farm', 2020, NULL, NULL, '4', '4', '2025-05-21 15:40:07', 'agriculture_number'),
(5, 'national_plant_protection_centre', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'agriculture_number'),
(6, 'agricultre_machinery_and_technology_centre', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'agriculture_number'),
(7, 'national_mushroom_centre', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'agriculture_number'),
(8, 'agriculture_research_and_development_centre', 2020, NULL, NULL, '3', '3', '2025-05-21 15:40:07', 'agriculture_number'),
(9, 'agriculture_research_and_development_subcentre', 2020, NULL, NULL, '4', '4', '2025-05-21 15:40:07', 'agriculture_number'),
(10, 'soil_and_plant_analytical_laboratory', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'agriculture_number'),
(11, 'national_centre_for_organic_agriculture', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'agriculture_number'),
(12, 'farm_machinary_cooperation_limited_soe', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'agriculture_number'),
(13, 'agriculture_extension_centre', 2024, NULL, NULL, '201', '201', '2025-05-21 19:31:45', NULL),
(14, 'agriculture_seed_centre', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(15, 'agriculture_seed_centre_regional_seed_centre', 2024, NULL, NULL, '3', '3', '2025-05-21 19:31:45', NULL),
(16, 'agriculture_seed_farm', 2024, NULL, NULL, '4', '4', '2025-05-21 19:31:45', NULL),
(17, 'national_plant_protection_centre', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(18, 'agricultre_machinery_and_technology_centre', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(19, 'national_mushroom_centre', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(20, 'agriculture_research_and_development_centre', 2024, NULL, NULL, '3', '3', '2025-05-21 19:31:45', NULL),
(21, 'agriculture_research_and_development_subcentre', 2024, NULL, NULL, '4', '4', '2025-05-21 19:31:45', NULL),
(22, 'soil_and_plant_analytical_laboratory', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(23, 'national_centre_for_organic_agriculture', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(24, 'farm_machinary_cooperation_limited_soe', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(25, 'agriculture_extension_centre', 2021, NULL, NULL, '201', '201', '2025-05-21 19:35:16', NULL),
(26, 'agriculture_seed_centre', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(27, 'agriculture_seed_centre_regional_seed_centre', 2021, NULL, NULL, '3', '3', '2025-05-21 19:35:16', NULL),
(28, 'agriculture_seed_farm', 2021, NULL, NULL, '4', '4', '2025-05-21 19:35:16', NULL),
(29, 'national_plant_protection_centre', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(30, 'agricultre_machinery_and_technology_centre', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(31, 'national_mushroom_centre', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(32, 'agriculture_research_and_development_centre', 2021, NULL, NULL, '3', '3', '2025-05-21 19:35:16', NULL),
(33, 'agriculture_research_and_development_subcentre', 2021, NULL, NULL, '4', '4', '2025-05-21 19:35:16', NULL),
(34, 'soil_and_plant_analytical_laboratory', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(35, 'national_centre_for_organic_agriculture', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(36, 'farm_machinary_cooperation_limited_soe', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(37, 'agriculture_extension_centre', 2023, NULL, NULL, '201', '201', '2025-05-21 20:09:35', NULL),
(38, 'agriculture_seed_centre', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(39, 'agriculture_seed_centre_regional_seed_centre', 2023, NULL, NULL, '3', '3', '2025-05-21 20:09:35', NULL),
(40, 'agriculture_seed_farm', 2023, NULL, NULL, '4', '4', '2025-05-21 20:09:35', NULL),
(41, 'national_plant_protection_centre', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(42, 'agricultre_machinery_and_technology_centre', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(43, 'national_mushroom_centre', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(44, 'agriculture_research_and_development_centre', 2023, NULL, NULL, '3', '3', '2025-05-21 20:09:35', NULL),
(45, 'agriculture_research_and_development_subcentre', 2023, NULL, NULL, '4', '4', '2025-05-21 20:09:35', NULL),
(46, 'soil_and_plant_analytical_laboratory', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(47, 'national_centre_for_organic_agriculture', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(48, 'farm_machinary_cooperation_limited_soe', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(49, 'agriculture_extension_centre', 2017, NULL, NULL, '201', '201', '2025-05-22 04:21:56', NULL),
(50, 'agriculture_seed_centre', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(51, 'agriculture_seed_centre_regional_seed_centre', 2017, NULL, NULL, '3', '3', '2025-05-22 04:21:56', NULL),
(52, 'agriculture_seed_farm', 2017, NULL, NULL, '4', '4', '2025-05-22 04:21:56', NULL),
(53, 'national_plant_protection_centre', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(54, 'agricultre_machinery_and_technology_centre', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(55, 'national_mushroom_centre', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(56, 'agriculture_research_and_development_centre', 2017, NULL, NULL, '3', '3', '2025-05-22 04:21:56', NULL),
(57, 'agriculture_research_and_development_subcentre', 2017, NULL, NULL, '4', '4', '2025-05-22 04:21:56', NULL),
(58, 'soil_and_plant_analytical_laboratory', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(59, 'national_centre_for_organic_agriculture', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(60, 'farm_machinary_cooperation_limited_soe', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(61, 'agriculture_extension_centre', 2025, NULL, NULL, '201', '201', '2025-05-26 23:53:06', NULL),
(62, 'agriculture_seed_centre', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(63, 'agriculture_seed_centre_regional_seed_centre', 2025, NULL, NULL, '3', '3', '2025-05-26 23:53:06', NULL),
(64, 'agriculture_seed_farm', 2025, NULL, NULL, '4', '4', '2025-05-26 23:53:06', NULL),
(65, 'national_plant_protection_centre', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(66, 'agricultre_machinery_and_technology_centre', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(67, 'national_mushroom_centre', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(68, 'agriculture_research_and_development_centre', 2025, NULL, NULL, '3', '3', '2025-05-26 23:53:06', NULL),
(69, 'agriculture_research_and_development_subcentre', 2025, NULL, NULL, '4', '4', '2025-05-26 23:53:06', NULL),
(70, 'soil_and_plant_analytical_laboratory', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(71, 'national_centre_for_organic_agriculture', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(72, 'farm_machinary_cooperation_limited_soe', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(73, 'agriculture_extension_centre', 2016, NULL, NULL, '201', '201', '2025-05-27 14:36:39', NULL),
(74, 'agriculture_seed_centre', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(75, 'agriculture_seed_centre_regional_seed_centre', 2016, NULL, NULL, '3', '3', '2025-05-27 14:36:39', NULL),
(76, 'agriculture_seed_farm', 2016, NULL, NULL, '4', '4', '2025-05-27 14:36:39', NULL),
(77, 'national_plant_protection_centre', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(78, 'agricultre_machinery_and_technology_centre', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(79, 'national_mushroom_centre', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(80, 'agriculture_research_and_development_centre', 2016, NULL, NULL, '3', '3', '2025-05-27 14:36:39', NULL),
(81, 'agriculture_research_and_development_subcentre', 2016, NULL, NULL, '4', '4', '2025-05-27 14:36:39', NULL),
(82, 'soil_and_plant_analytical_laboratory', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(83, 'national_centre_for_organic_agriculture', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(84, 'farm_machinary_cooperation_limited_soe', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `diplomatic_relations_number`
--

CREATE TABLE `diplomatic_relations_number` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diplomatic_relations_number`
--

INSERT INTO `diplomatic_relations_number` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'total_number_of_countries_with_which_bhutan_has_diplomatic_relations4', 2020, NULL, NULL, '60', '65', '2025-05-21 15:40:07', 'diplomatic_relations_number'),
(2, 'total_number_of_countries_with_which_bhutan_has_diplomatic_relations4', 2024, NULL, NULL, '60', '65', '2025-05-21 19:31:45', NULL),
(3, 'total_number_of_countries_with_which_bhutan_has_diplomatic_relations4', 2021, NULL, NULL, '60', '65', '2025-05-21 19:35:16', NULL),
(4, 'total_number_of_countries_with_which_bhutan_has_diplomatic_relations4', 2023, NULL, NULL, '60', '65', '2025-05-21 20:09:35', NULL),
(5, 'total_number_of_countries_with_which_bhutan_has_diplomatic_relations4', 2017, NULL, NULL, '60', '65', '2025-05-22 04:21:56', NULL),
(6, 'total_number_of_countries_with_which_bhutan_has_diplomatic_relations4', 2025, NULL, NULL, '60', '65', '2025-05-26 23:53:06', NULL),
(7, 'total_number_of_countries_with_which_bhutan_has_diplomatic_relations4', 2016, NULL, NULL, '60', '65', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'number_of_students', 2020, NULL, NULL, '155262', '155262', '2025-05-21 15:40:07', 'education_'),
(2, 'number_of_teachers', 2020, NULL, NULL, '10096', '10096', '2025-05-21 15:40:07', 'education_'),
(3, 'net_enrollment_rate_in_eccd', 2020, NULL, NULL, '38.14', '38.14', '2025-05-21 15:40:07', 'education_'),
(4, 'net_enrollment_rate_in_primary_ppvi', 2020, NULL, NULL, '88.83', '88.83', '2025-05-21 15:40:07', 'education_'),
(5, 'net_enrollment_rate_in_basic_ppx', 2020, NULL, NULL, '90.83', '90.83', '2025-05-21 15:40:07', 'education_'),
(6, 'net_enrollment_rate_in_secondary_viixii', 2020, NULL, NULL, '62.61', '62.61', '2025-05-21 15:40:07', 'education_'),
(7, 'national_literacy_rate_6_years_and_above', 2020, NULL, NULL, '70.6', '70.6', '2025-05-21 15:40:07', 'education_'),
(8, 'number_of_students', 2024, NULL, NULL, '155262', '155262', '2025-05-21 19:31:45', NULL),
(9, 'number_of_teachers', 2024, NULL, NULL, '10096', '10096', '2025-05-21 19:31:45', NULL),
(10, 'net_enrollment_rate_in_eccd', 2024, NULL, NULL, '38.14', '38.14', '2025-05-21 19:31:45', NULL),
(11, 'net_enrollment_rate_in_primary_ppvi', 2024, NULL, NULL, '88.83', '88.83', '2025-05-21 19:31:45', NULL),
(12, 'net_enrollment_rate_in_basic_ppx', 2024, NULL, NULL, '90.83', '90.83', '2025-05-21 19:31:45', NULL),
(13, 'net_enrollment_rate_in_secondary_viixii', 2024, NULL, NULL, '62.61', '62.61', '2025-05-21 19:31:45', NULL),
(14, 'national_literacy_rate_6_years_and_above', 2024, NULL, NULL, '70.6', '70.6', '2025-05-21 19:31:45', NULL),
(15, 'number_of_students', 2021, NULL, NULL, '155262', '155262', '2025-05-21 19:35:16', NULL),
(16, 'number_of_teachers', 2021, NULL, NULL, '10096', '10096', '2025-05-21 19:35:16', NULL),
(17, 'net_enrollment_rate_in_eccd', 2021, NULL, NULL, '38.14', '38.14', '2025-05-21 19:35:16', NULL),
(18, 'net_enrollment_rate_in_primary_ppvi', 2021, NULL, NULL, '88.83', '88.83', '2025-05-21 19:35:16', NULL),
(19, 'net_enrollment_rate_in_basic_ppx', 2021, NULL, NULL, '90.83', '90.83', '2025-05-21 19:35:16', NULL),
(20, 'net_enrollment_rate_in_secondary_viixii', 2021, NULL, NULL, '62.61', '62.61', '2025-05-21 19:35:16', NULL),
(21, 'national_literacy_rate_6_years_and_above', 2021, NULL, NULL, '70.6', '70.6', '2025-05-21 19:35:16', NULL),
(22, 'number_of_students', 2023, NULL, NULL, '155262', '155262', '2025-05-21 20:09:35', NULL),
(23, 'number_of_teachers', 2023, NULL, NULL, '10096', '10096', '2025-05-21 20:09:35', NULL),
(24, 'net_enrollment_rate_in_eccd', 2023, NULL, NULL, '38.14', '38.14', '2025-05-21 20:09:35', NULL),
(25, 'net_enrollment_rate_in_primary_ppvi', 2023, NULL, NULL, '88.83', '88.83', '2025-05-21 20:09:35', NULL),
(26, 'net_enrollment_rate_in_basic_ppx', 2023, NULL, NULL, '90.83', '90.83', '2025-05-21 20:09:35', NULL),
(27, 'net_enrollment_rate_in_secondary_viixii', 2023, NULL, NULL, '62.61', '62.61', '2025-05-21 20:09:35', NULL),
(28, 'national_literacy_rate_6_years_and_above', 2023, NULL, NULL, '70.6', '70.6', '2025-05-21 20:09:35', NULL),
(29, 'number_of_students', 2017, NULL, NULL, '155262', '155262', '2025-05-22 04:21:56', NULL),
(30, 'number_of_teachers', 2017, NULL, NULL, '10096', '10096', '2025-05-22 04:21:56', NULL),
(31, 'net_enrollment_rate_in_eccd', 2017, NULL, NULL, '38.14', '38.14', '2025-05-22 04:21:56', NULL),
(32, 'net_enrollment_rate_in_primary_ppvi', 2017, NULL, NULL, '88.83', '88.83', '2025-05-22 04:21:56', NULL),
(33, 'net_enrollment_rate_in_basic_ppx', 2017, NULL, NULL, '90.83', '90.83', '2025-05-22 04:21:56', NULL),
(34, 'net_enrollment_rate_in_secondary_viixii', 2017, NULL, NULL, '62.61', '62.61', '2025-05-22 04:21:56', NULL),
(35, 'national_literacy_rate_6_years_and_above', 2017, NULL, NULL, '70.6', '70.6', '2025-05-22 04:21:56', NULL),
(36, 'number_of_students', 2025, NULL, NULL, '155262', '155262', '2025-05-26 23:53:06', NULL),
(37, 'number_of_teachers', 2025, NULL, NULL, '10096', '10096', '2025-05-26 23:53:06', NULL),
(38, 'net_enrollment_rate_in_eccd', 2025, NULL, NULL, '38.14', '38.14', '2025-05-26 23:53:06', NULL),
(39, 'net_enrollment_rate_in_primary_ppvi', 2025, NULL, NULL, '88.83', '88.83', '2025-05-26 23:53:06', NULL),
(40, 'net_enrollment_rate_in_basic_ppx', 2025, NULL, NULL, '90.83', '90.83', '2025-05-26 23:53:06', NULL),
(41, 'net_enrollment_rate_in_secondary_viixii', 2025, NULL, NULL, '62.61', '62.61', '2025-05-26 23:53:06', NULL),
(42, 'national_literacy_rate_6_years_and_above', 2025, NULL, NULL, '70.6', '70.6', '2025-05-26 23:53:06', NULL),
(43, 'number_of_students', 2016, NULL, NULL, '155262', '155262', '2025-05-27 14:36:39', NULL),
(44, 'number_of_teachers', 2016, NULL, NULL, '10096', '10096', '2025-05-27 14:36:39', NULL),
(45, 'net_enrollment_rate_in_eccd', 2016, NULL, NULL, '38.14', '38.14', '2025-05-27 14:36:39', NULL),
(46, 'net_enrollment_rate_in_primary_ppvi', 2016, NULL, NULL, '88.83', '88.83', '2025-05-27 14:36:39', NULL),
(47, 'net_enrollment_rate_in_basic_ppx', 2016, NULL, NULL, '90.83', '90.83', '2025-05-27 14:36:39', NULL),
(48, 'net_enrollment_rate_in_secondary_viixii', 2016, NULL, NULL, '62.61', '62.61', '2025-05-27 14:36:39', NULL),
(49, 'national_literacy_rate_6_years_and_above', 2016, NULL, NULL, '70.6', '70.6', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `foreign_trade`
--

CREATE TABLE `foreign_trade` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foreign_trade`
--

INSERT INTO `foreign_trade` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'export_nu_in_million', 2020, NULL, NULL, '9649.3', '10495.94', '2025-05-21 15:40:07', 'foreign_trade_'),
(2, 'export_nu_in_million_india', 2020, NULL, NULL, '7327.97', '7381.41', '2025-05-21 15:40:07', 'foreign_trade_'),
(3, 'export_nu_in_million_third_countries', 2020, NULL, NULL, '2321.33', '3114.53', '2025-05-21 15:40:07', 'foreign_trade_'),
(4, 'import_nu_in_million', 2020, NULL, NULL, '26807.43', '32610.7', '2025-05-21 15:40:07', 'foreign_trade_'),
(5, 'import_nu_in_million_india', 2020, NULL, NULL, '22439.31', '25681.05', '2025-05-21 15:40:07', 'foreign_trade_'),
(6, 'import_nu_in_million_third_countries', 2020, NULL, NULL, '4368.12', '6929.65', '2025-05-21 15:40:07', 'foreign_trade_'),
(7, 'balance_of_trade_nu_in_million', 2020, NULL, NULL, '-17158.13', '-22114.760000000002', '2025-05-21 15:40:07', 'foreign_trade_'),
(8, 'balance_of_trade_nu_in_million_india', 2020, NULL, NULL, '-15111.34', '-18299.64', '2025-05-21 15:40:07', 'foreign_trade_'),
(9, 'balance_of_trade_third_countries', 2020, NULL, NULL, '-2046.78', '-3815.1199999999994', '2025-05-21 15:40:07', 'foreign_trade_'),
(10, 'export_nu_in_million', 2024, NULL, NULL, '9649.3', '10495.94', '2025-05-21 19:31:45', NULL),
(11, 'export_nu_in_million_india', 2024, NULL, NULL, '7327.97', '7381.41', '2025-05-21 19:31:45', NULL),
(12, 'export_nu_in_million_third_countries', 2024, NULL, NULL, '2321.33', '3114.53', '2025-05-21 19:31:45', NULL),
(13, 'import_nu_in_million', 2024, NULL, NULL, '26807.43', '32610.7', '2025-05-21 19:31:45', NULL),
(14, 'import_nu_in_million_india', 2024, NULL, NULL, '22439.31', '25681.05', '2025-05-21 19:31:45', NULL),
(15, 'import_nu_in_million_third_countries', 2024, NULL, NULL, '4368.12', '6929.65', '2025-05-21 19:31:45', NULL),
(16, 'balance_of_trade_nu_in_million', 2024, NULL, NULL, '-17158.13', '-22114.760000000002', '2025-05-21 19:31:45', NULL),
(17, 'balance_of_trade_nu_in_million_india', 2024, NULL, NULL, '-15111.34', '-18299.64', '2025-05-21 19:31:45', NULL),
(18, 'balance_of_trade_third_countries', 2024, NULL, NULL, '-2046.78', '-3815.1199999999994', '2025-05-21 19:31:45', NULL),
(19, 'export_nu_in_million', 2021, NULL, NULL, '9649.3', '10495.94', '2025-05-21 19:35:16', NULL),
(20, 'export_nu_in_million_india', 2021, NULL, NULL, '7327.97', '7381.41', '2025-05-21 19:35:16', NULL),
(21, 'export_nu_in_million_third_countries', 2021, NULL, NULL, '2321.33', '3114.53', '2025-05-21 19:35:16', NULL),
(22, 'import_nu_in_million', 2021, NULL, NULL, '26807.43', '32610.7', '2025-05-21 19:35:16', NULL),
(23, 'import_nu_in_million_india', 2021, NULL, NULL, '22439.31', '25681.05', '2025-05-21 19:35:16', NULL),
(24, 'import_nu_in_million_third_countries', 2021, NULL, NULL, '4368.12', '6929.65', '2025-05-21 19:35:16', NULL),
(25, 'balance_of_trade_nu_in_million', 2021, NULL, NULL, '-17158.13', '-22114.760000000002', '2025-05-21 19:35:16', NULL),
(26, 'balance_of_trade_nu_in_million_india', 2021, NULL, NULL, '-15111.34', '-18299.64', '2025-05-21 19:35:16', NULL),
(27, 'balance_of_trade_third_countries', 2021, NULL, NULL, '-2046.78', '-3815.1199999999994', '2025-05-21 19:35:16', NULL),
(28, 'export_nu_in_million', 2023, NULL, NULL, '9649.3', '10495.94', '2025-05-21 20:09:35', NULL),
(29, 'export_nu_in_million_india', 2023, NULL, NULL, '7327.97', '7381.41', '2025-05-21 20:09:35', NULL),
(30, 'export_nu_in_million_third_countries', 2023, NULL, NULL, '2321.33', '3114.53', '2025-05-21 20:09:35', NULL),
(31, 'import_nu_in_million', 2023, NULL, NULL, '26807.43', '32610.7', '2025-05-21 20:09:35', NULL),
(32, 'import_nu_in_million_india', 2023, NULL, NULL, '22439.31', '25681.05', '2025-05-21 20:09:35', NULL),
(33, 'import_nu_in_million_third_countries', 2023, NULL, NULL, '4368.12', '6929.65', '2025-05-21 20:09:35', NULL),
(34, 'balance_of_trade_nu_in_million', 2023, NULL, NULL, '-17158.13', '-22114.760000000002', '2025-05-21 20:09:35', NULL),
(35, 'balance_of_trade_nu_in_million_india', 2023, NULL, NULL, '-15111.34', '-18299.64', '2025-05-21 20:09:35', NULL),
(36, 'balance_of_trade_third_countries', 2023, NULL, NULL, '-2046.78', '-3815.1199999999994', '2025-05-21 20:09:35', NULL),
(37, 'export_nu_in_million', 2017, NULL, NULL, '9649.3', '10495.94', '2025-05-22 04:21:56', NULL),
(38, 'export_nu_in_million_india', 2017, NULL, NULL, '7327.97', '7381.41', '2025-05-22 04:21:56', NULL),
(39, 'export_nu_in_million_third_countries', 2017, NULL, NULL, '2321.33', '3114.53', '2025-05-22 04:21:56', NULL),
(40, 'import_nu_in_million', 2017, NULL, NULL, '26807.43', '32610.7', '2025-05-22 04:21:56', NULL),
(41, 'import_nu_in_million_india', 2017, NULL, NULL, '22439.31', '25681.05', '2025-05-22 04:21:56', NULL),
(42, 'import_nu_in_million_third_countries', 2017, NULL, NULL, '4368.12', '6929.65', '2025-05-22 04:21:56', NULL),
(43, 'balance_of_trade_nu_in_million', 2017, NULL, NULL, '-17158.13', '-22114.760000000002', '2025-05-22 04:21:56', NULL),
(44, 'balance_of_trade_nu_in_million_india', 2017, NULL, NULL, '-15111.34', '-18299.64', '2025-05-22 04:21:56', NULL),
(45, 'balance_of_trade_third_countries', 2017, NULL, NULL, '-2046.78', '-3815.1199999999994', '2025-05-22 04:21:56', NULL),
(46, 'export_nu_in_million', 2025, NULL, NULL, '9649.3', '10495.94', '2025-05-26 23:53:06', NULL),
(47, 'export_nu_in_million_india', 2025, NULL, NULL, '7327.97', '7381.41', '2025-05-26 23:53:06', NULL),
(48, 'export_nu_in_million_third_countries', 2025, NULL, NULL, '2321.33', '3114.53', '2025-05-26 23:53:06', NULL),
(49, 'import_nu_in_million', 2025, NULL, NULL, '26807.43', '32610.7', '2025-05-26 23:53:06', NULL),
(50, 'import_nu_in_million_india', 2025, NULL, NULL, '22439.31', '25681.05', '2025-05-26 23:53:06', NULL),
(51, 'import_nu_in_million_third_countries', 2025, NULL, NULL, '4368.12', '6929.65', '2025-05-26 23:53:06', NULL),
(52, 'balance_of_trade_nu_in_million', 2025, NULL, NULL, '-17158.13', '-22114.760000000002', '2025-05-26 23:53:06', NULL),
(53, 'balance_of_trade_nu_in_million_india', 2025, NULL, NULL, '-15111.34', '-18299.64', '2025-05-26 23:53:06', NULL),
(54, 'balance_of_trade_third_countries', 2025, NULL, NULL, '-2046.78', '-3815.1199999999994', '2025-05-26 23:53:06', NULL),
(55, 'export_nu_in_million', 2016, NULL, NULL, '9649.3', '10495.94', '2025-05-27 14:36:39', NULL),
(56, 'export_nu_in_million_india', 2016, NULL, NULL, '7327.97', '7381.41', '2025-05-27 14:36:39', NULL),
(57, 'export_nu_in_million_third_countries', 2016, NULL, NULL, '2321.33', '3114.53', '2025-05-27 14:36:39', NULL),
(58, 'import_nu_in_million', 2016, NULL, NULL, '26807.43', '32610.7', '2025-05-27 14:36:39', NULL),
(59, 'import_nu_in_million_india', 2016, NULL, NULL, '22439.31', '25681.05', '2025-05-27 14:36:39', NULL),
(60, 'import_nu_in_million_third_countries', 2016, NULL, NULL, '4368.12', '6929.65', '2025-05-27 14:36:39', NULL),
(61, 'balance_of_trade_nu_in_million', 2016, NULL, NULL, '-17158.13', '-22114.760000000002', '2025-05-27 14:36:39', NULL),
(62, 'balance_of_trade_nu_in_million_india', 2016, NULL, NULL, '-15111.34', '-18299.64', '2025-05-27 14:36:39', NULL),
(63, 'balance_of_trade_third_countries', 2016, NULL, NULL, '-2046.78', '-3815.1199999999994', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `forestry_number`
--

CREATE TABLE `forestry_number` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forestry_number`
--

INSERT INTO `forestry_number` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'divisional_forest_office', 2020, NULL, NULL, '14', '14', '2025-05-21 15:40:07', 'forestry_number'),
(2, 'range_offices_division', 2020, NULL, NULL, '42', '42', '2025-05-21 15:40:07', 'forestry_number'),
(3, 'beat_office_division', 2020, NULL, NULL, '76', '76', '2025-05-21 15:40:07', 'forestry_number'),
(4, 'range_office_park', 2020, NULL, NULL, '32', '32', '2025-05-21 15:40:07', 'forestry_number'),
(5, 'beat_office_park', 2020, NULL, NULL, '14', '14', '2025-05-21 15:40:07', 'forestry_number'),
(6, 'forest_cover_1', 2020, NULL, NULL, '69.7', '69.7', '2025-05-21 15:40:07', 'forestry_number'),
(7, 'protected_area_', 2020, NULL, NULL, '43.48', '43.48', '2025-05-21 15:40:07', 'forestry_number'),
(8, 'protected_areas_number_parks_santuaries_and_reserves', 2020, NULL, NULL, '10', '10', '2025-05-21 15:40:07', 'forestry_number'),
(9, 'biological_corridors_', 2020, NULL, NULL, '8.28', '8.28', '2025-05-21 15:40:07', 'forestry_number'),
(10, 'royal_botanical_park_', 2020, NULL, NULL, '0.24', '0.24', '2025-05-21 15:40:07', 'forestry_number'),
(11, 'tiger_centre2', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'forestry_number'),
(12, 'forestry_research_institute', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'forestry_number'),
(13, 'divisional_forest_office', 2024, NULL, NULL, '14', '14', '2025-05-21 19:31:45', NULL),
(14, 'range_offices_division', 2024, NULL, NULL, '42', '42', '2025-05-21 19:31:45', NULL),
(15, 'beat_office_division', 2024, NULL, NULL, '76', '76', '2025-05-21 19:31:45', NULL),
(16, 'range_office_park', 2024, NULL, NULL, '32', '32', '2025-05-21 19:31:45', NULL),
(17, 'beat_office_park', 2024, NULL, NULL, '14', '14', '2025-05-21 19:31:45', NULL),
(18, 'forest_cover_1', 2024, NULL, NULL, '69.7', '69.7', '2025-05-21 19:31:45', NULL),
(19, 'protected_area_', 2024, NULL, NULL, '43.48', '43.48', '2025-05-21 19:31:45', NULL),
(20, 'protected_areas_number_parks_santuaries_and_reserves', 2024, NULL, NULL, '10', '10', '2025-05-21 19:31:45', NULL),
(21, 'biological_corridors_', 2024, NULL, NULL, '8.28', '8.28', '2025-05-21 19:31:45', NULL),
(22, 'royal_botanical_park_', 2024, NULL, NULL, '0.24', '0.24', '2025-05-21 19:31:45', NULL),
(23, 'tiger_centre2', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(24, 'forestry_research_institute', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(25, 'divisional_forest_office', 2021, NULL, NULL, '14', '14', '2025-05-21 19:35:16', NULL),
(26, 'range_offices_division', 2021, NULL, NULL, '42', '42', '2025-05-21 19:35:16', NULL),
(27, 'beat_office_division', 2021, NULL, NULL, '76', '76', '2025-05-21 19:35:16', NULL),
(28, 'range_office_park', 2021, NULL, NULL, '32', '32', '2025-05-21 19:35:16', NULL),
(29, 'beat_office_park', 2021, NULL, NULL, '14', '14', '2025-05-21 19:35:16', NULL),
(30, 'forest_cover_1', 2021, NULL, NULL, '69.7', '69.7', '2025-05-21 19:35:16', NULL),
(31, 'protected_area_', 2021, NULL, NULL, '43.48', '43.48', '2025-05-21 19:35:16', NULL),
(32, 'protected_areas_number_parks_santuaries_and_reserves', 2021, NULL, NULL, '10', '10', '2025-05-21 19:35:16', NULL),
(33, 'biological_corridors_', 2021, NULL, NULL, '8.28', '8.28', '2025-05-21 19:35:16', NULL),
(34, 'royal_botanical_park_', 2021, NULL, NULL, '0.24', '0.24', '2025-05-21 19:35:16', NULL),
(35, 'tiger_centre2', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(36, 'forestry_research_institute', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(37, 'divisional_forest_office', 2023, NULL, NULL, '14', '14', '2025-05-21 20:09:35', NULL),
(38, 'range_offices_division', 2023, NULL, NULL, '42', '42', '2025-05-21 20:09:35', NULL),
(39, 'beat_office_division', 2023, NULL, NULL, '76', '76', '2025-05-21 20:09:35', NULL),
(40, 'range_office_park', 2023, NULL, NULL, '32', '32', '2025-05-21 20:09:35', NULL),
(41, 'beat_office_park', 2023, NULL, NULL, '14', '14', '2025-05-21 20:09:35', NULL),
(42, 'forest_cover_1', 2023, NULL, NULL, '69.7', '69.7', '2025-05-21 20:09:35', NULL),
(43, 'protected_area_', 2023, NULL, NULL, '43.48', '43.48', '2025-05-21 20:09:35', NULL),
(44, 'protected_areas_number_parks_santuaries_and_reserves', 2023, NULL, NULL, '10', '10', '2025-05-21 20:09:35', NULL),
(45, 'biological_corridors_', 2023, NULL, NULL, '8.28', '8.28', '2025-05-21 20:09:35', NULL),
(46, 'royal_botanical_park_', 2023, NULL, NULL, '0.24', '0.24', '2025-05-21 20:09:35', NULL),
(47, 'tiger_centre2', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(48, 'forestry_research_institute', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(49, 'divisional_forest_office', 2017, NULL, NULL, '14', '14', '2025-05-22 04:21:56', NULL),
(50, 'range_offices_division', 2017, NULL, NULL, '42', '42', '2025-05-22 04:21:56', NULL),
(51, 'beat_office_division', 2017, NULL, NULL, '76', '76', '2025-05-22 04:21:56', NULL),
(52, 'range_office_park', 2017, NULL, NULL, '32', '32', '2025-05-22 04:21:56', NULL),
(53, 'beat_office_park', 2017, NULL, NULL, '14', '14', '2025-05-22 04:21:56', NULL),
(54, 'forest_cover_1', 2017, NULL, NULL, '69.7', '69.7', '2025-05-22 04:21:56', NULL),
(55, 'protected_area_', 2017, NULL, NULL, '43.48', '43.48', '2025-05-22 04:21:56', NULL),
(56, 'protected_areas_number_parks_santuaries_and_reserves', 2017, NULL, NULL, '10', '10', '2025-05-22 04:21:56', NULL),
(57, 'biological_corridors_', 2017, NULL, NULL, '8.28', '8.28', '2025-05-22 04:21:56', NULL),
(58, 'royal_botanical_park_', 2017, NULL, NULL, '0.24', '0.24', '2025-05-22 04:21:56', NULL),
(59, 'tiger_centre2', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(60, 'forestry_research_institute', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(61, 'divisional_forest_office', 2025, NULL, NULL, '14', '14', '2025-05-26 23:53:06', NULL),
(62, 'range_offices_division', 2025, NULL, NULL, '42', '42', '2025-05-26 23:53:06', NULL),
(63, 'beat_office_division', 2025, NULL, NULL, '76', '76', '2025-05-26 23:53:06', NULL),
(64, 'range_office_park', 2025, NULL, NULL, '32', '32', '2025-05-26 23:53:06', NULL),
(65, 'beat_office_park', 2025, NULL, NULL, '14', '14', '2025-05-26 23:53:06', NULL),
(66, 'forest_cover_1', 2025, NULL, NULL, '69.7', '69.7', '2025-05-26 23:53:06', NULL),
(67, 'protected_area_', 2025, NULL, NULL, '43.48', '43.48', '2025-05-26 23:53:06', NULL),
(68, 'protected_areas_number_parks_santuaries_and_reserves', 2025, NULL, NULL, '10', '10', '2025-05-26 23:53:06', NULL),
(69, 'biological_corridors_', 2025, NULL, NULL, '8.28', '8.28', '2025-05-26 23:53:06', NULL),
(70, 'royal_botanical_park_', 2025, NULL, NULL, '0.24', '0.24', '2025-05-26 23:53:06', NULL),
(71, 'tiger_centre2', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(72, 'forestry_research_institute', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(73, 'divisional_forest_office', 2016, NULL, NULL, '14', '14', '2025-05-27 14:36:39', NULL),
(74, 'range_offices_division', 2016, NULL, NULL, '42', '42', '2025-05-27 14:36:39', NULL),
(75, 'beat_office_division', 2016, NULL, NULL, '76', '76', '2025-05-27 14:36:39', NULL),
(76, 'range_office_park', 2016, NULL, NULL, '32', '32', '2025-05-27 14:36:39', NULL),
(77, 'beat_office_park', 2016, NULL, NULL, '14', '14', '2025-05-27 14:36:39', NULL),
(78, 'forest_cover_1', 2016, NULL, NULL, '69.7', '69.7', '2025-05-27 14:36:39', NULL),
(79, 'protected_area_', 2016, NULL, NULL, '43.48', '43.48', '2025-05-27 14:36:39', NULL),
(80, 'protected_areas_number_parks_santuaries_and_reserves', 2016, NULL, NULL, '10', '10', '2025-05-27 14:36:39', NULL),
(81, 'biological_corridors_', 2016, NULL, NULL, '8.28', '8.28', '2025-05-27 14:36:39', NULL),
(82, 'royal_botanical_park_', 2016, NULL, NULL, '0.24', '0.24', '2025-05-27 14:36:39', NULL),
(83, 'tiger_centre2', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(84, 'forestry_research_institute', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `health`
--

CREATE TABLE `health` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health`
--

INSERT INTO `health` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'life_expectancy_at_birth1', 2020, NULL, NULL, '70.2', '70.2', '2025-05-21 15:40:07', 'health'),
(2, 'life_expectancy_at_birth1_male', 2020, NULL, NULL, '68.8', '68.8', '2025-05-21 15:40:07', 'health'),
(3, 'life_expectancy_at_birth1_female', 2020, NULL, NULL, '71.7', '71.7', '2025-05-21 15:40:07', 'health'),
(4, 'infant_mortality_rate_per_1000_live_births2', 2020, NULL, NULL, '15.2', '15.2', '2025-05-21 15:40:07', 'health'),
(5, 'crude_birth_rate_per_1000_population2', 2020, NULL, NULL, '18', '18', '2025-05-21 15:40:07', 'health'),
(6, 'crude_death_rate_per_1000_population2', 2020, NULL, NULL, '8.5', '8.5', '2025-05-21 15:40:07', 'health'),
(7, 'maternal_mortality_ratio_per_100000_live_births2', 2020, NULL, NULL, '53', '53', '2025-05-21 15:40:07', 'health'),
(8, 'total_fertility_rate_children_per_woman1', 2020, NULL, NULL, '1.7', '1.7', '2025-05-21 15:40:07', 'health'),
(9, 'deliveries_attended_by_skilled_health_workers_2', 2020, NULL, NULL, '98.5', '98.5', '2025-05-21 15:40:07', 'health'),
(10, 'institutional_delivery_2', 2020, NULL, NULL, '98', '98', '2025-05-21 15:40:07', 'health'),
(11, 'under5_mortality_rate_per_10002', 2020, NULL, NULL, '19.5', '19.5', '2025-05-21 15:40:07', 'health'),
(12, 'neonatal_mortality_rate_per_10002', 2020, NULL, NULL, '6.9', '6.9', '2025-05-21 15:40:07', 'health'),
(13, '_of_population_within_2_hours_from_the_nearest_health_facility_2', 2020, NULL, NULL, '96.8', '96.8', '2025-05-21 15:40:07', 'health'),
(14, 'life_expectancy_at_birth1', 2024, NULL, NULL, '70.2', '70.2', '2025-05-21 19:31:45', NULL),
(15, 'life_expectancy_at_birth1_male', 2024, NULL, NULL, '68.8', '68.8', '2025-05-21 19:31:45', NULL),
(16, 'life_expectancy_at_birth1_female', 2024, NULL, NULL, '71.7', '71.7', '2025-05-21 19:31:45', NULL),
(17, 'infant_mortality_rate_per_1000_live_births2', 2024, NULL, NULL, '15.2', '15.2', '2025-05-21 19:31:45', NULL),
(18, 'crude_birth_rate_per_1000_population2', 2024, NULL, NULL, '18', '18', '2025-05-21 19:31:45', NULL),
(19, 'crude_death_rate_per_1000_population2', 2024, NULL, NULL, '8.5', '8.5', '2025-05-21 19:31:45', NULL),
(20, 'maternal_mortality_ratio_per_100000_live_births2', 2024, NULL, NULL, '53', '53', '2025-05-21 19:31:45', NULL),
(21, 'total_fertility_rate_children_per_woman1', 2024, NULL, NULL, '1.7', '1.7', '2025-05-21 19:31:45', NULL),
(22, 'deliveries_attended_by_skilled_health_workers_2', 2024, NULL, NULL, '98.5', '98.5', '2025-05-21 19:31:45', NULL),
(23, 'institutional_delivery_2', 2024, NULL, NULL, '98', '98', '2025-05-21 19:31:45', NULL),
(24, 'under5_mortality_rate_per_10002', 2024, NULL, NULL, '19.5', '19.5', '2025-05-21 19:31:45', NULL),
(25, 'neonatal_mortality_rate_per_10002', 2024, NULL, NULL, '6.9', '6.9', '2025-05-21 19:31:45', NULL),
(26, '_of_population_within_2_hours_from_the_nearest_health_facility_2', 2024, NULL, NULL, '96.8', '96.8', '2025-05-21 19:31:45', NULL),
(27, 'life_expectancy_at_birth1', 2021, NULL, NULL, '70.2', '70.2', '2025-05-21 19:35:16', NULL),
(28, 'life_expectancy_at_birth1_male', 2021, NULL, NULL, '68.8', '68.8', '2025-05-21 19:35:16', NULL),
(29, 'life_expectancy_at_birth1_female', 2021, NULL, NULL, '71.7', '71.7', '2025-05-21 19:35:16', NULL),
(30, 'infant_mortality_rate_per_1000_live_births2', 2021, NULL, NULL, '15.2', '15.2', '2025-05-21 19:35:16', NULL),
(31, 'crude_birth_rate_per_1000_population2', 2021, NULL, NULL, '18', '18', '2025-05-21 19:35:16', NULL),
(32, 'crude_death_rate_per_1000_population2', 2021, NULL, NULL, '8.5', '8.5', '2025-05-21 19:35:16', NULL),
(33, 'maternal_mortality_ratio_per_100000_live_births2', 2021, NULL, NULL, '53', '53', '2025-05-21 19:35:16', NULL),
(34, 'total_fertility_rate_children_per_woman1', 2021, NULL, NULL, '1.7', '1.7', '2025-05-21 19:35:16', NULL),
(35, 'deliveries_attended_by_skilled_health_workers_2', 2021, NULL, NULL, '98.5', '98.5', '2025-05-21 19:35:16', NULL),
(36, 'institutional_delivery_2', 2021, NULL, NULL, '98', '98', '2025-05-21 19:35:16', NULL),
(37, 'under5_mortality_rate_per_10002', 2021, NULL, NULL, '19.5', '19.5', '2025-05-21 19:35:16', NULL),
(38, 'neonatal_mortality_rate_per_10002', 2021, NULL, NULL, '6.9', '6.9', '2025-05-21 19:35:16', NULL),
(39, '_of_population_within_2_hours_from_the_nearest_health_facility_2', 2021, NULL, NULL, '96.8', '96.8', '2025-05-21 19:35:16', NULL),
(40, 'life_expectancy_at_birth1', 2023, NULL, NULL, '70.2', '70.2', '2025-05-21 20:09:35', NULL),
(41, 'life_expectancy_at_birth1_male', 2023, NULL, NULL, '68.8', '68.8', '2025-05-21 20:09:35', NULL),
(42, 'life_expectancy_at_birth1_female', 2023, NULL, NULL, '71.7', '71.7', '2025-05-21 20:09:35', NULL),
(43, 'infant_mortality_rate_per_1000_live_births2', 2023, NULL, NULL, '15.2', '15.2', '2025-05-21 20:09:35', NULL),
(44, 'crude_birth_rate_per_1000_population2', 2023, NULL, NULL, '18', '18', '2025-05-21 20:09:35', NULL),
(45, 'crude_death_rate_per_1000_population2', 2023, NULL, NULL, '8.5', '8.5', '2025-05-21 20:09:35', NULL),
(46, 'maternal_mortality_ratio_per_100000_live_births2', 2023, NULL, NULL, '53', '53', '2025-05-21 20:09:35', NULL),
(47, 'total_fertility_rate_children_per_woman1', 2023, NULL, NULL, '1.7', '1.7', '2025-05-21 20:09:35', NULL),
(48, 'deliveries_attended_by_skilled_health_workers_2', 2023, NULL, NULL, '98.5', '98.5', '2025-05-21 20:09:35', NULL),
(49, 'institutional_delivery_2', 2023, NULL, NULL, '98', '98', '2025-05-21 20:09:35', NULL),
(50, 'under5_mortality_rate_per_10002', 2023, NULL, NULL, '19.5', '19.5', '2025-05-21 20:09:35', NULL),
(51, 'neonatal_mortality_rate_per_10002', 2023, NULL, NULL, '6.9', '6.9', '2025-05-21 20:09:35', NULL),
(52, '_of_population_within_2_hours_from_the_nearest_health_facility_2', 2023, NULL, NULL, '96.8', '96.8', '2025-05-21 20:09:35', NULL),
(53, 'life_expectancy_at_birth1', 2017, NULL, NULL, '70.2', '70.2', '2025-05-22 04:21:56', NULL),
(54, 'life_expectancy_at_birth1_male', 2017, NULL, NULL, '68.8', '68.8', '2025-05-22 04:21:56', NULL),
(55, 'life_expectancy_at_birth1_female', 2017, NULL, NULL, '71.7', '71.7', '2025-05-22 04:21:56', NULL),
(56, 'infant_mortality_rate_per_1000_live_births2', 2017, NULL, NULL, '15.2', '15.2', '2025-05-22 04:21:56', NULL),
(57, 'crude_birth_rate_per_1000_population2', 2017, NULL, NULL, '18', '18', '2025-05-22 04:21:56', NULL),
(58, 'crude_death_rate_per_1000_population2', 2017, NULL, NULL, '8.5', '8.5', '2025-05-22 04:21:56', NULL),
(59, 'maternal_mortality_ratio_per_100000_live_births2', 2017, NULL, NULL, '53', '53', '2025-05-22 04:21:56', NULL),
(60, 'total_fertility_rate_children_per_woman1', 2017, NULL, NULL, '1.7', '1.7', '2025-05-22 04:21:56', NULL),
(61, 'deliveries_attended_by_skilled_health_workers_2', 2017, NULL, NULL, '98.5', '98.5', '2025-05-22 04:21:56', NULL),
(62, 'institutional_delivery_2', 2017, NULL, NULL, '98', '98', '2025-05-22 04:21:56', NULL),
(63, 'under5_mortality_rate_per_10002', 2017, NULL, NULL, '19.5', '19.5', '2025-05-22 04:21:56', NULL),
(64, 'neonatal_mortality_rate_per_10002', 2017, NULL, NULL, '6.9', '6.9', '2025-05-22 04:21:56', NULL),
(65, '_of_population_within_2_hours_from_the_nearest_health_facility_2', 2017, NULL, NULL, '96.8', '96.8', '2025-05-22 04:21:56', NULL),
(66, 'life_expectancy_at_birth1', 2025, NULL, NULL, '70.2', '70.2', '2025-05-26 23:53:06', NULL),
(67, 'life_expectancy_at_birth1_male', 2025, NULL, NULL, '68.8', '68.8', '2025-05-26 23:53:06', NULL),
(68, 'life_expectancy_at_birth1_female', 2025, NULL, NULL, '71.7', '71.7', '2025-05-26 23:53:06', NULL),
(69, 'infant_mortality_rate_per_1000_live_births2', 2025, NULL, NULL, '15.2', '15.2', '2025-05-26 23:53:06', NULL),
(70, 'crude_birth_rate_per_1000_population2', 2025, NULL, NULL, '18', '18', '2025-05-26 23:53:06', NULL),
(71, 'crude_death_rate_per_1000_population2', 2025, NULL, NULL, '8.5', '8.5', '2025-05-26 23:53:06', NULL),
(72, 'maternal_mortality_ratio_per_100000_live_births2', 2025, NULL, NULL, '53', '53', '2025-05-26 23:53:06', NULL),
(73, 'total_fertility_rate_children_per_woman1', 2025, NULL, NULL, '1.7', '1.7', '2025-05-26 23:53:06', NULL),
(74, 'deliveries_attended_by_skilled_health_workers_2', 2025, NULL, NULL, '98.5', '98.5', '2025-05-26 23:53:06', NULL),
(75, 'institutional_delivery_2', 2025, NULL, NULL, '98', '98', '2025-05-26 23:53:06', NULL),
(76, 'under5_mortality_rate_per_10002', 2025, NULL, NULL, '19.5', '19.5', '2025-05-26 23:53:06', NULL),
(77, 'neonatal_mortality_rate_per_10002', 2025, NULL, NULL, '6.9', '6.9', '2025-05-26 23:53:06', NULL),
(78, '_of_population_within_2_hours_from_the_nearest_health_facility_2', 2025, NULL, NULL, '96.8', '96.8', '2025-05-26 23:53:06', NULL),
(79, 'life_expectancy_at_birth1', 2016, NULL, NULL, '70.2', '70.2', '2025-05-27 14:36:39', NULL),
(80, 'life_expectancy_at_birth1_male', 2016, NULL, NULL, '68.8', '68.8', '2025-05-27 14:36:39', NULL),
(81, 'life_expectancy_at_birth1_female', 2016, NULL, NULL, '71.7', '71.7', '2025-05-27 14:36:39', NULL),
(82, 'infant_mortality_rate_per_1000_live_births2', 2016, NULL, NULL, '15.2', '15.2', '2025-05-27 14:36:39', NULL),
(83, 'crude_birth_rate_per_1000_population2', 2016, NULL, NULL, '18', '18', '2025-05-27 14:36:39', NULL),
(84, 'crude_death_rate_per_1000_population2', 2016, NULL, NULL, '8.5', '8.5', '2025-05-27 14:36:39', NULL),
(85, 'maternal_mortality_ratio_per_100000_live_births2', 2016, NULL, NULL, '53', '53', '2025-05-27 14:36:39', NULL),
(86, 'total_fertility_rate_children_per_woman1', 2016, NULL, NULL, '1.7', '1.7', '2025-05-27 14:36:39', NULL),
(87, 'deliveries_attended_by_skilled_health_workers_2', 2016, NULL, NULL, '98.5', '98.5', '2025-05-27 14:36:39', NULL),
(88, 'institutional_delivery_2', 2016, NULL, NULL, '98', '98', '2025-05-27 14:36:39', NULL),
(89, 'under5_mortality_rate_per_10002', 2016, NULL, NULL, '19.5', '19.5', '2025-05-27 14:36:39', NULL),
(90, 'neonatal_mortality_rate_per_10002', 2016, NULL, NULL, '6.9', '6.9', '2025-05-27 14:36:39', NULL),
(91, '_of_population_within_2_hours_from_the_nearest_health_facility_2', 2016, NULL, NULL, '96.8', '96.8', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `health_human_resources`
--

CREATE TABLE `health_human_resources` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health_human_resources`
--

INSERT INTO `health_human_resources` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'general_specialistssubspecialists', 2020, NULL, NULL, '141', '141', '2025-05-21 15:40:07', 'health_human_resources'),
(2, 'medical_officers_mscmomogdmo', 2020, NULL, NULL, '217', '217', '2025-05-21 15:40:07', 'health_human_resources'),
(3, 'clinical_nurses', 2020, NULL, NULL, '362', '362', '2025-05-21 15:40:07', 'health_human_resources'),
(4, 'staffassistant_nurses', 2020, NULL, NULL, '1233', '1233', '2025-05-21 15:40:07', 'health_human_resources'),
(5, 'health_assistants_ha', 2020, NULL, NULL, '601', '601', '2025-05-21 15:40:07', 'health_human_resources'),
(6, 'general_specialistssubspecialists', 2024, NULL, NULL, '141', '141', '2025-05-21 19:31:45', NULL),
(7, 'medical_officers_mscmomogdmo', 2024, NULL, NULL, '217', '217', '2025-05-21 19:31:45', NULL),
(8, 'clinical_nurses', 2024, NULL, NULL, '362', '362', '2025-05-21 19:31:45', NULL),
(9, 'staffassistant_nurses', 2024, NULL, NULL, '1233', '1233', '2025-05-21 19:31:45', NULL),
(10, 'health_assistants_ha', 2024, NULL, NULL, '601', '601', '2025-05-21 19:31:45', NULL),
(11, 'general_specialistssubspecialists', 2021, NULL, NULL, '141', '141', '2025-05-21 19:35:16', NULL),
(12, 'medical_officers_mscmomogdmo', 2021, NULL, NULL, '217', '217', '2025-05-21 19:35:16', NULL),
(13, 'clinical_nurses', 2021, NULL, NULL, '362', '362', '2025-05-21 19:35:16', NULL),
(14, 'staffassistant_nurses', 2021, NULL, NULL, '1233', '1233', '2025-05-21 19:35:16', NULL),
(15, 'health_assistants_ha', 2021, NULL, NULL, '601', '601', '2025-05-21 19:35:16', NULL),
(16, 'general_specialistssubspecialists', 2023, NULL, NULL, '141', '141', '2025-05-21 20:09:35', NULL),
(17, 'medical_officers_mscmomogdmo', 2023, NULL, NULL, '217', '217', '2025-05-21 20:09:35', NULL),
(18, 'clinical_nurses', 2023, NULL, NULL, '362', '362', '2025-05-21 20:09:35', NULL),
(19, 'staffassistant_nurses', 2023, NULL, NULL, '1233', '1233', '2025-05-21 20:09:35', NULL),
(20, 'health_assistants_ha', 2023, NULL, NULL, '601', '601', '2025-05-21 20:09:35', NULL),
(21, 'general_specialistssubspecialists', 2017, NULL, NULL, '141', '141', '2025-05-22 04:21:56', NULL),
(22, 'medical_officers_mscmomogdmo', 2017, NULL, NULL, '217', '217', '2025-05-22 04:21:56', NULL),
(23, 'clinical_nurses', 2017, NULL, NULL, '362', '362', '2025-05-22 04:21:56', NULL),
(24, 'staffassistant_nurses', 2017, NULL, NULL, '1233', '1233', '2025-05-22 04:21:56', NULL),
(25, 'health_assistants_ha', 2017, NULL, NULL, '601', '601', '2025-05-22 04:21:56', NULL),
(26, 'general_specialistssubspecialists', 2025, NULL, NULL, '141', '141', '2025-05-26 23:53:06', NULL),
(27, 'medical_officers_mscmomogdmo', 2025, NULL, NULL, '217', '217', '2025-05-26 23:53:06', NULL),
(28, 'clinical_nurses', 2025, NULL, NULL, '362', '362', '2025-05-26 23:53:06', NULL),
(29, 'staffassistant_nurses', 2025, NULL, NULL, '1233', '1233', '2025-05-26 23:53:06', NULL),
(30, 'health_assistants_ha', 2025, NULL, NULL, '601', '601', '2025-05-26 23:53:06', NULL),
(31, 'general_specialistssubspecialists', 2016, NULL, NULL, '141', '141', '2025-05-27 14:36:39', NULL),
(32, 'medical_officers_mscmomogdmo', 2016, NULL, NULL, '217', '217', '2025-05-27 14:36:39', NULL),
(33, 'clinical_nurses', 2016, NULL, NULL, '362', '362', '2025-05-27 14:36:39', NULL),
(34, 'staffassistant_nurses', 2016, NULL, NULL, '1233', '1233', '2025-05-27 14:36:39', NULL),
(35, 'health_assistants_ha', 2016, NULL, NULL, '601', '601', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `health_institutes_number`
--

CREATE TABLE `health_institutes_number` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health_institutes_number`
--

INSERT INTO `health_institutes_number` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'hospitals', 2020, NULL, NULL, '55', '55', '2025-05-21 15:40:07', 'health_institutes_number'),
(2, 'primary_health_centres_phc', 2020, NULL, NULL, '187', '187', '2025-05-21 15:40:07', 'health_institutes_number'),
(3, 'subposts', 2020, NULL, NULL, '51', '51', '2025-05-21 15:40:07', 'health_institutes_number'),
(4, 'outreach_clinics_orc', 2020, NULL, NULL, '557', '557', '2025-05-21 15:40:07', 'health_institutes_number'),
(5, 'health_information_and_service_centres_hisc', 2020, NULL, NULL, '7', '7', '2025-05-21 15:40:07', 'health_institutes_number'),
(6, 'indigenous_hospitals', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'health_institutes_number'),
(7, 'indigenous_units', 2020, NULL, NULL, '80', '80', '2025-05-21 15:40:07', 'health_institutes_number'),
(8, 'training_institutes', 2020, NULL, NULL, '4', '4', '2025-05-21 15:40:07', 'health_institutes_number'),
(9, 'hospitals', 2024, NULL, NULL, '55', '55', '2025-05-21 19:31:45', NULL),
(10, 'primary_health_centres_phc', 2024, NULL, NULL, '187', '187', '2025-05-21 19:31:45', NULL),
(11, 'subposts', 2024, NULL, NULL, '51', '51', '2025-05-21 19:31:45', NULL),
(12, 'outreach_clinics_orc', 2024, NULL, NULL, '557', '557', '2025-05-21 19:31:45', NULL),
(13, 'health_information_and_service_centres_hisc', 2024, NULL, NULL, '7', '7', '2025-05-21 19:31:45', NULL),
(14, 'indigenous_hospitals', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(15, 'indigenous_units', 2024, NULL, NULL, '80', '80', '2025-05-21 19:31:45', NULL),
(16, 'training_institutes', 2024, NULL, NULL, '4', '4', '2025-05-21 19:31:45', NULL),
(17, 'hospitals', 2021, NULL, NULL, '55', '55', '2025-05-21 19:35:16', NULL),
(18, 'primary_health_centres_phc', 2021, NULL, NULL, '187', '187', '2025-05-21 19:35:16', NULL),
(19, 'subposts', 2021, NULL, NULL, '51', '51', '2025-05-21 19:35:16', NULL),
(20, 'outreach_clinics_orc', 2021, NULL, NULL, '557', '557', '2025-05-21 19:35:16', NULL),
(21, 'health_information_and_service_centres_hisc', 2021, NULL, NULL, '7', '7', '2025-05-21 19:35:16', NULL),
(22, 'indigenous_hospitals', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(23, 'indigenous_units', 2021, NULL, NULL, '80', '80', '2025-05-21 19:35:16', NULL),
(24, 'training_institutes', 2021, NULL, NULL, '4', '4', '2025-05-21 19:35:16', NULL),
(25, 'hospitals', 2023, NULL, NULL, '55', '55', '2025-05-21 20:09:35', NULL),
(26, 'primary_health_centres_phc', 2023, NULL, NULL, '187', '187', '2025-05-21 20:09:35', NULL),
(27, 'subposts', 2023, NULL, NULL, '51', '51', '2025-05-21 20:09:35', NULL),
(28, 'outreach_clinics_orc', 2023, NULL, NULL, '557', '557', '2025-05-21 20:09:35', NULL),
(29, 'health_information_and_service_centres_hisc', 2023, NULL, NULL, '7', '7', '2025-05-21 20:09:35', NULL),
(30, 'indigenous_hospitals', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(31, 'indigenous_units', 2023, NULL, NULL, '80', '80', '2025-05-21 20:09:35', NULL),
(32, 'training_institutes', 2023, NULL, NULL, '4', '4', '2025-05-21 20:09:35', NULL),
(33, 'hospitals', 2017, NULL, NULL, '55', '55', '2025-05-22 04:21:56', NULL),
(34, 'primary_health_centres_phc', 2017, NULL, NULL, '187', '187', '2025-05-22 04:21:56', NULL),
(35, 'subposts', 2017, NULL, NULL, '51', '51', '2025-05-22 04:21:56', NULL),
(36, 'outreach_clinics_orc', 2017, NULL, NULL, '557', '557', '2025-05-22 04:21:56', NULL),
(37, 'health_information_and_service_centres_hisc', 2017, NULL, NULL, '7', '7', '2025-05-22 04:21:56', NULL),
(38, 'indigenous_hospitals', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(39, 'indigenous_units', 2017, NULL, NULL, '80', '80', '2025-05-22 04:21:56', NULL),
(40, 'training_institutes', 2017, NULL, NULL, '4', '4', '2025-05-22 04:21:56', NULL),
(41, 'hospitals', 2025, NULL, NULL, '55', '55', '2025-05-26 23:53:06', NULL),
(42, 'primary_health_centres_phc', 2025, NULL, NULL, '187', '187', '2025-05-26 23:53:06', NULL),
(43, 'subposts', 2025, NULL, NULL, '51', '51', '2025-05-26 23:53:06', NULL),
(44, 'outreach_clinics_orc', 2025, NULL, NULL, '557', '557', '2025-05-26 23:53:06', NULL),
(45, 'health_information_and_service_centres_hisc', 2025, NULL, NULL, '7', '7', '2025-05-26 23:53:06', NULL),
(46, 'indigenous_hospitals', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(47, 'indigenous_units', 2025, NULL, NULL, '80', '80', '2025-05-26 23:53:06', NULL),
(48, 'training_institutes', 2025, NULL, NULL, '4', '4', '2025-05-26 23:53:06', NULL),
(49, 'hospitals', 2016, NULL, NULL, '55', '55', '2025-05-27 14:36:39', NULL),
(50, 'primary_health_centres_phc', 2016, NULL, NULL, '187', '187', '2025-05-27 14:36:39', NULL),
(51, 'subposts', 2016, NULL, NULL, '51', '51', '2025-05-27 14:36:39', NULL),
(52, 'outreach_clinics_orc', 2016, NULL, NULL, '557', '557', '2025-05-27 14:36:39', NULL),
(53, 'health_information_and_service_centres_hisc', 2016, NULL, NULL, '7', '7', '2025-05-27 14:36:39', NULL),
(54, 'indigenous_hospitals', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(55, 'indigenous_units', 2016, NULL, NULL, '80', '80', '2025-05-27 14:36:39', NULL),
(56, 'training_institutes', 2016, NULL, NULL, '4', '4', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'gdp_nu_in_million1', 2020, NULL, NULL, '249388.19', '249388.19', '2025-05-21 15:40:07', 'income'),
(2, 'gdp_per_capita_in_usd_1_usd__nu_8260', 2020, NULL, NULL, '3919.55', '3919.55', '2025-05-21 15:40:07', 'income'),
(3, 'gdp_growth_', 2020, NULL, NULL, '4.88', '4.88', '2025-05-21 15:40:07', 'income'),
(4, 'share_of_agriculture_to_gdp_', 2020, NULL, NULL, '6.57', '6.57', '2025-05-21 15:40:07', 'income'),
(5, 'saving_as__of_gdp', 2020, NULL, NULL, '19.7', '19.7', '2025-05-21 15:40:07', 'income'),
(6, 'investment_as__of_gdp', 2020, NULL, NULL, '45.18', '45.18', '2025-05-21 15:40:07', 'income'),
(7, 'export_of_goods_and_services_as__to_gdp', 2020, NULL, NULL, '28.33', '28.33', '2025-05-21 15:40:07', 'income'),
(8, 'import_of_goods_and_services_as__to_gdp', 2020, NULL, NULL, '53.24', '53.24', '2025-05-21 15:40:07', 'income'),
(9, 'inflation_rate_2', 2020, NULL, NULL, '1.8066666666666666', NULL, '2025-05-21 15:40:07', 'income'),
(10, 'foreign_exchange_reserves_usd_in_million3', 2020, NULL, NULL, '647.69', '700.51', '2025-05-21 15:40:07', 'income'),
(11, 'foreign_exchange_reserves_usd_in_million3_usd_in_million', 2020, NULL, NULL, '457.88', '509.7', '2025-05-21 15:40:07', 'income'),
(12, 'foreign_exchange_reserves_usd_in_million3_rupees_rs_in_million', 2020, NULL, NULL, '15881.16', '16116.1', '2025-05-21 15:40:07', 'income'),
(13, 'exchange_rate_1_usd_to_ngultrum3', 2020, NULL, NULL, '83.67', '84.5', '2025-05-21 15:40:07', 'income'),
(14, 'non_performing_loans_ratio_npr_3', 2020, NULL, NULL, '3.65', '3.26', '2025-05-21 15:40:07', 'income'),
(15, 'credit_to_deposit_ratio_3', 2020, NULL, NULL, '80.17', '78.91', '2025-05-21 15:40:07', 'income'),
(16, 'money_supply_nu_in_million3', 2020, NULL, NULL, '222955.97', '236333.9', '2025-05-21 15:40:07', 'income'),
(17, 'minimum_lending_rate_3', 2020, NULL, NULL, '6.8', '6.8', '2025-05-21 15:40:07', 'income'),
(18, 'gdp_nu_in_million1', 2024, NULL, NULL, '249388.19', '249388.19', '2025-05-21 19:31:45', NULL),
(19, 'gdp_per_capita_in_usd_1_usd__nu_8260', 2024, NULL, NULL, '3919.55', '3919.55', '2025-05-21 19:31:45', NULL),
(20, 'gdp_growth_', 2024, NULL, NULL, '4.88', '4.88', '2025-05-21 19:31:45', NULL),
(21, 'share_of_agriculture_to_gdp_', 2024, NULL, NULL, '6.57', '6.57', '2025-05-21 19:31:45', NULL),
(22, 'saving_as__of_gdp', 2024, NULL, NULL, '19.7', '19.7', '2025-05-21 19:31:45', NULL),
(23, 'investment_as__of_gdp', 2024, NULL, NULL, '45.18', '45.18', '2025-05-21 19:31:45', NULL),
(24, 'export_of_goods_and_services_as__to_gdp', 2024, NULL, NULL, '28.33', '28.33', '2025-05-21 19:31:45', NULL),
(25, 'import_of_goods_and_services_as__to_gdp', 2024, NULL, NULL, '53.24', '53.24', '2025-05-21 19:31:45', NULL),
(26, 'inflation_rate_2', 2024, NULL, NULL, '1.8066666666666666', NULL, '2025-05-21 19:31:45', NULL),
(27, 'foreign_exchange_reserves_usd_in_million3', 2024, NULL, NULL, '647.69', '700.51', '2025-05-21 19:31:45', NULL),
(28, 'foreign_exchange_reserves_usd_in_million3_usd_in_million', 2024, NULL, NULL, '457.88', '509.7', '2025-05-21 19:31:45', NULL),
(29, 'foreign_exchange_reserves_usd_in_million3_rupees_rs_in_million', 2024, NULL, NULL, '15881.16', '16116.1', '2025-05-21 19:31:45', NULL),
(30, 'exchange_rate_1_usd_to_ngultrum3', 2024, NULL, NULL, '83.67', '84.5', '2025-05-21 19:31:45', NULL),
(31, 'non_performing_loans_ratio_npr_3', 2024, NULL, NULL, '3.65', '3.26', '2025-05-21 19:31:45', NULL),
(32, 'credit_to_deposit_ratio_3', 2024, NULL, NULL, '80.17', '78.91', '2025-05-21 19:31:45', NULL),
(33, 'money_supply_nu_in_million3', 2024, NULL, NULL, '222955.97', '236333.9', '2025-05-21 19:31:45', NULL),
(34, 'minimum_lending_rate_3', 2024, NULL, NULL, '6.8', '6.8', '2025-05-21 19:31:45', NULL),
(35, 'gdp_nu_in_million1', 2021, NULL, NULL, '249388.19', '249388.19', '2025-05-21 19:35:16', NULL),
(36, 'gdp_per_capita_in_usd_1_usd__nu_8260', 2021, NULL, NULL, '3919.55', '3919.55', '2025-05-21 19:35:16', NULL),
(37, 'gdp_growth_', 2021, NULL, NULL, '4.88', '4.88', '2025-05-21 19:35:16', NULL),
(38, 'share_of_agriculture_to_gdp_', 2021, NULL, NULL, '6.57', '6.57', '2025-05-21 19:35:16', NULL),
(39, 'saving_as__of_gdp', 2021, NULL, NULL, '19.7', '19.7', '2025-05-21 19:35:16', NULL),
(40, 'investment_as__of_gdp', 2021, NULL, NULL, '45.18', '45.18', '2025-05-21 19:35:16', NULL),
(41, 'export_of_goods_and_services_as__to_gdp', 2021, NULL, NULL, '28.33', '28.33', '2025-05-21 19:35:16', NULL),
(42, 'import_of_goods_and_services_as__to_gdp', 2021, NULL, NULL, '53.24', '53.24', '2025-05-21 19:35:16', NULL),
(43, 'inflation_rate_2', 2021, NULL, NULL, '1.8066666666666666', NULL, '2025-05-21 19:35:16', NULL),
(44, 'foreign_exchange_reserves_usd_in_million3', 2021, NULL, NULL, '647.69', '700.51', '2025-05-21 19:35:16', NULL),
(45, 'foreign_exchange_reserves_usd_in_million3_usd_in_million', 2021, NULL, NULL, '457.88', '509.7', '2025-05-21 19:35:16', NULL),
(46, 'foreign_exchange_reserves_usd_in_million3_rupees_rs_in_million', 2021, NULL, NULL, '15881.16', '16116.1', '2025-05-21 19:35:16', NULL),
(47, 'exchange_rate_1_usd_to_ngultrum3', 2021, NULL, NULL, '83.67', '84.5', '2025-05-21 19:35:16', NULL),
(48, 'non_performing_loans_ratio_npr_3', 2021, NULL, NULL, '3.65', '3.26', '2025-05-21 19:35:16', NULL),
(49, 'credit_to_deposit_ratio_3', 2021, NULL, NULL, '80.17', '78.91', '2025-05-21 19:35:16', NULL),
(50, 'money_supply_nu_in_million3', 2021, NULL, NULL, '222955.97', '236333.9', '2025-05-21 19:35:16', NULL),
(51, 'minimum_lending_rate_3', 2021, NULL, NULL, '6.8', '6.8', '2025-05-21 19:35:16', NULL),
(52, 'gdp_nu_in_million1', 2023, NULL, NULL, '249388.19', '249388.19', '2025-05-21 20:09:35', NULL),
(53, 'gdp_per_capita_in_usd_1_usd__nu_8260', 2023, NULL, NULL, '3919.55', '3919.55', '2025-05-21 20:09:35', NULL),
(54, 'gdp_growth_', 2023, NULL, NULL, '4.88', '4.88', '2025-05-21 20:09:35', NULL),
(55, 'share_of_agriculture_to_gdp_', 2023, NULL, NULL, '6.57', '6.57', '2025-05-21 20:09:35', NULL),
(56, 'saving_as__of_gdp', 2023, NULL, NULL, '19.7', '19.7', '2025-05-21 20:09:35', NULL),
(57, 'investment_as__of_gdp', 2023, NULL, NULL, '45.18', '45.18', '2025-05-21 20:09:35', NULL),
(58, 'export_of_goods_and_services_as__to_gdp', 2023, NULL, NULL, '28.33', '28.33', '2025-05-21 20:09:35', NULL),
(59, 'import_of_goods_and_services_as__to_gdp', 2023, NULL, NULL, '53.24', '53.24', '2025-05-21 20:09:35', NULL),
(60, 'inflation_rate_2', 2023, NULL, NULL, '1.8066666666666666', NULL, '2025-05-21 20:09:35', NULL),
(61, 'foreign_exchange_reserves_usd_in_million3', 2023, NULL, NULL, '647.69', '700.51', '2025-05-21 20:09:35', NULL),
(62, 'foreign_exchange_reserves_usd_in_million3_usd_in_million', 2023, NULL, NULL, '457.88', '509.7', '2025-05-21 20:09:35', NULL),
(63, 'foreign_exchange_reserves_usd_in_million3_rupees_rs_in_million', 2023, NULL, NULL, '15881.16', '16116.1', '2025-05-21 20:09:35', NULL),
(64, 'exchange_rate_1_usd_to_ngultrum3', 2023, NULL, NULL, '83.67', '84.5', '2025-05-21 20:09:35', NULL),
(65, 'non_performing_loans_ratio_npr_3', 2023, NULL, NULL, '3.65', '3.26', '2025-05-21 20:09:35', NULL),
(66, 'credit_to_deposit_ratio_3', 2023, NULL, NULL, '80.17', '78.91', '2025-05-21 20:09:35', NULL),
(67, 'money_supply_nu_in_million3', 2023, NULL, NULL, '222955.97', '236333.9', '2025-05-21 20:09:35', NULL),
(68, 'minimum_lending_rate_3', 2023, NULL, NULL, '6.8', '6.8', '2025-05-21 20:09:35', NULL),
(69, 'gdp_nu_in_million1', 2017, NULL, NULL, '249388.19', '249388.19', '2025-05-22 04:21:55', NULL),
(70, 'gdp_per_capita_in_usd_1_usd__nu_8260', 2017, NULL, NULL, '3919.55', '3919.55', '2025-05-22 04:21:55', NULL),
(71, 'gdp_growth_', 2017, NULL, NULL, '4.88', '4.88', '2025-05-22 04:21:55', NULL),
(72, 'share_of_agriculture_to_gdp_', 2017, NULL, NULL, '6.57', '6.57', '2025-05-22 04:21:55', NULL),
(73, 'saving_as__of_gdp', 2017, NULL, NULL, '19.7', '19.7', '2025-05-22 04:21:55', NULL),
(74, 'investment_as__of_gdp', 2017, NULL, NULL, '45.18', '45.18', '2025-05-22 04:21:55', NULL),
(75, 'export_of_goods_and_services_as__to_gdp', 2017, NULL, NULL, '28.33', '28.33', '2025-05-22 04:21:55', NULL),
(76, 'import_of_goods_and_services_as__to_gdp', 2017, NULL, NULL, '53.24', '53.24', '2025-05-22 04:21:55', NULL),
(77, 'inflation_rate_2', 2017, NULL, NULL, '1.8066666666666666', NULL, '2025-05-22 04:21:55', NULL),
(78, 'foreign_exchange_reserves_usd_in_million3', 2017, NULL, NULL, '647.69', '700.51', '2025-05-22 04:21:55', NULL),
(79, 'foreign_exchange_reserves_usd_in_million3_usd_in_million', 2017, NULL, NULL, '457.88', '509.7', '2025-05-22 04:21:55', NULL),
(80, 'foreign_exchange_reserves_usd_in_million3_rupees_rs_in_million', 2017, NULL, NULL, '15881.16', '16116.1', '2025-05-22 04:21:55', NULL),
(81, 'exchange_rate_1_usd_to_ngultrum3', 2017, NULL, NULL, '83.67', '84.5', '2025-05-22 04:21:55', NULL),
(82, 'non_performing_loans_ratio_npr_3', 2017, NULL, NULL, '3.65', '3.26', '2025-05-22 04:21:55', NULL),
(83, 'credit_to_deposit_ratio_3', 2017, NULL, NULL, '80.17', '78.91', '2025-05-22 04:21:55', NULL),
(84, 'money_supply_nu_in_million3', 2017, NULL, NULL, '222955.97', '236333.9', '2025-05-22 04:21:55', NULL),
(85, 'minimum_lending_rate_3', 2017, NULL, NULL, '6.8', '6.8', '2025-05-22 04:21:55', NULL),
(86, 'gdp_nu_in_million1', 2025, NULL, NULL, '249388.19', '249388.19', '2025-05-26 23:53:06', NULL),
(87, 'gdp_per_capita_in_usd_1_usd__nu_8260', 2025, NULL, NULL, '3919.55', '3919.55', '2025-05-26 23:53:06', NULL),
(88, 'gdp_growth_', 2025, NULL, NULL, '4.88', '4.88', '2025-05-26 23:53:06', NULL),
(89, 'share_of_agriculture_to_gdp_', 2025, NULL, NULL, '6.57', '6.57', '2025-05-26 23:53:06', NULL),
(90, 'saving_as__of_gdp', 2025, NULL, NULL, '19.7', '19.7', '2025-05-26 23:53:06', NULL),
(91, 'investment_as__of_gdp', 2025, NULL, NULL, '45.18', '45.18', '2025-05-26 23:53:06', NULL),
(92, 'export_of_goods_and_services_as__to_gdp', 2025, NULL, NULL, '28.33', '28.33', '2025-05-26 23:53:06', NULL),
(93, 'import_of_goods_and_services_as__to_gdp', 2025, NULL, NULL, '53.24', '53.24', '2025-05-26 23:53:06', NULL),
(94, 'inflation_rate_2', 2025, NULL, NULL, '1.8066666666666666', NULL, '2025-05-26 23:53:06', NULL),
(95, 'foreign_exchange_reserves_usd_in_million3', 2025, NULL, NULL, '647.69', '700.51', '2025-05-26 23:53:06', NULL),
(96, 'foreign_exchange_reserves_usd_in_million3_usd_in_million', 2025, NULL, NULL, '457.88', '509.7', '2025-05-26 23:53:06', NULL),
(97, 'foreign_exchange_reserves_usd_in_million3_rupees_rs_in_million', 2025, NULL, NULL, '15881.16', '16116.1', '2025-05-26 23:53:06', NULL),
(98, 'exchange_rate_1_usd_to_ngultrum3', 2025, NULL, NULL, '83.67', '84.5', '2025-05-26 23:53:06', NULL),
(99, 'non_performing_loans_ratio_npr_3', 2025, NULL, NULL, '3.65', '3.26', '2025-05-26 23:53:06', NULL),
(100, 'credit_to_deposit_ratio_3', 2025, NULL, NULL, '80.17', '78.91', '2025-05-26 23:53:06', NULL),
(101, 'money_supply_nu_in_million3', 2025, NULL, NULL, '222955.97', '236333.9', '2025-05-26 23:53:06', NULL),
(102, 'minimum_lending_rate_3', 2025, NULL, NULL, '6.8', '6.8', '2025-05-26 23:53:06', NULL),
(103, 'gdp_nu_in_million1', 2016, NULL, NULL, '249388.19', '249388.19', '2025-05-27 14:36:39', NULL),
(104, 'gdp_per_capita_in_usd_1_usd__nu_8260', 2016, NULL, NULL, '3919.55', '3919.55', '2025-05-27 14:36:39', NULL),
(105, 'gdp_growth_', 2016, NULL, NULL, '4.88', '4.88', '2025-05-27 14:36:39', NULL),
(106, 'share_of_agriculture_to_gdp_', 2016, NULL, NULL, '6.57', '6.57', '2025-05-27 14:36:39', NULL),
(107, 'saving_as__of_gdp', 2016, NULL, NULL, '19.7', '19.7', '2025-05-27 14:36:39', NULL),
(108, 'investment_as__of_gdp', 2016, NULL, NULL, '45.18', '45.18', '2025-05-27 14:36:39', NULL),
(109, 'export_of_goods_and_services_as__to_gdp', 2016, NULL, NULL, '28.33', '28.33', '2025-05-27 14:36:39', NULL),
(110, 'import_of_goods_and_services_as__to_gdp', 2016, NULL, NULL, '53.24', '53.24', '2025-05-27 14:36:39', NULL),
(111, 'inflation_rate_2', 2016, NULL, NULL, '1.8066666666666666', NULL, '2025-05-27 14:36:39', NULL),
(112, 'foreign_exchange_reserves_usd_in_million3', 2016, NULL, NULL, '647.69', '700.51', '2025-05-27 14:36:39', NULL),
(113, 'foreign_exchange_reserves_usd_in_million3_usd_in_million', 2016, NULL, NULL, '457.88', '509.7', '2025-05-27 14:36:39', NULL),
(114, 'foreign_exchange_reserves_usd_in_million3_rupees_rs_in_million', 2016, NULL, NULL, '15881.16', '16116.1', '2025-05-27 14:36:39', NULL),
(115, 'exchange_rate_1_usd_to_ngultrum3', 2016, NULL, NULL, '83.67', '84.5', '2025-05-27 14:36:39', NULL),
(116, 'non_performing_loans_ratio_npr_3', 2016, NULL, NULL, '3.65', '3.26', '2025-05-27 14:36:39', NULL),
(117, 'credit_to_deposit_ratio_3', 2016, NULL, NULL, '80.17', '78.91', '2025-05-27 14:36:39', NULL),
(118, 'money_supply_nu_in_million3', 2016, NULL, NULL, '222955.97', '236333.9', '2025-05-27 14:36:39', NULL),
(119, 'minimum_lending_rate_3', 2016, NULL, NULL, '6.8', '6.8', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `indicator_metadata`
--

CREATE TABLE `indicator_metadata` (
  `id` int(11) NOT NULL,
  `indicator_name` varchar(255) NOT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `indicator_afn` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `indicator_metadata`
--

INSERT INTO `indicator_metadata` (`id`, `indicator_name`, `sector`, `indicator_afn`) VALUES
(1, 'Population', 'Social', 'Agricultural Marketing Centres (Number)'),
(2, 'labour_and_employment', 'Social', 'Labour and Employment'),
(3, 'national_poverty_rate', 'Social', 'National Poverty Rate'),
(4, 'industries', 'Social', 'Industries'),
(5, 'forestry_number', 'Social', 'Forestry (Number)'),
(6, 'education', 'Social', 'Education'),
(7, 'agricultural_marketing_centres_number', 'Social', 'Agricultural Marketing Centres (Number)'),
(8, 'agriculture_number', 'Social', 'Agriculture (Number)'),
(9, 'health', 'Social', 'Health'),
(10, 'health_human_resources', 'Social', 'Health Human Resources'),
(11, 'health_institutes_number', 'Social', 'Health Institutes (Number)'),
(12, 'livestock_number', 'Social', 'Livestock (Number)'),
(13, 'number_of_educational_institutes_schools_institutes_and_centres', 'Social', 'Number of Educational Institutes (Schools, Institutes and Centres)'),
(14, 'sanitation', 'Social', 'Sanitation'),
(15, 'tourism', 'Social', 'Tourism'),
(16, 'transport_communications', 'Social', 'Transport & Communications'),
(17, 'income', 'Economic', 'Income'),
(18, 'public_finance_nu_in_million', 'Economic', 'Public Finance (Nu. in Million)'),
(19, 'power_units_in_million', 'Economic', 'Power (Units in Million)'),
(20, 'trade', 'Economic', 'Trade'),
(21, 'foreign_trade', 'Economic', 'Foreign Trade'),
(22, 'diplomatic_relations_number', 'Gov & Security', 'Diplomatic Relations (Number)');

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'industries_by_sector', 2020, NULL, NULL, '30201', '30621', '2025-05-21 15:40:07', 'industries'),
(2, 'industries_by_sector_production_and_manufacturing', 2020, NULL, NULL, '3981', '4309', '2025-05-21 15:40:07', 'industries'),
(3, 'industries_by_sector_services', 2020, NULL, NULL, '24250', '24373', '2025-05-21 15:40:07', 'industries'),
(4, 'industries_by_sector_contruction', 2020, NULL, NULL, '1970', '1939', '2025-05-21 15:40:07', 'industries'),
(5, 'industries_by_ownership', 2020, NULL, NULL, '30201', '30621', '2025-05-21 15:40:07', 'industries'),
(6, 'industries_by_ownership_sole_proprietorship', 2020, NULL, NULL, '28881', '29227', '2025-05-21 15:40:07', 'industries'),
(7, 'industries_by_ownership_partnership', 2020, NULL, NULL, '390', '410', '2025-05-21 15:40:07', 'industries'),
(8, 'industries_by_ownership_company', 2020, NULL, NULL, '797', '845', '2025-05-21 15:40:07', 'industries'),
(9, 'industries_by_ownership_others', 2020, NULL, NULL, '133', '139', '2025-05-21 15:40:07', 'industries'),
(10, 'industries_by_size', 2020, NULL, NULL, '30201', '30621', '2025-05-21 15:40:07', 'industries'),
(11, 'industries_by_size_large', 2020, NULL, NULL, '440', '444', '2025-05-21 15:40:07', 'industries'),
(12, 'industries_by_size_medium', 2020, NULL, NULL, '804', '807', '2025-05-21 15:40:07', 'industries'),
(13, 'industries_by_size_small', 2020, NULL, NULL, '18199', '18199', '2025-05-21 15:40:07', 'industries'),
(14, 'industries_by_size_cottage', 2020, NULL, NULL, '10758', '11171', '2025-05-21 15:40:07', 'industries'),
(15, 'number_of_fdi_industries', 2020, NULL, NULL, '115', '121', '2025-05-21 15:40:07', 'industries'),
(16, 'industries_by_sector', 2024, NULL, NULL, '30201', '30621', '2025-05-21 19:31:45', NULL),
(17, 'industries_by_sector_production_and_manufacturing', 2024, NULL, NULL, '3981', '4309', '2025-05-21 19:31:45', NULL),
(18, 'industries_by_sector_services', 2024, NULL, NULL, '24250', '24373', '2025-05-21 19:31:45', NULL),
(19, 'industries_by_sector_contruction', 2024, NULL, NULL, '1970', '1939', '2025-05-21 19:31:45', NULL),
(20, 'industries_by_ownership', 2024, NULL, NULL, '30201', '30621', '2025-05-21 19:31:45', NULL),
(21, 'industries_by_ownership_sole_proprietorship', 2024, NULL, NULL, '28881', '29227', '2025-05-21 19:31:45', NULL),
(22, 'industries_by_ownership_partnership', 2024, NULL, NULL, '390', '410', '2025-05-21 19:31:45', NULL),
(23, 'industries_by_ownership_company', 2024, NULL, NULL, '797', '845', '2025-05-21 19:31:45', NULL),
(24, 'industries_by_ownership_others', 2024, NULL, NULL, '133', '139', '2025-05-21 19:31:45', NULL),
(25, 'industries_by_size', 2024, NULL, NULL, '30201', '30621', '2025-05-21 19:31:45', NULL),
(26, 'industries_by_size_large', 2024, NULL, NULL, '440', '444', '2025-05-21 19:31:45', NULL),
(27, 'industries_by_size_medium', 2024, NULL, NULL, '804', '807', '2025-05-21 19:31:45', NULL),
(28, 'industries_by_size_small', 2024, NULL, NULL, '18199', '18199', '2025-05-21 19:31:45', NULL),
(29, 'industries_by_size_cottage', 2024, NULL, NULL, '10758', '11171', '2025-05-21 19:31:45', NULL),
(30, 'number_of_fdi_industries', 2024, NULL, NULL, '115', '121', '2025-05-21 19:31:45', NULL),
(31, 'industries_by_sector', 2021, NULL, NULL, '30201', '30621', '2025-05-21 19:35:16', NULL),
(32, 'industries_by_sector_production_and_manufacturing', 2021, NULL, NULL, '3981', '4309', '2025-05-21 19:35:16', NULL),
(33, 'industries_by_sector_services', 2021, NULL, NULL, '24250', '24373', '2025-05-21 19:35:16', NULL),
(34, 'industries_by_sector_contruction', 2021, NULL, NULL, '1970', '1939', '2025-05-21 19:35:16', NULL),
(35, 'industries_by_ownership', 2021, NULL, NULL, '30201', '30621', '2025-05-21 19:35:16', NULL),
(36, 'industries_by_ownership_sole_proprietorship', 2021, NULL, NULL, '28881', '29227', '2025-05-21 19:35:16', NULL),
(37, 'industries_by_ownership_partnership', 2021, NULL, NULL, '390', '410', '2025-05-21 19:35:16', NULL),
(38, 'industries_by_ownership_company', 2021, NULL, NULL, '797', '845', '2025-05-21 19:35:16', NULL),
(39, 'industries_by_ownership_others', 2021, NULL, NULL, '133', '139', '2025-05-21 19:35:16', NULL),
(40, 'industries_by_size', 2021, NULL, NULL, '30201', '30621', '2025-05-21 19:35:16', NULL),
(41, 'industries_by_size_large', 2021, NULL, NULL, '440', '444', '2025-05-21 19:35:16', NULL),
(42, 'industries_by_size_medium', 2021, NULL, NULL, '804', '807', '2025-05-21 19:35:16', NULL),
(43, 'industries_by_size_small', 2021, NULL, NULL, '18199', '18199', '2025-05-21 19:35:16', NULL),
(44, 'industries_by_size_cottage', 2021, NULL, NULL, '10758', '11171', '2025-05-21 19:35:16', NULL),
(45, 'number_of_fdi_industries', 2021, NULL, NULL, '115', '121', '2025-05-21 19:35:16', NULL),
(46, 'industries_by_sector', 2023, NULL, NULL, '30201', '30621', '2025-05-21 20:09:35', NULL),
(47, 'industries_by_sector_production_and_manufacturing', 2023, NULL, NULL, '3981', '4309', '2025-05-21 20:09:35', NULL),
(48, 'industries_by_sector_services', 2023, NULL, NULL, '24250', '24373', '2025-05-21 20:09:35', NULL),
(49, 'industries_by_sector_contruction', 2023, NULL, NULL, '1970', '1939', '2025-05-21 20:09:35', NULL),
(50, 'industries_by_ownership', 2023, NULL, NULL, '30201', '30621', '2025-05-21 20:09:35', NULL),
(51, 'industries_by_ownership_sole_proprietorship', 2023, NULL, NULL, '28881', '29227', '2025-05-21 20:09:35', NULL),
(52, 'industries_by_ownership_partnership', 2023, NULL, NULL, '390', '410', '2025-05-21 20:09:35', NULL),
(53, 'industries_by_ownership_company', 2023, NULL, NULL, '797', '845', '2025-05-21 20:09:35', NULL),
(54, 'industries_by_ownership_others', 2023, NULL, NULL, '133', '139', '2025-05-21 20:09:35', NULL),
(55, 'industries_by_size', 2023, NULL, NULL, '30201', '30621', '2025-05-21 20:09:35', NULL),
(56, 'industries_by_size_large', 2023, NULL, NULL, '440', '444', '2025-05-21 20:09:35', NULL),
(57, 'industries_by_size_medium', 2023, NULL, NULL, '804', '807', '2025-05-21 20:09:35', NULL),
(58, 'industries_by_size_small', 2023, NULL, NULL, '18199', '18199', '2025-05-21 20:09:35', NULL),
(59, 'industries_by_size_cottage', 2023, NULL, NULL, '10758', '11171', '2025-05-21 20:09:35', NULL),
(60, 'number_of_fdi_industries', 2023, NULL, NULL, '115', '121', '2025-05-21 20:09:35', NULL),
(61, 'industries_by_sector', 2017, NULL, NULL, '30201', '30621', '2025-05-22 04:21:55', NULL),
(62, 'industries_by_sector_production_and_manufacturing', 2017, NULL, NULL, '3981', '4309', '2025-05-22 04:21:55', NULL),
(63, 'industries_by_sector_services', 2017, NULL, NULL, '24250', '24373', '2025-05-22 04:21:56', NULL),
(64, 'industries_by_sector_contruction', 2017, NULL, NULL, '1970', '1939', '2025-05-22 04:21:56', NULL),
(65, 'industries_by_ownership', 2017, NULL, NULL, '30201', '30621', '2025-05-22 04:21:56', NULL),
(66, 'industries_by_ownership_sole_proprietorship', 2017, NULL, NULL, '28881', '29227', '2025-05-22 04:21:56', NULL),
(67, 'industries_by_ownership_partnership', 2017, NULL, NULL, '390', '410', '2025-05-22 04:21:56', NULL),
(68, 'industries_by_ownership_company', 2017, NULL, NULL, '797', '845', '2025-05-22 04:21:56', NULL),
(69, 'industries_by_ownership_others', 2017, NULL, NULL, '133', '139', '2025-05-22 04:21:56', NULL),
(70, 'industries_by_size', 2017, NULL, NULL, '30201', '30621', '2025-05-22 04:21:56', NULL),
(71, 'industries_by_size_large', 2017, NULL, NULL, '440', '444', '2025-05-22 04:21:56', NULL),
(72, 'industries_by_size_medium', 2017, NULL, NULL, '804', '807', '2025-05-22 04:21:56', NULL),
(73, 'industries_by_size_small', 2017, NULL, NULL, '18199', '18199', '2025-05-22 04:21:56', NULL),
(74, 'industries_by_size_cottage', 2017, NULL, NULL, '10758', '11171', '2025-05-22 04:21:56', NULL),
(75, 'number_of_fdi_industries', 2017, NULL, NULL, '115', '121', '2025-05-22 04:21:56', NULL),
(76, 'industries_by_sector', 2025, NULL, NULL, '30201', '30621', '2025-05-26 23:53:06', NULL),
(77, 'industries_by_sector_production_and_manufacturing', 2025, NULL, NULL, '3981', '4309', '2025-05-26 23:53:06', NULL),
(78, 'industries_by_sector_services', 2025, NULL, NULL, '24250', '24373', '2025-05-26 23:53:06', NULL),
(79, 'industries_by_sector_contruction', 2025, NULL, NULL, '1970', '1939', '2025-05-26 23:53:06', NULL),
(80, 'industries_by_ownership', 2025, NULL, NULL, '30201', '30621', '2025-05-26 23:53:06', NULL),
(81, 'industries_by_ownership_sole_proprietorship', 2025, NULL, NULL, '28881', '29227', '2025-05-26 23:53:06', NULL),
(82, 'industries_by_ownership_partnership', 2025, NULL, NULL, '390', '410', '2025-05-26 23:53:06', NULL),
(83, 'industries_by_ownership_company', 2025, NULL, NULL, '797', '845', '2025-05-26 23:53:06', NULL),
(84, 'industries_by_ownership_others', 2025, NULL, NULL, '133', '139', '2025-05-26 23:53:06', NULL),
(85, 'industries_by_size', 2025, NULL, NULL, '30201', '30621', '2025-05-26 23:53:06', NULL),
(86, 'industries_by_size_large', 2025, NULL, NULL, '440', '444', '2025-05-26 23:53:06', NULL),
(87, 'industries_by_size_medium', 2025, NULL, NULL, '804', '807', '2025-05-26 23:53:06', NULL),
(88, 'industries_by_size_small', 2025, NULL, NULL, '18199', '18199', '2025-05-26 23:53:06', NULL),
(89, 'industries_by_size_cottage', 2025, NULL, NULL, '10758', '11171', '2025-05-26 23:53:06', NULL),
(90, 'number_of_fdi_industries', 2025, NULL, NULL, '115', '121', '2025-05-26 23:53:06', NULL),
(91, 'industries_by_sector', 2016, NULL, NULL, '30201', '30621', '2025-05-27 14:36:39', NULL),
(92, 'industries_by_sector_production_and_manufacturing', 2016, NULL, NULL, '3981', '4309', '2025-05-27 14:36:39', NULL),
(93, 'industries_by_sector_services', 2016, NULL, NULL, '24250', '24373', '2025-05-27 14:36:39', NULL),
(94, 'industries_by_sector_contruction', 2016, NULL, NULL, '1970', '1939', '2025-05-27 14:36:39', NULL),
(95, 'industries_by_ownership', 2016, NULL, NULL, '30201', '30621', '2025-05-27 14:36:39', NULL),
(96, 'industries_by_ownership_sole_proprietorship', 2016, NULL, NULL, '28881', '29227', '2025-05-27 14:36:39', NULL),
(97, 'industries_by_ownership_partnership', 2016, NULL, NULL, '390', '410', '2025-05-27 14:36:39', NULL),
(98, 'industries_by_ownership_company', 2016, NULL, NULL, '797', '845', '2025-05-27 14:36:39', NULL),
(99, 'industries_by_ownership_others', 2016, NULL, NULL, '133', '139', '2025-05-27 14:36:39', NULL),
(100, 'industries_by_size', 2016, NULL, NULL, '30201', '30621', '2025-05-27 14:36:39', NULL),
(101, 'industries_by_size_large', 2016, NULL, NULL, '440', '444', '2025-05-27 14:36:39', NULL),
(102, 'industries_by_size_medium', 2016, NULL, NULL, '804', '807', '2025-05-27 14:36:39', NULL),
(103, 'industries_by_size_small', 2016, NULL, NULL, '18199', '18199', '2025-05-27 14:36:39', NULL),
(104, 'industries_by_size_cottage', 2016, NULL, NULL, '10758', '11171', '2025-05-27 14:36:39', NULL),
(105, 'number_of_fdi_industries', 2016, NULL, NULL, '115', '121', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `labour_and_employment`
--

CREATE TABLE `labour_and_employment` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `labour_and_employment`
--

INSERT INTO `labour_and_employment` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'labour_force_participation_rate_', 2020, NULL, NULL, '65.1', '64.8', '2025-05-21 15:40:07', 'labour_and_employment'),
(2, 'labour_force_participation_rate__male', 2020, NULL, NULL, '75.7', '74', '2025-05-21 15:40:07', 'labour_and_employment'),
(3, 'labour_force_participation_rate__female', 2020, NULL, NULL, '53.5', '54.6', '2025-05-21 15:40:07', 'labour_and_employment'),
(4, 'unemployment_rate_', 2020, NULL, NULL, '3.09', '3.11', '2025-05-21 15:40:07', 'labour_and_employment'),
(5, 'unemployment_rate__male', 2020, NULL, NULL, '2.4', '2.3', '2025-05-21 15:40:07', 'labour_and_employment'),
(6, 'unemployment_rate__female', 2020, NULL, NULL, '4.2', '4.4', '2025-05-21 15:40:07', 'labour_and_employment'),
(7, 'youth_unemployment_rate_', 2020, NULL, NULL, '16.5', '17.7', '2025-05-21 15:40:07', 'labour_and_employment'),
(8, 'youth_unemployment_rate__male', 2020, NULL, NULL, '11.9', '14.5', '2025-05-21 15:40:07', 'labour_and_employment'),
(9, 'youth_unemployment_rate__female', 2020, NULL, NULL, '21.8', '21.2', '2025-05-21 15:40:07', 'labour_and_employment'),
(10, 'number_of_new_jobseekers_registered', 2020, NULL, NULL, '2868', '2865', '2025-05-21 15:40:07', 'labour_and_employment'),
(11, 'number_of_new_jobseekers_registered_male', 2020, NULL, NULL, '1562', '1433', '2025-05-21 15:40:07', 'labour_and_employment'),
(12, 'number_of_new_jobseekers_registered_female', 2020, NULL, NULL, '1306', '1432', '2025-05-21 15:40:07', 'labour_and_employment'),
(13, 'placement_through_overseas_employment_program', 2020, NULL, NULL, '294', '514', '2025-05-21 15:40:07', 'labour_and_employment'),
(14, 'placement_through_overseas_employment_program_male', 2020, NULL, NULL, '97', '153', '2025-05-21 15:40:07', 'labour_and_employment'),
(15, 'placement_through_overseas_employment_program_female', 2020, NULL, NULL, '197', '361', '2025-05-21 15:40:07', 'labour_and_employment'),
(16, 'labour_force_participation_rate_', 2024, NULL, NULL, '65.1', '64.8', '2025-05-21 19:31:45', NULL),
(17, 'labour_force_participation_rate__male', 2024, NULL, NULL, '75.7', '74', '2025-05-21 19:31:45', NULL),
(18, 'labour_force_participation_rate__female', 2024, NULL, NULL, '53.5', '54.6', '2025-05-21 19:31:45', NULL),
(19, 'unemployment_rate_', 2024, NULL, NULL, '3.09', '3.11', '2025-05-21 19:31:45', NULL),
(20, 'unemployment_rate__male', 2024, NULL, NULL, '2.4', '2.3', '2025-05-21 19:31:45', NULL),
(21, 'unemployment_rate__female', 2024, NULL, NULL, '4.2', '4.4', '2025-05-21 19:31:45', NULL),
(22, 'youth_unemployment_rate_', 2024, NULL, NULL, '16.5', '17.7', '2025-05-21 19:31:45', NULL),
(23, 'youth_unemployment_rate__male', 2024, NULL, NULL, '11.9', '14.5', '2025-05-21 19:31:45', NULL),
(24, 'youth_unemployment_rate__female', 2024, NULL, NULL, '21.8', '21.2', '2025-05-21 19:31:45', NULL),
(25, 'number_of_new_jobseekers_registered', 2024, NULL, NULL, '2868', '2865', '2025-05-21 19:31:45', NULL),
(26, 'number_of_new_jobseekers_registered_male', 2024, NULL, NULL, '1562', '1433', '2025-05-21 19:31:45', NULL),
(27, 'number_of_new_jobseekers_registered_female', 2024, NULL, NULL, '1306', '1432', '2025-05-21 19:31:45', NULL),
(28, 'placement_through_overseas_employment_program', 2024, NULL, NULL, '294', '514', '2025-05-21 19:31:45', NULL),
(29, 'placement_through_overseas_employment_program_male', 2024, NULL, NULL, '97', '153', '2025-05-21 19:31:45', NULL),
(30, 'placement_through_overseas_employment_program_female', 2024, NULL, NULL, '197', '361', '2025-05-21 19:31:45', NULL),
(31, 'labour_force_participation_rate_', 2021, NULL, NULL, '65.1', '64.8', '2025-05-21 19:35:16', NULL),
(32, 'labour_force_participation_rate__male', 2021, NULL, NULL, '75.7', '74', '2025-05-21 19:35:16', NULL),
(33, 'labour_force_participation_rate__female', 2021, NULL, NULL, '53.5', '54.6', '2025-05-21 19:35:16', NULL),
(34, 'unemployment_rate_', 2021, NULL, NULL, '3.09', '3.11', '2025-05-21 19:35:16', NULL),
(35, 'unemployment_rate__male', 2021, NULL, NULL, '2.4', '2.3', '2025-05-21 19:35:16', NULL),
(36, 'unemployment_rate__female', 2021, NULL, NULL, '4.2', '4.4', '2025-05-21 19:35:16', NULL),
(37, 'youth_unemployment_rate_', 2021, NULL, NULL, '16.5', '17.7', '2025-05-21 19:35:16', NULL),
(38, 'youth_unemployment_rate__male', 2021, NULL, NULL, '11.9', '14.5', '2025-05-21 19:35:16', NULL),
(39, 'youth_unemployment_rate__female', 2021, NULL, NULL, '21.8', '21.2', '2025-05-21 19:35:16', NULL),
(40, 'number_of_new_jobseekers_registered', 2021, NULL, NULL, '2868', '2865', '2025-05-21 19:35:16', NULL),
(41, 'number_of_new_jobseekers_registered_male', 2021, NULL, NULL, '1562', '1433', '2025-05-21 19:35:16', NULL),
(42, 'number_of_new_jobseekers_registered_female', 2021, NULL, NULL, '1306', '1432', '2025-05-21 19:35:16', NULL),
(43, 'placement_through_overseas_employment_program', 2021, NULL, NULL, '294', '514', '2025-05-21 19:35:16', NULL),
(44, 'placement_through_overseas_employment_program_male', 2021, NULL, NULL, '97', '153', '2025-05-21 19:35:16', NULL),
(45, 'placement_through_overseas_employment_program_female', 2021, NULL, NULL, '197', '361', '2025-05-21 19:35:16', NULL),
(46, 'labour_force_participation_rate_', 2023, NULL, NULL, '65.1', '64.8', '2025-05-21 20:09:34', NULL),
(47, 'labour_force_participation_rate__male', 2023, NULL, NULL, '75.7', '74', '2025-05-21 20:09:34', NULL),
(48, 'labour_force_participation_rate__female', 2023, NULL, NULL, '53.5', '54.6', '2025-05-21 20:09:34', NULL),
(49, 'unemployment_rate_', 2023, NULL, NULL, '3.09', '3.11', '2025-05-21 20:09:34', NULL),
(50, 'unemployment_rate__male', 2023, NULL, NULL, '2.4', '2.3', '2025-05-21 20:09:34', NULL),
(51, 'unemployment_rate__female', 2023, NULL, NULL, '4.2', '4.4', '2025-05-21 20:09:34', NULL),
(52, 'youth_unemployment_rate_', 2023, NULL, NULL, '16.5', '17.7', '2025-05-21 20:09:34', NULL),
(53, 'youth_unemployment_rate__male', 2023, NULL, NULL, '11.9', '14.5', '2025-05-21 20:09:35', NULL),
(54, 'youth_unemployment_rate__female', 2023, NULL, NULL, '21.8', '21.2', '2025-05-21 20:09:35', NULL),
(55, 'number_of_new_jobseekers_registered', 2023, NULL, NULL, '2868', '2865', '2025-05-21 20:09:35', NULL),
(56, 'number_of_new_jobseekers_registered_male', 2023, NULL, NULL, '1562', '1433', '2025-05-21 20:09:35', NULL),
(57, 'number_of_new_jobseekers_registered_female', 2023, NULL, NULL, '1306', '1432', '2025-05-21 20:09:35', NULL),
(58, 'placement_through_overseas_employment_program', 2023, NULL, NULL, '294', '514', '2025-05-21 20:09:35', NULL),
(59, 'placement_through_overseas_employment_program_male', 2023, NULL, NULL, '97', '153', '2025-05-21 20:09:35', NULL),
(60, 'placement_through_overseas_employment_program_female', 2023, NULL, NULL, '197', '361', '2025-05-21 20:09:35', NULL),
(61, 'labour_force_participation_rate_', 2017, NULL, NULL, '65.1', '64.8', '2025-05-22 04:21:55', NULL),
(62, 'labour_force_participation_rate__male', 2017, NULL, NULL, '75.7', '74', '2025-05-22 04:21:55', NULL),
(63, 'labour_force_participation_rate__female', 2017, NULL, NULL, '53.5', '54.6', '2025-05-22 04:21:55', NULL),
(64, 'unemployment_rate_', 2017, NULL, NULL, '3.09', '3.11', '2025-05-22 04:21:55', NULL),
(65, 'unemployment_rate__male', 2017, NULL, NULL, '2.4', '2.3', '2025-05-22 04:21:55', NULL),
(66, 'unemployment_rate__female', 2017, NULL, NULL, '4.2', '4.4', '2025-05-22 04:21:55', NULL),
(67, 'youth_unemployment_rate_', 2017, NULL, NULL, '16.5', '17.7', '2025-05-22 04:21:55', NULL),
(68, 'youth_unemployment_rate__male', 2017, NULL, NULL, '11.9', '14.5', '2025-05-22 04:21:55', NULL),
(69, 'youth_unemployment_rate__female', 2017, NULL, NULL, '21.8', '21.2', '2025-05-22 04:21:55', NULL),
(70, 'number_of_new_jobseekers_registered', 2017, NULL, NULL, '2868', '2865', '2025-05-22 04:21:55', NULL),
(71, 'number_of_new_jobseekers_registered_male', 2017, NULL, NULL, '1562', '1433', '2025-05-22 04:21:55', NULL),
(72, 'number_of_new_jobseekers_registered_female', 2017, NULL, NULL, '1306', '1432', '2025-05-22 04:21:55', NULL),
(73, 'placement_through_overseas_employment_program', 2017, NULL, NULL, '294', '514', '2025-05-22 04:21:55', NULL),
(74, 'placement_through_overseas_employment_program_male', 2017, NULL, NULL, '97', '153', '2025-05-22 04:21:55', NULL),
(75, 'placement_through_overseas_employment_program_female', 2017, NULL, NULL, '197', '361', '2025-05-22 04:21:55', NULL),
(76, 'labour_force_participation_rate_', 2025, NULL, NULL, '65.1', '64.8', '2025-05-26 23:53:06', NULL),
(77, 'labour_force_participation_rate__male', 2025, NULL, NULL, '75.7', '74', '2025-05-26 23:53:06', NULL),
(78, 'labour_force_participation_rate__female', 2025, NULL, NULL, '53.5', '54.6', '2025-05-26 23:53:06', NULL),
(79, 'unemployment_rate_', 2025, NULL, NULL, '3.09', '3.11', '2025-05-26 23:53:06', NULL),
(80, 'unemployment_rate__male', 2025, NULL, NULL, '2.4', '2.3', '2025-05-26 23:53:06', NULL),
(81, 'unemployment_rate__female', 2025, NULL, NULL, '4.2', '4.4', '2025-05-26 23:53:06', NULL),
(82, 'youth_unemployment_rate_', 2025, NULL, NULL, '16.5', '17.7', '2025-05-26 23:53:06', NULL),
(83, 'youth_unemployment_rate__male', 2025, NULL, NULL, '11.9', '14.5', '2025-05-26 23:53:06', NULL),
(84, 'youth_unemployment_rate__female', 2025, NULL, NULL, '21.8', '21.2', '2025-05-26 23:53:06', NULL),
(85, 'number_of_new_jobseekers_registered', 2025, NULL, NULL, '2868', '2865', '2025-05-26 23:53:06', NULL),
(86, 'number_of_new_jobseekers_registered_male', 2025, NULL, NULL, '1562', '1433', '2025-05-26 23:53:06', NULL),
(87, 'number_of_new_jobseekers_registered_female', 2025, NULL, NULL, '1306', '1432', '2025-05-26 23:53:06', NULL),
(88, 'placement_through_overseas_employment_program', 2025, NULL, NULL, '294', '514', '2025-05-26 23:53:06', NULL),
(89, 'placement_through_overseas_employment_program_male', 2025, NULL, NULL, '97', '153', '2025-05-26 23:53:06', NULL),
(90, 'placement_through_overseas_employment_program_female', 2025, NULL, NULL, '197', '361', '2025-05-26 23:53:06', NULL),
(91, 'labour_force_participation_rate_', 2016, NULL, NULL, '65.1', '64.8', '2025-05-27 14:36:39', NULL),
(92, 'labour_force_participation_rate__male', 2016, NULL, NULL, '75.7', '74', '2025-05-27 14:36:39', NULL),
(93, 'labour_force_participation_rate__female', 2016, NULL, NULL, '53.5', '54.6', '2025-05-27 14:36:39', NULL),
(94, 'unemployment_rate_', 2016, NULL, NULL, '3.09', '3.11', '2025-05-27 14:36:39', NULL),
(95, 'unemployment_rate__male', 2016, NULL, NULL, '2.4', '2.3', '2025-05-27 14:36:39', NULL),
(96, 'unemployment_rate__female', 2016, NULL, NULL, '4.2', '4.4', '2025-05-27 14:36:39', NULL),
(97, 'youth_unemployment_rate_', 2016, NULL, NULL, '16.5', '17.7', '2025-05-27 14:36:39', NULL),
(98, 'youth_unemployment_rate__male', 2016, NULL, NULL, '11.9', '14.5', '2025-05-27 14:36:39', NULL),
(99, 'youth_unemployment_rate__female', 2016, NULL, NULL, '21.8', '21.2', '2025-05-27 14:36:39', NULL),
(100, 'number_of_new_jobseekers_registered', 2016, NULL, NULL, '2868', '2865', '2025-05-27 14:36:39', NULL),
(101, 'number_of_new_jobseekers_registered_male', 2016, NULL, NULL, '1562', '1433', '2025-05-27 14:36:39', NULL),
(102, 'number_of_new_jobseekers_registered_female', 2016, NULL, NULL, '1306', '1432', '2025-05-27 14:36:39', NULL),
(103, 'placement_through_overseas_employment_program', 2016, NULL, NULL, '294', '514', '2025-05-27 14:36:39', NULL),
(104, 'placement_through_overseas_employment_program_male', 2016, NULL, NULL, '97', '153', '2025-05-27 14:36:39', NULL),
(105, 'placement_through_overseas_employment_program_female', 2016, NULL, NULL, '197', '361', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `livestock_number`
--

CREATE TABLE `livestock_number` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `livestock_number`
--

INSERT INTO `livestock_number` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'livestock_extension_centre', 2020, NULL, NULL, '218', '218', '2025-05-21 15:40:07', 'livestock_number'),
(2, 'national_livestock_research_centre', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'livestock_number'),
(3, 'national_centre_for_animal_health', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'livestock_number'),
(4, 'dzongkhag_veterinary_hospital', 2020, NULL, NULL, '20', '20', '2025-05-21 15:40:07', 'livestock_number'),
(5, 'regional_livestock_development_centre', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'livestock_number'),
(6, 'national_veterinary_hospital', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'livestock_number'),
(7, 'regional_veterinary_hosiptal__epidemiology_centre', 2020, NULL, NULL, '3', '3', '2025-05-21 15:40:07', 'livestock_number'),
(8, 'statellite_veterinary_laboratory', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'livestock_number'),
(9, 'government_livestock_farms_for_breedingproduction', 2020, NULL, NULL, '17', '17', '2025-05-21 15:40:07', 'livestock_number'),
(10, 'vaccine_production_centre', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'livestock_number'),
(11, 'liquid_nitrogen_and_semen_processing_centre', 2020, NULL, NULL, '2', '2', '2025-05-21 15:40:07', 'livestock_number'),
(12, 'national_development_centre_for_animal_nutrition', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'livestock_number'),
(13, 'national_development_centre_for_animal_nutrition_regional_development_centre_for_animal_nutrition', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'livestock_number'),
(14, 'national_highland_development_centre', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'livestock_number'),
(15, 'bhutan_livestock_development_corporation_soe', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'livestock_number'),
(16, 'bhutan_livestock_development_corporation_soe_livestock_product_value_addition_centre', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'livestock_number'),
(17, 'national_biodiversity_centre', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'livestock_number'),
(18, 'national_biodiversity_centre_centre_for_nublang_conservation_and_development', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'livestock_number'),
(19, 'national_biodiversity_centre_centre_for_yubja_conservation_and_development', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'livestock_number'),
(20, 'livestock_extension_centre', 2024, NULL, NULL, '218', '218', '2025-05-21 19:31:45', NULL),
(21, 'national_livestock_research_centre', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(22, 'national_centre_for_animal_health', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(23, 'dzongkhag_veterinary_hospital', 2024, NULL, NULL, '20', '20', '2025-05-21 19:31:45', NULL),
(24, 'regional_livestock_development_centre', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(25, 'national_veterinary_hospital', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(26, 'regional_veterinary_hosiptal__epidemiology_centre', 2024, NULL, NULL, '3', '3', '2025-05-21 19:31:45', NULL),
(27, 'statellite_veterinary_laboratory', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(28, 'government_livestock_farms_for_breedingproduction', 2024, NULL, NULL, '17', '17', '2025-05-21 19:31:45', NULL),
(29, 'vaccine_production_centre', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(30, 'liquid_nitrogen_and_semen_processing_centre', 2024, NULL, NULL, '2', '2', '2025-05-21 19:31:45', NULL),
(31, 'national_development_centre_for_animal_nutrition', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(32, 'national_development_centre_for_animal_nutrition_regional_development_centre_for_animal_nutrition', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(33, 'national_highland_development_centre', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(34, 'bhutan_livestock_development_corporation_soe', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(35, 'bhutan_livestock_development_corporation_soe_livestock_product_value_addition_centre', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(36, 'national_biodiversity_centre', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(37, 'national_biodiversity_centre_centre_for_nublang_conservation_and_development', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(38, 'national_biodiversity_centre_centre_for_yubja_conservation_and_development', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(39, 'livestock_extension_centre', 2021, NULL, NULL, '218', '218', '2025-05-21 19:35:16', NULL),
(40, 'national_livestock_research_centre', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(41, 'national_centre_for_animal_health', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(42, 'dzongkhag_veterinary_hospital', 2021, NULL, NULL, '20', '20', '2025-05-21 19:35:16', NULL),
(43, 'regional_livestock_development_centre', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(44, 'national_veterinary_hospital', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(45, 'regional_veterinary_hosiptal__epidemiology_centre', 2021, NULL, NULL, '3', '3', '2025-05-21 19:35:16', NULL),
(46, 'statellite_veterinary_laboratory', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(47, 'government_livestock_farms_for_breedingproduction', 2021, NULL, NULL, '17', '17', '2025-05-21 19:35:16', NULL),
(48, 'vaccine_production_centre', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(49, 'liquid_nitrogen_and_semen_processing_centre', 2021, NULL, NULL, '2', '2', '2025-05-21 19:35:16', NULL),
(50, 'national_development_centre_for_animal_nutrition', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(51, 'national_development_centre_for_animal_nutrition_regional_development_centre_for_animal_nutrition', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(52, 'national_highland_development_centre', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(53, 'bhutan_livestock_development_corporation_soe', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(54, 'bhutan_livestock_development_corporation_soe_livestock_product_value_addition_centre', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(55, 'national_biodiversity_centre', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(56, 'national_biodiversity_centre_centre_for_nublang_conservation_and_development', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(57, 'national_biodiversity_centre_centre_for_yubja_conservation_and_development', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(58, 'livestock_extension_centre', 2023, NULL, NULL, '218', '218', '2025-05-21 20:09:35', NULL),
(59, 'national_livestock_research_centre', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(60, 'national_centre_for_animal_health', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(61, 'dzongkhag_veterinary_hospital', 2023, NULL, NULL, '20', '20', '2025-05-21 20:09:35', NULL),
(62, 'regional_livestock_development_centre', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(63, 'national_veterinary_hospital', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(64, 'regional_veterinary_hosiptal__epidemiology_centre', 2023, NULL, NULL, '3', '3', '2025-05-21 20:09:35', NULL),
(65, 'statellite_veterinary_laboratory', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(66, 'government_livestock_farms_for_breedingproduction', 2023, NULL, NULL, '17', '17', '2025-05-21 20:09:35', NULL),
(67, 'vaccine_production_centre', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(68, 'liquid_nitrogen_and_semen_processing_centre', 2023, NULL, NULL, '2', '2', '2025-05-21 20:09:35', NULL),
(69, 'national_development_centre_for_animal_nutrition', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(70, 'national_development_centre_for_animal_nutrition_regional_development_centre_for_animal_nutrition', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(71, 'national_highland_development_centre', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(72, 'bhutan_livestock_development_corporation_soe', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(73, 'bhutan_livestock_development_corporation_soe_livestock_product_value_addition_centre', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(74, 'national_biodiversity_centre', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(75, 'national_biodiversity_centre_centre_for_nublang_conservation_and_development', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(76, 'national_biodiversity_centre_centre_for_yubja_conservation_and_development', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(77, 'livestock_extension_centre', 2017, NULL, NULL, '218', '218', '2025-05-22 04:21:56', NULL),
(78, 'national_livestock_research_centre', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(79, 'national_centre_for_animal_health', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(80, 'dzongkhag_veterinary_hospital', 2017, NULL, NULL, '20', '20', '2025-05-22 04:21:56', NULL),
(81, 'regional_livestock_development_centre', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(82, 'national_veterinary_hospital', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(83, 'regional_veterinary_hosiptal__epidemiology_centre', 2017, NULL, NULL, '3', '3', '2025-05-22 04:21:56', NULL),
(84, 'statellite_veterinary_laboratory', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(85, 'government_livestock_farms_for_breedingproduction', 2017, NULL, NULL, '17', '17', '2025-05-22 04:21:56', NULL),
(86, 'vaccine_production_centre', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(87, 'liquid_nitrogen_and_semen_processing_centre', 2017, NULL, NULL, '2', '2', '2025-05-22 04:21:56', NULL),
(88, 'national_development_centre_for_animal_nutrition', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(89, 'national_development_centre_for_animal_nutrition_regional_development_centre_for_animal_nutrition', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(90, 'national_highland_development_centre', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(91, 'bhutan_livestock_development_corporation_soe', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(92, 'bhutan_livestock_development_corporation_soe_livestock_product_value_addition_centre', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(93, 'national_biodiversity_centre', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(94, 'national_biodiversity_centre_centre_for_nublang_conservation_and_development', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(95, 'national_biodiversity_centre_centre_for_yubja_conservation_and_development', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(96, 'livestock_extension_centre', 2025, NULL, NULL, '218', '218', '2025-05-26 23:53:06', NULL),
(97, 'national_livestock_research_centre', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(98, 'national_centre_for_animal_health', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(99, 'dzongkhag_veterinary_hospital', 2025, NULL, NULL, '20', '20', '2025-05-26 23:53:06', NULL),
(100, 'regional_livestock_development_centre', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(101, 'national_veterinary_hospital', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(102, 'regional_veterinary_hosiptal__epidemiology_centre', 2025, NULL, NULL, '3', '3', '2025-05-26 23:53:06', NULL),
(103, 'statellite_veterinary_laboratory', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(104, 'government_livestock_farms_for_breedingproduction', 2025, NULL, NULL, '17', '17', '2025-05-26 23:53:06', NULL),
(105, 'vaccine_production_centre', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(106, 'liquid_nitrogen_and_semen_processing_centre', 2025, NULL, NULL, '2', '2', '2025-05-26 23:53:06', NULL),
(107, 'national_development_centre_for_animal_nutrition', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(108, 'national_development_centre_for_animal_nutrition_regional_development_centre_for_animal_nutrition', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(109, 'national_highland_development_centre', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(110, 'bhutan_livestock_development_corporation_soe', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(111, 'bhutan_livestock_development_corporation_soe_livestock_product_value_addition_centre', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(112, 'national_biodiversity_centre', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(113, 'national_biodiversity_centre_centre_for_nublang_conservation_and_development', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(114, 'national_biodiversity_centre_centre_for_yubja_conservation_and_development', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(115, 'livestock_extension_centre', 2016, NULL, NULL, '218', '218', '2025-05-27 14:36:39', NULL),
(116, 'national_livestock_research_centre', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(117, 'national_centre_for_animal_health', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(118, 'dzongkhag_veterinary_hospital', 2016, NULL, NULL, '20', '20', '2025-05-27 14:36:39', NULL),
(119, 'regional_livestock_development_centre', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(120, 'national_veterinary_hospital', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(121, 'regional_veterinary_hosiptal__epidemiology_centre', 2016, NULL, NULL, '3', '3', '2025-05-27 14:36:39', NULL),
(122, 'statellite_veterinary_laboratory', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(123, 'government_livestock_farms_for_breedingproduction', 2016, NULL, NULL, '17', '17', '2025-05-27 14:36:39', NULL),
(124, 'vaccine_production_centre', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(125, 'liquid_nitrogen_and_semen_processing_centre', 2016, NULL, NULL, '2', '2', '2025-05-27 14:36:39', NULL),
(126, 'national_development_centre_for_animal_nutrition', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(127, 'national_development_centre_for_animal_nutrition_regional_development_centre_for_animal_nutrition', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(128, 'national_highland_development_centre', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(129, 'bhutan_livestock_development_corporation_soe', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(130, 'bhutan_livestock_development_corporation_soe_livestock_product_value_addition_centre', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(131, 'national_biodiversity_centre', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(132, 'national_biodiversity_centre_centre_for_nublang_conservation_and_development', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(133, 'national_biodiversity_centre_centre_for_yubja_conservation_and_development', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `national_poverty_rate`
--

CREATE TABLE `national_poverty_rate` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `national_poverty_rate`
--

INSERT INTO `national_poverty_rate` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'bhutan_poverty_rate_1', 2020, NULL, NULL, '12.4', '12.4', '2025-05-21 15:40:07', 'national_poverty_rate_'),
(2, 'bhutan_poverty_rate_1_urban', 2020, NULL, NULL, '4.2', '4.2', '2025-05-21 15:40:07', 'national_poverty_rate_'),
(3, 'bhutan_poverty_rate_1_rural', 2020, NULL, NULL, '17.5', '17.5', '2025-05-21 15:40:07', 'national_poverty_rate_'),
(4, 'bhutan_poverty_rate_1', 2024, NULL, NULL, '12.4', '12.4', '2025-05-21 19:31:45', NULL),
(5, 'bhutan_poverty_rate_1_urban', 2024, NULL, NULL, '4.2', '4.2', '2025-05-21 19:31:45', NULL),
(6, 'bhutan_poverty_rate_1_rural', 2024, NULL, NULL, '17.5', '17.5', '2025-05-21 19:31:45', NULL),
(7, 'bhutan_poverty_rate_1', 2021, NULL, NULL, '12.4', '12.4', '2025-05-21 19:35:16', NULL),
(8, 'bhutan_poverty_rate_1_urban', 2021, NULL, NULL, '4.2', '4.2', '2025-05-21 19:35:16', NULL),
(9, 'bhutan_poverty_rate_1_rural', 2021, NULL, NULL, '17.5', '17.5', '2025-05-21 19:35:16', NULL),
(10, 'bhutan_poverty_rate_1', 2023, NULL, NULL, '12.4', '12.4', '2025-05-21 20:09:35', NULL),
(11, 'bhutan_poverty_rate_1_urban', 2023, NULL, NULL, '4.2', '4.2', '2025-05-21 20:09:35', NULL),
(12, 'bhutan_poverty_rate_1_rural', 2023, NULL, NULL, '17.5', '17.5', '2025-05-21 20:09:35', NULL),
(13, 'bhutan_poverty_rate_1', 2017, NULL, NULL, '12.4', '12.4', '2025-05-22 04:21:55', NULL),
(14, 'bhutan_poverty_rate_1_urban', 2017, NULL, NULL, '4.2', '4.2', '2025-05-22 04:21:55', NULL),
(15, 'bhutan_poverty_rate_1_rural', 2017, NULL, NULL, '17.5', '17.5', '2025-05-22 04:21:55', NULL),
(16, 'bhutan_poverty_rate_1', 2025, NULL, NULL, '12.4', '12.4', '2025-05-26 23:53:06', NULL),
(17, 'bhutan_poverty_rate_1_urban', 2025, NULL, NULL, '4.2', '4.2', '2025-05-26 23:53:06', NULL),
(18, 'bhutan_poverty_rate_1_rural', 2025, NULL, NULL, '17.5', '17.5', '2025-05-26 23:53:06', NULL),
(19, 'bhutan_poverty_rate_1', 2016, NULL, NULL, '12.4', '12.4', '2025-05-27 14:36:39', NULL),
(20, 'bhutan_poverty_rate_1_urban', 2016, NULL, NULL, '4.2', '4.2', '2025-05-27 14:36:39', NULL),
(21, 'bhutan_poverty_rate_1_rural', 2016, NULL, NULL, '17.5', '17.5', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `notification` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `notification`, `date`, `time`) VALUES
(5, 'Notification: Data for year 2017 uploaded successfully for 0 indicator(s).', '2025-05-20', '22:28:40'),
(6, 'Notification: Data for year 2017 uploaded successfully for 0 indicator(s).', '2025-05-20', '22:31:07'),
(7, 'Notification: Data for year 2017 uploaded successfully for 0 indicator(s).', '2025-05-20', '22:32:09'),
(8, 'Notification: Data for year 2000 uploaded successfully for 0 indicator(s).', '2025-05-20', '23:01:30'),
(9, 'Notification: Data for year 2000 uploaded successfully for 0 indicator(s).', '2025-05-20', '23:01:44'),
(10, 'Notification: Data for year 2020 uploaded successfully for 0 indicator(s).', '2025-05-21', '21:27:40'),
(11, 'Notification: Data for year 2020 uploaded successfully for 0 indicator(s).', '2025-05-21', '21:40:07'),
(12, 'New data for year 2024 uploaded successfully with 255 indicator(s).', '2025-05-21', '01:31:45'),
(13, 'New data for year 2021 uploaded successfully with 255 indicator(s).', '2025-05-21', '01:35:16'),
(14, 'Data for year 2024 updated for 255 indicator(s).', '2025-05-21', '02:08:17'),
(15, 'New data for year 2023 uploaded successfully with 255 indicator(s).', '2025-05-21', '02:09:35'),
(16, 'Data for year 2023 updated for 255 indicator(s).', '2025-05-21', '02:10:34'),
(17, 'Data for year 2023 updated for 255 indicator(s).', '2025-05-21', '02:11:40'),
(18, 'Data for year 2023 updated for 255 indicator(s).', '2025-05-21', '02:12:15'),
(19, 'Data for year 2023 updated for 255 indicator(s).', '2025-05-21', '02:12:45'),
(20, 'New data for year 2017 uploaded successfully with 255 indicator(s).', '2025-05-22', '10:21:56'),
(21, 'New data for year 2025 uploaded successfully with 255 indicator(s).', '2025-05-26', '05:53:06'),
(22, 'Data for year 2025 updated for 255 indicator(s).', '2025-05-27', '06:30:00'),
(23, 'Data for year 2023 updated for 255 indicator(s).', '2025-05-27', '20:36:29'),
(24, 'New data for year 2016 uploaded successfully with 255 indicator(s).', '2025-05-27', '20:36:39');

-- --------------------------------------------------------

--
-- Table structure for table `number_of_educational_institutes_schools_institutes_and_centres`
--

CREATE TABLE `number_of_educational_institutes_schools_institutes_and_centres` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `number_of_educational_institutes_schools_institutes_and_centres`
--

INSERT INTO `number_of_educational_institutes_schools_institutes_and_centres` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'governmnet_schools', 2020, NULL, NULL, '491', '491', '2025-05-21 15:40:07', 'number_of_educational_institutes_schools_institutes_and_centres'),
(2, 'governmnet_schools_higher_secondary_schools', 2020, NULL, NULL, '78', '78', '2025-05-21 15:40:07', 'number_of_educational_institutes_schools_institutes_and_centres'),
(3, 'governmnet_schools_middle_secondary_schools', 2020, NULL, NULL, '63', '63', '2025-05-21 15:40:07', 'number_of_educational_institutes_schools_institutes_and_centres'),
(4, 'governmnet_schools_lower_secondary_schools', 2020, NULL, NULL, '32', '32', '2025-05-21 15:40:07', 'number_of_educational_institutes_schools_institutes_and_centres'),
(5, 'governmnet_schools_primary_schools', 2020, NULL, NULL, '318', '318', '2025-05-21 15:40:07', 'number_of_educational_institutes_schools_institutes_and_centres'),
(6, 'governmnet_schools_extended_classrooms', 2020, NULL, NULL, '47', '47', '2025-05-21 15:40:07', 'number_of_educational_institutes_schools_institutes_and_centres'),
(7, 'governmnet_schools_special_institutes', 2020, NULL, NULL, '2', '2', '2025-05-21 15:40:07', 'number_of_educational_institutes_schools_institutes_and_centres'),
(8, 'private_schools', 2020, NULL, NULL, '26', '26', '2025-05-21 15:40:07', 'number_of_educational_institutes_schools_institutes_and_centres'),
(9, 'private_schools_higher_secondary_schools', 2020, NULL, NULL, '10', '10', '2025-05-21 15:40:07', 'number_of_educational_institutes_schools_institutes_and_centres'),
(10, 'private_schools_middle_secondary_schools', 2020, NULL, NULL, '2', '2', '2025-05-21 15:40:07', 'number_of_educational_institutes_schools_institutes_and_centres'),
(11, 'private_schools_lower_secondary_schools', 2020, NULL, NULL, '1', '1', '2025-05-21 15:40:07', 'number_of_educational_institutes_schools_institutes_and_centres'),
(12, 'private_schools_primary_schools', 2020, NULL, NULL, '13', '13', '2025-05-21 15:40:07', 'number_of_educational_institutes_schools_institutes_and_centres'),
(13, 'eccd_centres', 2020, NULL, NULL, '574', '574', '2025-05-21 15:40:07', 'number_of_educational_institutes_schools_institutes_and_centres'),
(14, 'schools_with_sen_program', 2020, NULL, NULL, '44', '44', '2025-05-21 15:40:07', 'number_of_educational_institutes_schools_institutes_and_centres'),
(15, 'tertiary_institutes', 2020, NULL, NULL, '17', '17', '2025-05-21 15:40:07', 'number_of_educational_institutes_schools_institutes_and_centres'),
(16, 'other_institutes2', 2020, NULL, NULL, '518', '518', '2025-05-21 15:40:07', 'number_of_educational_institutes_schools_institutes_and_centres'),
(17, 'governmnet_schools', 2024, NULL, NULL, '491', '491', '2025-05-21 19:31:45', NULL),
(18, 'governmnet_schools_higher_secondary_schools', 2024, NULL, NULL, '78', '78', '2025-05-21 19:31:45', NULL),
(19, 'governmnet_schools_middle_secondary_schools', 2024, NULL, NULL, '63', '63', '2025-05-21 19:31:45', NULL),
(20, 'governmnet_schools_lower_secondary_schools', 2024, NULL, NULL, '32', '32', '2025-05-21 19:31:45', NULL),
(21, 'governmnet_schools_primary_schools', 2024, NULL, NULL, '318', '318', '2025-05-21 19:31:45', NULL),
(22, 'governmnet_schools_extended_classrooms', 2024, NULL, NULL, '47', '47', '2025-05-21 19:31:45', NULL),
(23, 'governmnet_schools_special_institutes', 2024, NULL, NULL, '2', '2', '2025-05-21 19:31:45', NULL),
(24, 'private_schools', 2024, NULL, NULL, '26', '26', '2025-05-21 19:31:45', NULL),
(25, 'private_schools_higher_secondary_schools', 2024, NULL, NULL, '10', '10', '2025-05-21 19:31:45', NULL),
(26, 'private_schools_middle_secondary_schools', 2024, NULL, NULL, '2', '2', '2025-05-21 19:31:45', NULL),
(27, 'private_schools_lower_secondary_schools', 2024, NULL, NULL, '1', '1', '2025-05-21 19:31:45', NULL),
(28, 'private_schools_primary_schools', 2024, NULL, NULL, '13', '13', '2025-05-21 19:31:45', NULL),
(29, 'eccd_centres', 2024, NULL, NULL, '574', '574', '2025-05-21 19:31:45', NULL),
(30, 'schools_with_sen_program', 2024, NULL, NULL, '44', '44', '2025-05-21 19:31:45', NULL),
(31, 'tertiary_institutes', 2024, NULL, NULL, '17', '17', '2025-05-21 19:31:45', NULL),
(32, 'other_institutes2', 2024, NULL, NULL, '518', '518', '2025-05-21 19:31:45', NULL),
(33, 'governmnet_schools', 2021, NULL, NULL, '491', '491', '2025-05-21 19:35:16', NULL),
(34, 'governmnet_schools_higher_secondary_schools', 2021, NULL, NULL, '78', '78', '2025-05-21 19:35:16', NULL),
(35, 'governmnet_schools_middle_secondary_schools', 2021, NULL, NULL, '63', '63', '2025-05-21 19:35:16', NULL),
(36, 'governmnet_schools_lower_secondary_schools', 2021, NULL, NULL, '32', '32', '2025-05-21 19:35:16', NULL),
(37, 'governmnet_schools_primary_schools', 2021, NULL, NULL, '318', '318', '2025-05-21 19:35:16', NULL),
(38, 'governmnet_schools_extended_classrooms', 2021, NULL, NULL, '47', '47', '2025-05-21 19:35:16', NULL),
(39, 'governmnet_schools_special_institutes', 2021, NULL, NULL, '2', '2', '2025-05-21 19:35:16', NULL),
(40, 'private_schools', 2021, NULL, NULL, '26', '26', '2025-05-21 19:35:16', NULL),
(41, 'private_schools_higher_secondary_schools', 2021, NULL, NULL, '10', '10', '2025-05-21 19:35:16', NULL),
(42, 'private_schools_middle_secondary_schools', 2021, NULL, NULL, '2', '2', '2025-05-21 19:35:16', NULL),
(43, 'private_schools_lower_secondary_schools', 2021, NULL, NULL, '1', '1', '2025-05-21 19:35:16', NULL),
(44, 'private_schools_primary_schools', 2021, NULL, NULL, '13', '13', '2025-05-21 19:35:16', NULL),
(45, 'eccd_centres', 2021, NULL, NULL, '574', '574', '2025-05-21 19:35:16', NULL),
(46, 'schools_with_sen_program', 2021, NULL, NULL, '44', '44', '2025-05-21 19:35:16', NULL),
(47, 'tertiary_institutes', 2021, NULL, NULL, '17', '17', '2025-05-21 19:35:16', NULL),
(48, 'other_institutes2', 2021, NULL, NULL, '518', '518', '2025-05-21 19:35:16', NULL),
(49, 'governmnet_schools', 2023, NULL, NULL, '491', '491', '2025-05-21 20:09:35', NULL),
(50, 'governmnet_schools_higher_secondary_schools', 2023, NULL, NULL, '78', '78', '2025-05-21 20:09:35', NULL),
(51, 'governmnet_schools_middle_secondary_schools', 2023, NULL, NULL, '63', '63', '2025-05-21 20:09:35', NULL),
(52, 'governmnet_schools_lower_secondary_schools', 2023, NULL, NULL, '32', '32', '2025-05-21 20:09:35', NULL),
(53, 'governmnet_schools_primary_schools', 2023, NULL, NULL, '318', '318', '2025-05-21 20:09:35', NULL),
(54, 'governmnet_schools_extended_classrooms', 2023, NULL, NULL, '47', '47', '2025-05-21 20:09:35', NULL),
(55, 'governmnet_schools_special_institutes', 2023, NULL, NULL, '2', '2', '2025-05-21 20:09:35', NULL),
(56, 'private_schools', 2023, NULL, NULL, '26', '26', '2025-05-21 20:09:35', NULL),
(57, 'private_schools_higher_secondary_schools', 2023, NULL, NULL, '10', '10', '2025-05-21 20:09:35', NULL),
(58, 'private_schools_middle_secondary_schools', 2023, NULL, NULL, '2', '2', '2025-05-21 20:09:35', NULL),
(59, 'private_schools_lower_secondary_schools', 2023, NULL, NULL, '1', '1', '2025-05-21 20:09:35', NULL),
(60, 'private_schools_primary_schools', 2023, NULL, NULL, '13', '13', '2025-05-21 20:09:35', NULL),
(61, 'eccd_centres', 2023, NULL, NULL, '574', '574', '2025-05-21 20:09:35', NULL),
(62, 'schools_with_sen_program', 2023, NULL, NULL, '44', '44', '2025-05-21 20:09:35', NULL),
(63, 'tertiary_institutes', 2023, NULL, NULL, '17', '17', '2025-05-21 20:09:35', NULL),
(64, 'other_institutes2', 2023, NULL, NULL, '518', '518', '2025-05-21 20:09:35', NULL),
(65, 'governmnet_schools', 2017, NULL, NULL, '491', '491', '2025-05-22 04:21:56', NULL),
(66, 'governmnet_schools_higher_secondary_schools', 2017, NULL, NULL, '78', '78', '2025-05-22 04:21:56', NULL),
(67, 'governmnet_schools_middle_secondary_schools', 2017, NULL, NULL, '63', '63', '2025-05-22 04:21:56', NULL),
(68, 'governmnet_schools_lower_secondary_schools', 2017, NULL, NULL, '32', '32', '2025-05-22 04:21:56', NULL),
(69, 'governmnet_schools_primary_schools', 2017, NULL, NULL, '318', '318', '2025-05-22 04:21:56', NULL),
(70, 'governmnet_schools_extended_classrooms', 2017, NULL, NULL, '47', '47', '2025-05-22 04:21:56', NULL),
(71, 'governmnet_schools_special_institutes', 2017, NULL, NULL, '2', '2', '2025-05-22 04:21:56', NULL),
(72, 'private_schools', 2017, NULL, NULL, '26', '26', '2025-05-22 04:21:56', NULL),
(73, 'private_schools_higher_secondary_schools', 2017, NULL, NULL, '10', '10', '2025-05-22 04:21:56', NULL),
(74, 'private_schools_middle_secondary_schools', 2017, NULL, NULL, '2', '2', '2025-05-22 04:21:56', NULL),
(75, 'private_schools_lower_secondary_schools', 2017, NULL, NULL, '1', '1', '2025-05-22 04:21:56', NULL),
(76, 'private_schools_primary_schools', 2017, NULL, NULL, '13', '13', '2025-05-22 04:21:56', NULL),
(77, 'eccd_centres', 2017, NULL, NULL, '574', '574', '2025-05-22 04:21:56', NULL),
(78, 'schools_with_sen_program', 2017, NULL, NULL, '44', '44', '2025-05-22 04:21:56', NULL),
(79, 'tertiary_institutes', 2017, NULL, NULL, '17', '17', '2025-05-22 04:21:56', NULL),
(80, 'other_institutes2', 2017, NULL, NULL, '518', '518', '2025-05-22 04:21:56', NULL),
(81, 'governmnet_schools', 2025, NULL, NULL, '491', '491', '2025-05-26 23:53:06', NULL),
(82, 'governmnet_schools_higher_secondary_schools', 2025, NULL, NULL, '78', '78', '2025-05-26 23:53:06', NULL),
(83, 'governmnet_schools_middle_secondary_schools', 2025, NULL, NULL, '63', '63', '2025-05-26 23:53:06', NULL),
(84, 'governmnet_schools_lower_secondary_schools', 2025, NULL, NULL, '32', '32', '2025-05-26 23:53:06', NULL),
(85, 'governmnet_schools_primary_schools', 2025, NULL, NULL, '318', '318', '2025-05-26 23:53:06', NULL),
(86, 'governmnet_schools_extended_classrooms', 2025, NULL, NULL, '47', '47', '2025-05-26 23:53:06', NULL),
(87, 'governmnet_schools_special_institutes', 2025, NULL, NULL, '2', '2', '2025-05-26 23:53:06', NULL),
(88, 'private_schools', 2025, NULL, NULL, '26', '26', '2025-05-26 23:53:06', NULL),
(89, 'private_schools_higher_secondary_schools', 2025, NULL, NULL, '10', '10', '2025-05-26 23:53:06', NULL),
(90, 'private_schools_middle_secondary_schools', 2025, NULL, NULL, '2', '2', '2025-05-26 23:53:06', NULL),
(91, 'private_schools_lower_secondary_schools', 2025, NULL, NULL, '1', '1', '2025-05-26 23:53:06', NULL),
(92, 'private_schools_primary_schools', 2025, NULL, NULL, '13', '13', '2025-05-26 23:53:06', NULL),
(93, 'eccd_centres', 2025, NULL, NULL, '574', '574', '2025-05-26 23:53:06', NULL),
(94, 'schools_with_sen_program', 2025, NULL, NULL, '44', '44', '2025-05-26 23:53:06', NULL),
(95, 'tertiary_institutes', 2025, NULL, NULL, '17', '17', '2025-05-26 23:53:06', NULL),
(96, 'other_institutes2', 2025, NULL, NULL, '518', '518', '2025-05-26 23:53:06', NULL),
(97, 'governmnet_schools', 2016, NULL, NULL, '491', '491', '2025-05-27 14:36:39', NULL),
(98, 'governmnet_schools_higher_secondary_schools', 2016, NULL, NULL, '78', '78', '2025-05-27 14:36:39', NULL),
(99, 'governmnet_schools_middle_secondary_schools', 2016, NULL, NULL, '63', '63', '2025-05-27 14:36:39', NULL),
(100, 'governmnet_schools_lower_secondary_schools', 2016, NULL, NULL, '32', '32', '2025-05-27 14:36:39', NULL),
(101, 'governmnet_schools_primary_schools', 2016, NULL, NULL, '318', '318', '2025-05-27 14:36:39', NULL),
(102, 'governmnet_schools_extended_classrooms', 2016, NULL, NULL, '47', '47', '2025-05-27 14:36:39', NULL),
(103, 'governmnet_schools_special_institutes', 2016, NULL, NULL, '2', '2', '2025-05-27 14:36:39', NULL),
(104, 'private_schools', 2016, NULL, NULL, '26', '26', '2025-05-27 14:36:39', NULL),
(105, 'private_schools_higher_secondary_schools', 2016, NULL, NULL, '10', '10', '2025-05-27 14:36:39', NULL),
(106, 'private_schools_middle_secondary_schools', 2016, NULL, NULL, '2', '2', '2025-05-27 14:36:39', NULL),
(107, 'private_schools_lower_secondary_schools', 2016, NULL, NULL, '1', '1', '2025-05-27 14:36:39', NULL),
(108, 'private_schools_primary_schools', 2016, NULL, NULL, '13', '13', '2025-05-27 14:36:39', NULL),
(109, 'eccd_centres', 2016, NULL, NULL, '574', '574', '2025-05-27 14:36:39', NULL),
(110, 'schools_with_sen_program', 2016, NULL, NULL, '44', '44', '2025-05-27 14:36:39', NULL),
(111, 'tertiary_institutes', 2016, NULL, NULL, '17', '17', '2025-05-27 14:36:39', NULL),
(112, 'other_institutes2', 2016, NULL, NULL, '518', '518', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `population`
--

CREATE TABLE `population` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `population`
--

INSERT INTO `population` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(2, 'population1_male', 2020, NULL, NULL, '404411', '404411', '2025-05-21 15:40:07', 'population'),
(3, 'population1_female', 2020, NULL, NULL, '372813', '372813', '2025-05-21 15:40:07', 'population'),
(4, 'population_density_per_sq_km2', 2020, NULL, NULL, '19', '19', '2025-05-21 15:40:07', 'population'),
(5, 'population_growth_rate_2', 2020, NULL, NULL, '1.3', '1.3', '2025-05-21 15:40:07', 'population'),
(6, 'average_household_size3', 2020, NULL, NULL, '4', '4', '2025-05-21 15:40:07', 'population'),
(7, 'population1', 2024, NULL, NULL, '777224', '777224', '2025-05-21 19:31:45', NULL),
(8, 'population1_male', 2024, NULL, NULL, '404411', '555555', '2025-05-21 19:31:45', NULL),
(9, 'population1_female', 2024, NULL, NULL, '372813', '372813', '2025-05-21 19:31:45', NULL),
(10, 'population_density_per_sq_km2', 2024, NULL, NULL, '19', '19', '2025-05-21 19:31:45', NULL),
(11, 'population_growth_rate_2', 2024, NULL, NULL, '1.3', '1.3', '2025-05-21 19:31:45', NULL),
(12, 'average_household_size3', 2024, NULL, NULL, '4', '4', '2025-05-21 19:31:45', NULL),
(13, 'population1', 2021, NULL, NULL, '777224', '777224', '2025-05-21 19:35:16', NULL),
(14, 'population1_male', 2021, NULL, NULL, '404411', '404411', '2025-05-21 19:35:16', NULL),
(15, 'population1_female', 2021, NULL, NULL, '372813', '372813', '2025-05-21 19:35:16', NULL),
(16, 'population_density_per_sq_km2', 2021, NULL, NULL, '19', '19', '2025-05-21 19:35:16', NULL),
(17, 'population_growth_rate_2', 2021, NULL, NULL, '1.3', '1.3', '2025-05-21 19:35:16', NULL),
(18, 'average_household_size3', 2021, NULL, NULL, '4', '4', '2025-05-21 19:35:16', NULL),
(19, 'population1', 2023, NULL, NULL, '777224', '777224', '2025-05-21 20:09:34', NULL),
(20, 'population1_male', 2023, NULL, NULL, '404411', '555555', '2025-05-21 20:09:34', NULL),
(21, 'population1_female', 2023, NULL, NULL, '372813', '372813', '2025-05-21 20:09:34', NULL),
(22, 'population_density_per_sq_km2', 2023, NULL, NULL, '19', '19', '2025-05-21 20:09:34', NULL),
(23, 'population_growth_rate_2', 2023, NULL, NULL, '1.3', '1.3', '2025-05-21 20:09:34', NULL),
(24, 'average_household_size3', 2023, NULL, NULL, '4', '4', '2025-05-21 20:09:34', NULL),
(25, 'population1', 2017, NULL, NULL, '777224', '777224', '2025-05-22 04:21:55', NULL),
(26, 'population1_male', 2017, NULL, NULL, '404411', '555555', '2025-05-22 04:21:55', NULL),
(27, 'population1_female', 2017, NULL, NULL, '372813', '372813', '2025-05-22 04:21:55', NULL),
(28, 'population_density_per_sq_km2', 2017, NULL, NULL, '19', '19', '2025-05-22 04:21:55', NULL),
(29, 'population_growth_rate_2', 2017, NULL, NULL, '1.3', '1.3', '2025-05-22 04:21:55', NULL),
(30, 'average_household_size3', 2017, NULL, NULL, '4', '4', '2025-05-22 04:21:55', NULL),
(31, 'population1', 2025, NULL, NULL, '777224', '777224', '2025-05-26 23:53:06', NULL),
(32, 'population1_male', 2025, NULL, NULL, '404411', '555555', '2025-05-26 23:53:06', NULL),
(33, 'population1_female', 2025, NULL, NULL, '372813', '372813', '2025-05-26 23:53:06', NULL),
(34, 'population_density_per_sq_km2', 2025, NULL, NULL, '19', '19', '2025-05-26 23:53:06', NULL),
(35, 'population_growth_rate_2', 2025, NULL, NULL, '1.3', '1.3', '2025-05-26 23:53:06', NULL),
(36, 'average_household_size3', 2025, NULL, NULL, '4', '4', '2025-05-26 23:53:06', NULL),
(37, 'population1', 2016, NULL, NULL, '777224', '777224', '2025-05-27 14:36:38', NULL),
(38, 'population1_male', 2016, NULL, NULL, '404411', '555555', '2025-05-27 14:36:38', NULL),
(39, 'population1_female', 2016, NULL, NULL, '372813', '372813', '2025-05-27 14:36:39', NULL),
(40, 'population_density_per_sq_km2', 2016, NULL, NULL, '19', '19', '2025-05-27 14:36:39', NULL),
(41, 'population_growth_rate_2', 2016, NULL, NULL, '1.3', '1.3', '2025-05-27 14:36:39', NULL),
(42, 'average_household_size3', 2016, NULL, NULL, '4', '4', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `power_units_in_million`
--

CREATE TABLE `power_units_in_million` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `power_units_in_million`
--

INSERT INTO `power_units_in_million` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'total_electricty_generation3', 2020, NULL, NULL, '5613.55', '2779.1039729999998', '2025-05-21 15:40:07', 'power_units_in_million'),
(2, 'total_electricty_generation3_total_scheduled_electricity_export', 2020, NULL, NULL, '3639.6100000000006', '1051.346065', '2025-05-21 15:40:07', 'power_units_in_million'),
(3, 'schedule_export_of_electricity_to_india_', 2020, NULL, NULL, '64.83615537405029', '37.83039696298545', '2025-05-21 15:40:07', 'power_units_in_million'),
(4, 'hydro_electricity_generated_by_chhukha', 2020, NULL, NULL, '773.73', '474.51800000000003', '2025-05-21 15:40:07', 'power_units_in_million'),
(5, 'schedule_electricity_export_from_chhukha', 2020, NULL, NULL, '774.85', '182.8118', '2025-05-21 15:40:07', 'power_units_in_million'),
(6, 'hydro_electricity_generated_by_kurichhu', 2020, NULL, NULL, '143.69', '91.347731', '2025-05-21 15:40:07', 'power_units_in_million'),
(7, 'schedule_electricity_export_from_kurichhu', 2020, NULL, NULL, '0', '0', '2025-05-21 15:40:07', 'power_units_in_million'),
(8, 'hydro_electricity_generated_by_tala', 2020, NULL, NULL, '2409.7', '1096.74953', '2025-05-21 15:40:07', 'power_units_in_million'),
(9, 'schedule_electricity_export_from_tala', 2020, NULL, NULL, '677.97', '101.43549', '2025-05-21 15:40:07', 'power_units_in_million'),
(10, 'hydro_electricity_generated_by_dagachhu', 2020, NULL, NULL, '222.05', '126.534', '2025-05-21 15:40:07', 'power_units_in_million'),
(11, 'schedule_electricity_export_from_dagachhu', 2020, NULL, NULL, '182.69', '122.514', '2025-05-21 15:40:07', 'power_units_in_million'),
(12, 'hydro_electricity_generated_by_mangdechhu', 2020, NULL, NULL, '1660.44', '774.983', '2025-05-21 15:40:07', 'power_units_in_million'),
(13, 'schedule_electricity_export_from_mangdechhu', 2020, NULL, NULL, '1660.46', '514.288825', '2025-05-21 15:40:07', 'power_units_in_million'),
(14, 'hydro_electricity_generated_by_basochu', 2020, NULL, NULL, '132.74', '83.24908', '2025-05-21 15:40:07', 'power_units_in_million'),
(15, 'schedule_electricity_export_from_basochu', 2020, NULL, NULL, '107.26', '36.0675', '2025-05-21 15:40:07', 'power_units_in_million'),
(16, 'hydro_electricity_generated_by_nikachhu', 2020, NULL, NULL, '271.2', '131.722632', '2025-05-21 15:40:07', 'power_units_in_million'),
(17, 'schedule_electricity_export_from_nikachhu', 2020, NULL, NULL, '236.38', '94.22845', '2025-05-21 15:40:07', 'power_units_in_million'),
(18, 'total_electricity_import_bid_quantum', 2020, NULL, NULL, '0', '247', '2025-05-21 15:40:07', 'power_units_in_million'),
(19, 'total_domestic_sales', 2020, NULL, NULL, '1784.2', '1844.129902371', '2025-05-21 15:40:07', 'power_units_in_million'),
(20, 'total_subsidized_energy', 2020, NULL, NULL, '42.81', '43.922461670000004', '2025-05-21 15:40:07', 'power_units_in_million'),
(21, 'number_of_villages_electrified', 2020, NULL, NULL, '3879', '3879', '2025-05-21 15:40:07', 'power_units_in_million'),
(22, 'number_of_towns_electrified', 2020, NULL, NULL, '42', '42', '2025-05-21 15:40:07', 'power_units_in_million'),
(23, 'number_of_electricity_consumers', 2020, NULL, NULL, '253145', '256727', '2025-05-21 15:40:07', 'power_units_in_million'),
(24, 'total_electricty_generation3', 2024, NULL, NULL, '5613.55', '2779.1039729999998', '2025-05-21 19:31:45', NULL),
(25, 'total_electricty_generation3_total_scheduled_electricity_export', 2024, NULL, NULL, '3639.6100000000006', '1051.346065', '2025-05-21 19:31:45', NULL),
(26, 'schedule_export_of_electricity_to_india_', 2024, NULL, NULL, '64.83615537405029', '37.83039696298545', '2025-05-21 19:31:45', NULL),
(27, 'hydro_electricity_generated_by_chhukha', 2024, NULL, NULL, '773.73', '474.51800000000003', '2025-05-21 19:31:45', NULL),
(28, 'schedule_electricity_export_from_chhukha', 2024, NULL, NULL, '774.85', '182.8118', '2025-05-21 19:31:45', NULL),
(29, 'hydro_electricity_generated_by_kurichhu', 2024, NULL, NULL, '143.69', '91.347731', '2025-05-21 19:31:45', NULL),
(30, 'schedule_electricity_export_from_kurichhu', 2024, NULL, NULL, '0', '0', '2025-05-21 19:31:45', NULL),
(31, 'hydro_electricity_generated_by_tala', 2024, NULL, NULL, '2409.7', '1096.74953', '2025-05-21 19:31:45', NULL),
(32, 'schedule_electricity_export_from_tala', 2024, NULL, NULL, '677.97', '101.43549', '2025-05-21 19:31:45', NULL),
(33, 'hydro_electricity_generated_by_dagachhu', 2024, NULL, NULL, '222.05', '126.534', '2025-05-21 19:31:45', NULL),
(34, 'schedule_electricity_export_from_dagachhu', 2024, NULL, NULL, '182.69', '122.514', '2025-05-21 19:31:45', NULL),
(35, 'hydro_electricity_generated_by_mangdechhu', 2024, NULL, NULL, '1660.44', '774.983', '2025-05-21 19:31:45', NULL),
(36, 'schedule_electricity_export_from_mangdechhu', 2024, NULL, NULL, '1660.46', '514.288825', '2025-05-21 19:31:45', NULL),
(37, 'hydro_electricity_generated_by_basochu', 2024, NULL, NULL, '132.74', '83.24908', '2025-05-21 19:31:45', NULL),
(38, 'schedule_electricity_export_from_basochu', 2024, NULL, NULL, '107.26', '36.0675', '2025-05-21 19:31:45', NULL),
(39, 'hydro_electricity_generated_by_nikachhu', 2024, NULL, NULL, '271.2', '131.722632', '2025-05-21 19:31:45', NULL),
(40, 'schedule_electricity_export_from_nikachhu', 2024, NULL, NULL, '236.38', '94.22845', '2025-05-21 19:31:45', NULL),
(41, 'total_electricity_import_bid_quantum', 2024, NULL, NULL, '0', '247', '2025-05-21 19:31:45', NULL),
(42, 'total_domestic_sales', 2024, NULL, NULL, '1784.2', '1844.129902371', '2025-05-21 19:31:45', NULL),
(43, 'total_subsidized_energy', 2024, NULL, NULL, '42.81', '43.922461670000004', '2025-05-21 19:31:45', NULL),
(44, 'number_of_villages_electrified', 2024, NULL, NULL, '3879', '3879', '2025-05-21 19:31:45', NULL),
(45, 'number_of_towns_electrified', 2024, NULL, NULL, '42', '42', '2025-05-21 19:31:45', NULL),
(46, 'number_of_electricity_consumers', 2024, NULL, NULL, '253145', '256727', '2025-05-21 19:31:45', NULL),
(47, 'total_electricty_generation3', 2021, NULL, NULL, '5613.55', '2779.1039729999998', '2025-05-21 19:35:16', NULL),
(48, 'total_electricty_generation3_total_scheduled_electricity_export', 2021, NULL, NULL, '3639.6100000000006', '1051.346065', '2025-05-21 19:35:16', NULL),
(49, 'schedule_export_of_electricity_to_india_', 2021, NULL, NULL, '64.83615537405029', '37.83039696298545', '2025-05-21 19:35:16', NULL),
(50, 'hydro_electricity_generated_by_chhukha', 2021, NULL, NULL, '773.73', '474.51800000000003', '2025-05-21 19:35:16', NULL),
(51, 'schedule_electricity_export_from_chhukha', 2021, NULL, NULL, '774.85', '182.8118', '2025-05-21 19:35:16', NULL),
(52, 'hydro_electricity_generated_by_kurichhu', 2021, NULL, NULL, '143.69', '91.347731', '2025-05-21 19:35:16', NULL),
(53, 'schedule_electricity_export_from_kurichhu', 2021, NULL, NULL, '0', '0', '2025-05-21 19:35:16', NULL),
(54, 'hydro_electricity_generated_by_tala', 2021, NULL, NULL, '2409.7', '1096.74953', '2025-05-21 19:35:16', NULL),
(55, 'schedule_electricity_export_from_tala', 2021, NULL, NULL, '677.97', '101.43549', '2025-05-21 19:35:16', NULL),
(56, 'hydro_electricity_generated_by_dagachhu', 2021, NULL, NULL, '222.05', '126.534', '2025-05-21 19:35:16', NULL),
(57, 'schedule_electricity_export_from_dagachhu', 2021, NULL, NULL, '182.69', '122.514', '2025-05-21 19:35:16', NULL),
(58, 'hydro_electricity_generated_by_mangdechhu', 2021, NULL, NULL, '1660.44', '774.983', '2025-05-21 19:35:16', NULL),
(59, 'schedule_electricity_export_from_mangdechhu', 2021, NULL, NULL, '1660.46', '514.288825', '2025-05-21 19:35:16', NULL),
(60, 'hydro_electricity_generated_by_basochu', 2021, NULL, NULL, '132.74', '83.24908', '2025-05-21 19:35:16', NULL),
(61, 'schedule_electricity_export_from_basochu', 2021, NULL, NULL, '107.26', '36.0675', '2025-05-21 19:35:16', NULL),
(62, 'hydro_electricity_generated_by_nikachhu', 2021, NULL, NULL, '271.2', '131.722632', '2025-05-21 19:35:16', NULL),
(63, 'schedule_electricity_export_from_nikachhu', 2021, NULL, NULL, '236.38', '94.22845', '2025-05-21 19:35:16', NULL),
(64, 'total_electricity_import_bid_quantum', 2021, NULL, NULL, '0', '247', '2025-05-21 19:35:16', NULL),
(65, 'total_domestic_sales', 2021, NULL, NULL, '1784.2', '1844.129902371', '2025-05-21 19:35:16', NULL),
(66, 'total_subsidized_energy', 2021, NULL, NULL, '42.81', '43.922461670000004', '2025-05-21 19:35:16', NULL),
(67, 'number_of_villages_electrified', 2021, NULL, NULL, '3879', '3879', '2025-05-21 19:35:16', NULL),
(68, 'number_of_towns_electrified', 2021, NULL, NULL, '42', '42', '2025-05-21 19:35:16', NULL),
(69, 'number_of_electricity_consumers', 2021, NULL, NULL, '253145', '256727', '2025-05-21 19:35:16', NULL),
(70, 'total_electricty_generation3', 2023, NULL, NULL, '5613.55', '2779.1039729999998', '2025-05-21 20:09:35', NULL),
(71, 'total_electricty_generation3_total_scheduled_electricity_export', 2023, NULL, NULL, '3639.6100000000006', '1051.346065', '2025-05-21 20:09:35', NULL),
(72, 'schedule_export_of_electricity_to_india_', 2023, NULL, NULL, '64.83615537405029', '37.83039696298545', '2025-05-21 20:09:35', NULL),
(73, 'hydro_electricity_generated_by_chhukha', 2023, NULL, NULL, '773.73', '474.51800000000003', '2025-05-21 20:09:35', NULL),
(74, 'schedule_electricity_export_from_chhukha', 2023, NULL, NULL, '774.85', '182.8118', '2025-05-21 20:09:35', NULL),
(75, 'hydro_electricity_generated_by_kurichhu', 2023, NULL, NULL, '143.69', '91.347731', '2025-05-21 20:09:35', NULL),
(76, 'schedule_electricity_export_from_kurichhu', 2023, NULL, NULL, '0', '0', '2025-05-21 20:09:35', NULL),
(77, 'hydro_electricity_generated_by_tala', 2023, NULL, NULL, '2409.7', '1096.74953', '2025-05-21 20:09:35', NULL),
(78, 'schedule_electricity_export_from_tala', 2023, NULL, NULL, '677.97', '101.43549', '2025-05-21 20:09:35', NULL),
(79, 'hydro_electricity_generated_by_dagachhu', 2023, NULL, NULL, '222.05', '126.534', '2025-05-21 20:09:35', NULL),
(80, 'schedule_electricity_export_from_dagachhu', 2023, NULL, NULL, '182.69', '122.514', '2025-05-21 20:09:35', NULL),
(81, 'hydro_electricity_generated_by_mangdechhu', 2023, NULL, NULL, '1660.44', '774.983', '2025-05-21 20:09:35', NULL),
(82, 'schedule_electricity_export_from_mangdechhu', 2023, NULL, NULL, '1660.46', '514.288825', '2025-05-21 20:09:35', NULL),
(83, 'hydro_electricity_generated_by_basochu', 2023, NULL, NULL, '132.74', '83.24908', '2025-05-21 20:09:35', NULL),
(84, 'schedule_electricity_export_from_basochu', 2023, NULL, NULL, '107.26', '36.0675', '2025-05-21 20:09:35', NULL),
(85, 'hydro_electricity_generated_by_nikachhu', 2023, NULL, NULL, '271.2', '131.722632', '2025-05-21 20:09:35', NULL),
(86, 'schedule_electricity_export_from_nikachhu', 2023, NULL, NULL, '236.38', '94.22845', '2025-05-21 20:09:35', NULL),
(87, 'total_electricity_import_bid_quantum', 2023, NULL, NULL, '0', '247', '2025-05-21 20:09:35', NULL),
(88, 'total_domestic_sales', 2023, NULL, NULL, '1784.2', '1844.129902371', '2025-05-21 20:09:35', NULL),
(89, 'total_subsidized_energy', 2023, NULL, NULL, '42.81', '43.922461670000004', '2025-05-21 20:09:35', NULL),
(90, 'number_of_villages_electrified', 2023, NULL, NULL, '3879', '3879', '2025-05-21 20:09:35', NULL),
(91, 'number_of_towns_electrified', 2023, NULL, NULL, '42', '42', '2025-05-21 20:09:35', NULL),
(92, 'number_of_electricity_consumers', 2023, NULL, NULL, '253145', '256727', '2025-05-21 20:09:35', NULL),
(93, 'total_electricty_generation3', 2017, NULL, NULL, '5613.55', '2779.1039729999998', '2025-05-22 04:21:56', NULL),
(94, 'total_electricty_generation3_total_scheduled_electricity_export', 2017, NULL, NULL, '3639.6100000000006', '1051.346065', '2025-05-22 04:21:56', NULL),
(95, 'schedule_export_of_electricity_to_india_', 2017, NULL, NULL, '64.83615537405029', '37.83039696298545', '2025-05-22 04:21:56', NULL),
(96, 'hydro_electricity_generated_by_chhukha', 2017, NULL, NULL, '773.73', '474.51800000000003', '2025-05-22 04:21:56', NULL),
(97, 'schedule_electricity_export_from_chhukha', 2017, NULL, NULL, '774.85', '182.8118', '2025-05-22 04:21:56', NULL),
(98, 'hydro_electricity_generated_by_kurichhu', 2017, NULL, NULL, '143.69', '91.347731', '2025-05-22 04:21:56', NULL),
(99, 'schedule_electricity_export_from_kurichhu', 2017, NULL, NULL, '0', '0', '2025-05-22 04:21:56', NULL),
(100, 'hydro_electricity_generated_by_tala', 2017, NULL, NULL, '2409.7', '1096.74953', '2025-05-22 04:21:56', NULL),
(101, 'schedule_electricity_export_from_tala', 2017, NULL, NULL, '677.97', '101.43549', '2025-05-22 04:21:56', NULL),
(102, 'hydro_electricity_generated_by_dagachhu', 2017, NULL, NULL, '222.05', '126.534', '2025-05-22 04:21:56', NULL),
(103, 'schedule_electricity_export_from_dagachhu', 2017, NULL, NULL, '182.69', '122.514', '2025-05-22 04:21:56', NULL),
(104, 'hydro_electricity_generated_by_mangdechhu', 2017, NULL, NULL, '1660.44', '774.983', '2025-05-22 04:21:56', NULL),
(105, 'schedule_electricity_export_from_mangdechhu', 2017, NULL, NULL, '1660.46', '514.288825', '2025-05-22 04:21:56', NULL),
(106, 'hydro_electricity_generated_by_basochu', 2017, NULL, NULL, '132.74', '83.24908', '2025-05-22 04:21:56', NULL),
(107, 'schedule_electricity_export_from_basochu', 2017, NULL, NULL, '107.26', '36.0675', '2025-05-22 04:21:56', NULL),
(108, 'hydro_electricity_generated_by_nikachhu', 2017, NULL, NULL, '271.2', '131.722632', '2025-05-22 04:21:56', NULL),
(109, 'schedule_electricity_export_from_nikachhu', 2017, NULL, NULL, '236.38', '94.22845', '2025-05-22 04:21:56', NULL),
(110, 'total_electricity_import_bid_quantum', 2017, NULL, NULL, '0', '247', '2025-05-22 04:21:56', NULL),
(111, 'total_domestic_sales', 2017, NULL, NULL, '1784.2', '1844.129902371', '2025-05-22 04:21:56', NULL),
(112, 'total_subsidized_energy', 2017, NULL, NULL, '42.81', '43.922461670000004', '2025-05-22 04:21:56', NULL),
(113, 'number_of_villages_electrified', 2017, NULL, NULL, '3879', '3879', '2025-05-22 04:21:56', NULL),
(114, 'number_of_towns_electrified', 2017, NULL, NULL, '42', '42', '2025-05-22 04:21:56', NULL),
(115, 'number_of_electricity_consumers', 2017, NULL, NULL, '253145', '256727', '2025-05-22 04:21:56', NULL),
(116, 'total_electricty_generation3', 2025, NULL, NULL, '5613.55', '2779.1039729999998', '2025-05-26 23:53:06', NULL),
(117, 'total_electricty_generation3_total_scheduled_electricity_export', 2025, NULL, NULL, '3639.6100000000006', '1051.346065', '2025-05-26 23:53:06', NULL),
(118, 'schedule_export_of_electricity_to_india_', 2025, NULL, NULL, '64.83615537405029', '37.83039696298545', '2025-05-26 23:53:06', NULL),
(119, 'hydro_electricity_generated_by_chhukha', 2025, NULL, NULL, '773.73', '474.51800000000003', '2025-05-26 23:53:06', NULL),
(120, 'schedule_electricity_export_from_chhukha', 2025, NULL, NULL, '774.85', '182.8118', '2025-05-26 23:53:06', NULL),
(121, 'hydro_electricity_generated_by_kurichhu', 2025, NULL, NULL, '143.69', '91.347731', '2025-05-26 23:53:06', NULL),
(122, 'schedule_electricity_export_from_kurichhu', 2025, NULL, NULL, '0', '0', '2025-05-26 23:53:06', NULL),
(123, 'hydro_electricity_generated_by_tala', 2025, NULL, NULL, '2409.7', '1096.74953', '2025-05-26 23:53:06', NULL),
(124, 'schedule_electricity_export_from_tala', 2025, NULL, NULL, '677.97', '101.43549', '2025-05-26 23:53:06', NULL),
(125, 'hydro_electricity_generated_by_dagachhu', 2025, NULL, NULL, '222.05', '126.534', '2025-05-26 23:53:06', NULL),
(126, 'schedule_electricity_export_from_dagachhu', 2025, NULL, NULL, '182.69', '122.514', '2025-05-26 23:53:06', NULL),
(127, 'hydro_electricity_generated_by_mangdechhu', 2025, NULL, NULL, '1660.44', '774.983', '2025-05-26 23:53:06', NULL),
(128, 'schedule_electricity_export_from_mangdechhu', 2025, NULL, NULL, '1660.46', '514.288825', '2025-05-26 23:53:06', NULL),
(129, 'hydro_electricity_generated_by_basochu', 2025, NULL, NULL, '132.74', '83.24908', '2025-05-26 23:53:06', NULL),
(130, 'schedule_electricity_export_from_basochu', 2025, NULL, NULL, '107.26', '36.0675', '2025-05-26 23:53:06', NULL),
(131, 'hydro_electricity_generated_by_nikachhu', 2025, NULL, NULL, '271.2', '131.722632', '2025-05-26 23:53:06', NULL),
(132, 'schedule_electricity_export_from_nikachhu', 2025, NULL, NULL, '236.38', '94.22845', '2025-05-26 23:53:06', NULL),
(133, 'total_electricity_import_bid_quantum', 2025, NULL, NULL, '0', '247', '2025-05-26 23:53:06', NULL),
(134, 'total_domestic_sales', 2025, NULL, NULL, '1784.2', '1844.129902371', '2025-05-26 23:53:06', NULL),
(135, 'total_subsidized_energy', 2025, NULL, NULL, '42.81', '43.922461670000004', '2025-05-26 23:53:06', NULL),
(136, 'number_of_villages_electrified', 2025, NULL, NULL, '3879', '3879', '2025-05-26 23:53:06', NULL),
(137, 'number_of_towns_electrified', 2025, NULL, NULL, '42', '42', '2025-05-26 23:53:06', NULL),
(138, 'number_of_electricity_consumers', 2025, NULL, NULL, '253145', '256727', '2025-05-26 23:53:06', NULL),
(139, 'total_electricty_generation3', 2016, NULL, NULL, '5613.55', '2779.1039729999998', '2025-05-27 14:36:39', NULL),
(140, 'total_electricty_generation3_total_scheduled_electricity_export', 2016, NULL, NULL, '3639.6100000000006', '1051.346065', '2025-05-27 14:36:39', NULL),
(141, 'schedule_export_of_electricity_to_india_', 2016, NULL, NULL, '64.83615537405029', '37.83039696298545', '2025-05-27 14:36:39', NULL),
(142, 'hydro_electricity_generated_by_chhukha', 2016, NULL, NULL, '773.73', '474.51800000000003', '2025-05-27 14:36:39', NULL),
(143, 'schedule_electricity_export_from_chhukha', 2016, NULL, NULL, '774.85', '182.8118', '2025-05-27 14:36:39', NULL),
(144, 'hydro_electricity_generated_by_kurichhu', 2016, NULL, NULL, '143.69', '91.347731', '2025-05-27 14:36:39', NULL),
(145, 'schedule_electricity_export_from_kurichhu', 2016, NULL, NULL, '0', '0', '2025-05-27 14:36:39', NULL),
(146, 'hydro_electricity_generated_by_tala', 2016, NULL, NULL, '2409.7', '1096.74953', '2025-05-27 14:36:39', NULL),
(147, 'schedule_electricity_export_from_tala', 2016, NULL, NULL, '677.97', '101.43549', '2025-05-27 14:36:39', NULL),
(148, 'hydro_electricity_generated_by_dagachhu', 2016, NULL, NULL, '222.05', '126.534', '2025-05-27 14:36:39', NULL),
(149, 'schedule_electricity_export_from_dagachhu', 2016, NULL, NULL, '182.69', '122.514', '2025-05-27 14:36:39', NULL),
(150, 'hydro_electricity_generated_by_mangdechhu', 2016, NULL, NULL, '1660.44', '774.983', '2025-05-27 14:36:39', NULL),
(151, 'schedule_electricity_export_from_mangdechhu', 2016, NULL, NULL, '1660.46', '514.288825', '2025-05-27 14:36:39', NULL),
(152, 'hydro_electricity_generated_by_basochu', 2016, NULL, NULL, '132.74', '83.24908', '2025-05-27 14:36:39', NULL),
(153, 'schedule_electricity_export_from_basochu', 2016, NULL, NULL, '107.26', '36.0675', '2025-05-27 14:36:39', NULL),
(154, 'hydro_electricity_generated_by_nikachhu', 2016, NULL, NULL, '271.2', '131.722632', '2025-05-27 14:36:39', NULL),
(155, 'schedule_electricity_export_from_nikachhu', 2016, NULL, NULL, '236.38', '94.22845', '2025-05-27 14:36:39', NULL),
(156, 'total_electricity_import_bid_quantum', 2016, NULL, NULL, '0', '247', '2025-05-27 14:36:39', NULL),
(157, 'total_domestic_sales', 2016, NULL, NULL, '1784.2', '1844.129902371', '2025-05-27 14:36:39', NULL),
(158, 'total_subsidized_energy', 2016, NULL, NULL, '42.81', '43.922461670000004', '2025-05-27 14:36:39', NULL),
(159, 'number_of_villages_electrified', 2016, NULL, NULL, '3879', '3879', '2025-05-27 14:36:39', NULL),
(160, 'number_of_towns_electrified', 2016, NULL, NULL, '42', '42', '2025-05-27 14:36:39', NULL),
(161, 'number_of_electricity_consumers', 2016, NULL, NULL, '253145', '256727', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `public_finance_nu_in_million`
--

CREATE TABLE `public_finance_nu_in_million` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `public_finance_nu_in_million`
--

INSERT INTO `public_finance_nu_in_million` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'government_revenue_receipt1', 2020, NULL, NULL, '12203.579', '22176.041223099997', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(2, 'government_revenue_receipt1_tax_revenue', 2020, NULL, NULL, '8831.874', '17089.04594974', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(3, 'government_revenue_receipt1_nontax_revenue', 2020, NULL, NULL, '3371.705', '5086.995273359999', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(4, 'government_revenue_receipt1_nontax_revenue_other_revenue', 2020, NULL, NULL, '2518.1', '3731.9060990699995', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(5, 'government_revenue_receipt1_nontax_revenue_current_revenue_from_government_agencies', 2020, NULL, NULL, '795.299', '1282.32779282', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(6, 'government_revenue_receipt1_nontax_revenue_capital_revenue_from_government_agencies', 2020, NULL, NULL, '58.306', '72.76138147', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(7, 'government_expenditure', 2020, NULL, NULL, '13360.129', '10749.124', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(8, 'government_expenditure_current', 2020, NULL, NULL, '10110.862', '4061.674', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(9, 'government_expenditure_capital', 2020, NULL, NULL, '2727.902', '2727.902', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(10, 'government_expenditure_repayment', 2020, NULL, NULL, '2170.33', '931.596', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(11, 'total_public_debt_nu_in_million2', 2020, NULL, NULL, '290257.05187301', '292742.48076597', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(12, 'as__of_gdp', 2020, NULL, NULL, '95.2021141815075', '97.1186002309717', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(13, 'external_debt', 2020, NULL, NULL, '266658.99987301', '269144.42876597', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(14, 'external_debt_as__of_gdp', 2020, NULL, NULL, '87.46213189178161', '89.2898431185051', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(15, 'hydro_debt', 2020, NULL, NULL, '166972.386576993', '167951.82850533', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(16, 'hydro_debt_as__of_gdp', 2020, NULL, NULL, '54.76567790337919', '55.7187547498776', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(17, 'nonhydro_debt', 2020, NULL, NULL, '99686.613296017', '101192.60026064', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(18, 'nonhydro_debt_as__of_gdp', 2020, NULL, NULL, '32.6964539884024', '33.5710883686275', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(19, 'domestic_debt', 2020, NULL, NULL, '23598.052', '23598.052', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(20, 'domestic_debt_as__of_gdp', 2020, NULL, NULL, '7.739982289725909', '7.828757112466519', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(21, 'covertible_currency_debt_usd_in_million', 2020, NULL, NULL, '1125.4610475174268', '1085.35751551991', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(22, 'covertible_currency_debt_usd_in_million_as__of_gdp', 2020, NULL, NULL, '30.9267752126541', '30.8329747563151', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(23, 'rupee_debt_rs_in_million', 2020, NULL, NULL, '172367.873312', '176205.264712', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(24, 'rupee_debt_rs_in_million_as__of_gdp', 2020, NULL, NULL, '56.5353566791276', '58.45686836219009', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(25, 'total_debt_service_through_budget_nu_in_million', 2020, NULL, NULL, '13329.159544525959', '13329.159544526', '2025-05-21 15:40:07', 'public_finance_nu_in_million'),
(26, 'government_revenue_receipt1', 2024, NULL, NULL, '12203.579', '22176.041223099997', '2025-05-21 19:31:45', NULL),
(27, 'government_revenue_receipt1_tax_revenue', 2024, NULL, NULL, '8831.874', '17089.04594974', '2025-05-21 19:31:45', NULL),
(28, 'government_revenue_receipt1_nontax_revenue', 2024, NULL, NULL, '3371.705', '5086.995273359999', '2025-05-21 19:31:45', NULL),
(29, 'government_revenue_receipt1_nontax_revenue_other_revenue', 2024, NULL, NULL, '2518.1', '3731.9060990699995', '2025-05-21 19:31:45', NULL),
(30, 'government_revenue_receipt1_nontax_revenue_current_revenue_from_government_agencies', 2024, NULL, NULL, '795.299', '1282.32779282', '2025-05-21 19:31:45', NULL),
(31, 'government_revenue_receipt1_nontax_revenue_capital_revenue_from_government_agencies', 2024, NULL, NULL, '58.306', '72.76138147', '2025-05-21 19:31:45', NULL),
(32, 'government_expenditure', 2024, NULL, NULL, '13360.129', '10749.124', '2025-05-21 19:31:45', NULL),
(33, 'government_expenditure_current', 2024, NULL, NULL, '10110.862', '4061.674', '2025-05-21 19:31:45', NULL),
(34, 'government_expenditure_capital', 2024, NULL, NULL, '2727.902', '2727.902', '2025-05-21 19:31:45', NULL),
(35, 'government_expenditure_repayment', 2024, NULL, NULL, '2170.33', '931.596', '2025-05-21 19:31:45', NULL),
(36, 'total_public_debt_nu_in_million2', 2024, NULL, NULL, '290257.05187301', '292742.48076597', '2025-05-21 19:31:45', NULL),
(37, 'as__of_gdp', 2024, NULL, NULL, '95.2021141815075', '97.1186002309717', '2025-05-21 19:31:45', NULL),
(38, 'external_debt', 2024, NULL, NULL, '266658.99987301', '269144.42876597', '2025-05-21 19:31:45', NULL),
(39, 'external_debt_as__of_gdp', 2024, NULL, NULL, '87.46213189178161', '89.2898431185051', '2025-05-21 19:31:45', NULL),
(40, 'hydro_debt', 2024, NULL, NULL, '166972.386576993', '167951.82850533', '2025-05-21 19:31:45', NULL),
(41, 'hydro_debt_as__of_gdp', 2024, NULL, NULL, '54.76567790337919', '55.7187547498776', '2025-05-21 19:31:45', NULL),
(42, 'nonhydro_debt', 2024, NULL, NULL, '99686.613296017', '101192.60026064', '2025-05-21 19:31:45', NULL),
(43, 'nonhydro_debt_as__of_gdp', 2024, NULL, NULL, '32.6964539884024', '33.5710883686275', '2025-05-21 19:31:45', NULL),
(44, 'domestic_debt', 2024, NULL, NULL, '23598.052', '23598.052', '2025-05-21 19:31:45', NULL),
(45, 'domestic_debt_as__of_gdp', 2024, NULL, NULL, '7.739982289725909', '7.828757112466519', '2025-05-21 19:31:45', NULL),
(46, 'covertible_currency_debt_usd_in_million', 2024, NULL, NULL, '1125.4610475174268', '1085.35751551991', '2025-05-21 19:31:45', NULL),
(47, 'covertible_currency_debt_usd_in_million_as__of_gdp', 2024, NULL, NULL, '30.9267752126541', '30.8329747563151', '2025-05-21 19:31:45', NULL),
(48, 'rupee_debt_rs_in_million', 2024, NULL, NULL, '172367.873312', '176205.264712', '2025-05-21 19:31:45', NULL),
(49, 'rupee_debt_rs_in_million_as__of_gdp', 2024, NULL, NULL, '56.5353566791276', '58.45686836219009', '2025-05-21 19:31:45', NULL),
(50, 'total_debt_service_through_budget_nu_in_million', 2024, NULL, NULL, '13329.159544525959', '13329.159544526', '2025-05-21 19:31:45', NULL),
(51, 'government_revenue_receipt1', 2021, NULL, NULL, '12203.579', '22176.041223099997', '2025-05-21 19:35:16', NULL),
(52, 'government_revenue_receipt1_tax_revenue', 2021, NULL, NULL, '8831.874', '17089.04594974', '2025-05-21 19:35:16', NULL),
(53, 'government_revenue_receipt1_nontax_revenue', 2021, NULL, NULL, '3371.705', '5086.995273359999', '2025-05-21 19:35:16', NULL),
(54, 'government_revenue_receipt1_nontax_revenue_other_revenue', 2021, NULL, NULL, '2518.1', '3731.9060990699995', '2025-05-21 19:35:16', NULL),
(55, 'government_revenue_receipt1_nontax_revenue_current_revenue_from_government_agencies', 2021, NULL, NULL, '795.299', '1282.32779282', '2025-05-21 19:35:16', NULL),
(56, 'government_revenue_receipt1_nontax_revenue_capital_revenue_from_government_agencies', 2021, NULL, NULL, '58.306', '72.76138147', '2025-05-21 19:35:16', NULL),
(57, 'government_expenditure', 2021, NULL, NULL, '13360.129', '10749.124', '2025-05-21 19:35:16', NULL),
(58, 'government_expenditure_current', 2021, NULL, NULL, '10110.862', '4061.674', '2025-05-21 19:35:16', NULL),
(59, 'government_expenditure_capital', 2021, NULL, NULL, '2727.902', '2727.902', '2025-05-21 19:35:16', NULL),
(60, 'government_expenditure_repayment', 2021, NULL, NULL, '2170.33', '931.596', '2025-05-21 19:35:16', NULL),
(61, 'total_public_debt_nu_in_million2', 2021, NULL, NULL, '290257.05187301', '292742.48076597', '2025-05-21 19:35:16', NULL),
(62, 'as__of_gdp', 2021, NULL, NULL, '95.2021141815075', '97.1186002309717', '2025-05-21 19:35:16', NULL),
(63, 'external_debt', 2021, NULL, NULL, '266658.99987301', '269144.42876597', '2025-05-21 19:35:16', NULL),
(64, 'external_debt_as__of_gdp', 2021, NULL, NULL, '87.46213189178161', '89.2898431185051', '2025-05-21 19:35:16', NULL),
(65, 'hydro_debt', 2021, NULL, NULL, '166972.386576993', '167951.82850533', '2025-05-21 19:35:16', NULL),
(66, 'hydro_debt_as__of_gdp', 2021, NULL, NULL, '54.76567790337919', '55.7187547498776', '2025-05-21 19:35:16', NULL),
(67, 'nonhydro_debt', 2021, NULL, NULL, '99686.613296017', '101192.60026064', '2025-05-21 19:35:16', NULL),
(68, 'nonhydro_debt_as__of_gdp', 2021, NULL, NULL, '32.6964539884024', '33.5710883686275', '2025-05-21 19:35:16', NULL),
(69, 'domestic_debt', 2021, NULL, NULL, '23598.052', '23598.052', '2025-05-21 19:35:16', NULL),
(70, 'domestic_debt_as__of_gdp', 2021, NULL, NULL, '7.739982289725909', '7.828757112466519', '2025-05-21 19:35:16', NULL),
(71, 'covertible_currency_debt_usd_in_million', 2021, NULL, NULL, '1125.4610475174268', '1085.35751551991', '2025-05-21 19:35:16', NULL),
(72, 'covertible_currency_debt_usd_in_million_as__of_gdp', 2021, NULL, NULL, '30.9267752126541', '30.8329747563151', '2025-05-21 19:35:16', NULL),
(73, 'rupee_debt_rs_in_million', 2021, NULL, NULL, '172367.873312', '176205.264712', '2025-05-21 19:35:16', NULL),
(74, 'rupee_debt_rs_in_million_as__of_gdp', 2021, NULL, NULL, '56.5353566791276', '58.45686836219009', '2025-05-21 19:35:16', NULL),
(75, 'total_debt_service_through_budget_nu_in_million', 2021, NULL, NULL, '13329.159544525959', '13329.159544526', '2025-05-21 19:35:16', NULL),
(76, 'government_revenue_receipt1', 2023, NULL, NULL, '12203.579', '22176.041223099997', '2025-05-21 20:09:35', NULL),
(77, 'government_revenue_receipt1_tax_revenue', 2023, NULL, NULL, '8831.874', '17089.04594974', '2025-05-21 20:09:35', NULL),
(78, 'government_revenue_receipt1_nontax_revenue', 2023, NULL, NULL, '3371.705', '5086.995273359999', '2025-05-21 20:09:35', NULL),
(79, 'government_revenue_receipt1_nontax_revenue_other_revenue', 2023, NULL, NULL, '2518.1', '3731.9060990699995', '2025-05-21 20:09:35', NULL),
(80, 'government_revenue_receipt1_nontax_revenue_current_revenue_from_government_agencies', 2023, NULL, NULL, '795.299', '1282.32779282', '2025-05-21 20:09:35', NULL),
(81, 'government_revenue_receipt1_nontax_revenue_capital_revenue_from_government_agencies', 2023, NULL, NULL, '58.306', '72.76138147', '2025-05-21 20:09:35', NULL),
(82, 'government_expenditure', 2023, NULL, NULL, '13360.129', '10749.124', '2025-05-21 20:09:35', NULL),
(83, 'government_expenditure_current', 2023, NULL, NULL, '10110.862', '4061.674', '2025-05-21 20:09:35', NULL),
(84, 'government_expenditure_capital', 2023, NULL, NULL, '2727.902', '2727.902', '2025-05-21 20:09:35', NULL),
(85, 'government_expenditure_repayment', 2023, NULL, NULL, '2170.33', '931.596', '2025-05-21 20:09:35', NULL),
(86, 'total_public_debt_nu_in_million2', 2023, NULL, NULL, '290257.05187301', '292742.48076597', '2025-05-21 20:09:35', NULL),
(87, 'as__of_gdp', 2023, NULL, NULL, '95.2021141815075', '97.1186002309717', '2025-05-21 20:09:35', NULL),
(88, 'external_debt', 2023, NULL, NULL, '266658.99987301', '269144.42876597', '2025-05-21 20:09:35', NULL),
(89, 'external_debt_as__of_gdp', 2023, NULL, NULL, '87.46213189178161', '89.2898431185051', '2025-05-21 20:09:35', NULL),
(90, 'hydro_debt', 2023, NULL, NULL, '166972.386576993', '167951.82850533', '2025-05-21 20:09:35', NULL),
(91, 'hydro_debt_as__of_gdp', 2023, NULL, NULL, '54.76567790337919', '55.7187547498776', '2025-05-21 20:09:35', NULL),
(92, 'nonhydro_debt', 2023, NULL, NULL, '99686.613296017', '101192.60026064', '2025-05-21 20:09:35', NULL),
(93, 'nonhydro_debt_as__of_gdp', 2023, NULL, NULL, '32.6964539884024', '33.5710883686275', '2025-05-21 20:09:35', NULL),
(94, 'domestic_debt', 2023, NULL, NULL, '23598.052', '23598.052', '2025-05-21 20:09:35', NULL),
(95, 'domestic_debt_as__of_gdp', 2023, NULL, NULL, '7.739982289725909', '7.828757112466519', '2025-05-21 20:09:35', NULL),
(96, 'covertible_currency_debt_usd_in_million', 2023, NULL, NULL, '1125.4610475174268', '1085.35751551991', '2025-05-21 20:09:35', NULL),
(97, 'covertible_currency_debt_usd_in_million_as__of_gdp', 2023, NULL, NULL, '30.9267752126541', '30.8329747563151', '2025-05-21 20:09:35', NULL),
(98, 'rupee_debt_rs_in_million', 2023, NULL, NULL, '172367.873312', '176205.264712', '2025-05-21 20:09:35', NULL),
(99, 'rupee_debt_rs_in_million_as__of_gdp', 2023, NULL, NULL, '56.5353566791276', '58.45686836219009', '2025-05-21 20:09:35', NULL),
(100, 'total_debt_service_through_budget_nu_in_million', 2023, NULL, NULL, '13329.159544525959', '13329.159544526', '2025-05-21 20:09:35', NULL),
(101, 'government_revenue_receipt1', 2017, NULL, NULL, '12203.579', '22176.041223099997', '2025-05-22 04:21:55', NULL),
(102, 'government_revenue_receipt1_tax_revenue', 2017, NULL, NULL, '8831.874', '17089.04594974', '2025-05-22 04:21:55', NULL),
(103, 'government_revenue_receipt1_nontax_revenue', 2017, NULL, NULL, '3371.705', '5086.995273359999', '2025-05-22 04:21:55', NULL),
(104, 'government_revenue_receipt1_nontax_revenue_other_revenue', 2017, NULL, NULL, '2518.1', '3731.9060990699995', '2025-05-22 04:21:55', NULL),
(105, 'government_revenue_receipt1_nontax_revenue_current_revenue_from_government_agencies', 2017, NULL, NULL, '795.299', '1282.32779282', '2025-05-22 04:21:55', NULL),
(106, 'government_revenue_receipt1_nontax_revenue_capital_revenue_from_government_agencies', 2017, NULL, NULL, '58.306', '72.76138147', '2025-05-22 04:21:55', NULL),
(107, 'government_expenditure', 2017, NULL, NULL, '13360.129', '10749.124', '2025-05-22 04:21:55', NULL),
(108, 'government_expenditure_current', 2017, NULL, NULL, '10110.862', '4061.674', '2025-05-22 04:21:55', NULL),
(109, 'government_expenditure_capital', 2017, NULL, NULL, '2727.902', '2727.902', '2025-05-22 04:21:55', NULL),
(110, 'government_expenditure_repayment', 2017, NULL, NULL, '2170.33', '931.596', '2025-05-22 04:21:55', NULL),
(111, 'total_public_debt_nu_in_million2', 2017, NULL, NULL, '290257.05187301', '292742.48076597', '2025-05-22 04:21:55', NULL),
(112, 'as__of_gdp', 2017, NULL, NULL, '95.2021141815075', '97.1186002309717', '2025-05-22 04:21:55', NULL),
(113, 'external_debt', 2017, NULL, NULL, '266658.99987301', '269144.42876597', '2025-05-22 04:21:55', NULL),
(114, 'external_debt_as__of_gdp', 2017, NULL, NULL, '87.46213189178161', '89.2898431185051', '2025-05-22 04:21:55', NULL),
(115, 'hydro_debt', 2017, NULL, NULL, '166972.386576993', '167951.82850533', '2025-05-22 04:21:55', NULL),
(116, 'hydro_debt_as__of_gdp', 2017, NULL, NULL, '54.76567790337919', '55.7187547498776', '2025-05-22 04:21:55', NULL),
(117, 'nonhydro_debt', 2017, NULL, NULL, '99686.613296017', '101192.60026064', '2025-05-22 04:21:55', NULL),
(118, 'nonhydro_debt_as__of_gdp', 2017, NULL, NULL, '32.6964539884024', '33.5710883686275', '2025-05-22 04:21:55', NULL),
(119, 'domestic_debt', 2017, NULL, NULL, '23598.052', '23598.052', '2025-05-22 04:21:55', NULL),
(120, 'domestic_debt_as__of_gdp', 2017, NULL, NULL, '7.739982289725909', '7.828757112466519', '2025-05-22 04:21:55', NULL),
(121, 'covertible_currency_debt_usd_in_million', 2017, NULL, NULL, '1125.4610475174268', '1085.35751551991', '2025-05-22 04:21:55', NULL),
(122, 'covertible_currency_debt_usd_in_million_as__of_gdp', 2017, NULL, NULL, '30.9267752126541', '30.8329747563151', '2025-05-22 04:21:55', NULL),
(123, 'rupee_debt_rs_in_million', 2017, NULL, NULL, '172367.873312', '176205.264712', '2025-05-22 04:21:55', NULL),
(124, 'rupee_debt_rs_in_million_as__of_gdp', 2017, NULL, NULL, '56.5353566791276', '58.45686836219009', '2025-05-22 04:21:55', NULL),
(125, 'total_debt_service_through_budget_nu_in_million', 2017, NULL, NULL, '13329.159544525959', '13329.159544526', '2025-05-22 04:21:55', NULL),
(126, 'government_revenue_receipt1', 2025, NULL, NULL, '12203.579', '22176.041223099997', '2025-05-26 23:53:06', NULL),
(127, 'government_revenue_receipt1_tax_revenue', 2025, NULL, NULL, '8831.874', '17089.04594974', '2025-05-26 23:53:06', NULL),
(128, 'government_revenue_receipt1_nontax_revenue', 2025, NULL, NULL, '3371.705', '5086.995273359999', '2025-05-26 23:53:06', NULL),
(129, 'government_revenue_receipt1_nontax_revenue_other_revenue', 2025, NULL, NULL, '2518.1', '3731.9060990699995', '2025-05-26 23:53:06', NULL),
(130, 'government_revenue_receipt1_nontax_revenue_current_revenue_from_government_agencies', 2025, NULL, NULL, '795.299', '1282.32779282', '2025-05-26 23:53:06', NULL),
(131, 'government_revenue_receipt1_nontax_revenue_capital_revenue_from_government_agencies', 2025, NULL, NULL, '58.306', '72.76138147', '2025-05-26 23:53:06', NULL),
(132, 'government_expenditure', 2025, NULL, NULL, '13360.129', '10749.124', '2025-05-26 23:53:06', NULL),
(133, 'government_expenditure_current', 2025, NULL, NULL, '10110.862', '4061.674', '2025-05-26 23:53:06', NULL),
(134, 'government_expenditure_capital', 2025, NULL, NULL, '2727.902', '2727.902', '2025-05-26 23:53:06', NULL),
(135, 'government_expenditure_repayment', 2025, NULL, NULL, '2170.33', '931.596', '2025-05-26 23:53:06', NULL),
(136, 'total_public_debt_nu_in_million2', 2025, NULL, NULL, '290257.05187301', '292742.48076597', '2025-05-26 23:53:06', NULL),
(137, 'as__of_gdp', 2025, NULL, NULL, '95.2021141815075', '97.1186002309717', '2025-05-26 23:53:06', NULL),
(138, 'external_debt', 2025, NULL, NULL, '266658.99987301', '269144.42876597', '2025-05-26 23:53:06', NULL),
(139, 'external_debt_as__of_gdp', 2025, NULL, NULL, '87.46213189178161', '89.2898431185051', '2025-05-26 23:53:06', NULL),
(140, 'hydro_debt', 2025, NULL, NULL, '166972.386576993', '167951.82850533', '2025-05-26 23:53:06', NULL),
(141, 'hydro_debt_as__of_gdp', 2025, NULL, NULL, '54.76567790337919', '55.7187547498776', '2025-05-26 23:53:06', NULL),
(142, 'nonhydro_debt', 2025, NULL, NULL, '99686.613296017', '101192.60026064', '2025-05-26 23:53:06', NULL),
(143, 'nonhydro_debt_as__of_gdp', 2025, NULL, NULL, '32.6964539884024', '33.5710883686275', '2025-05-26 23:53:06', NULL),
(144, 'domestic_debt', 2025, NULL, NULL, '23598.052', '23598.052', '2025-05-26 23:53:06', NULL),
(145, 'domestic_debt_as__of_gdp', 2025, NULL, NULL, '7.739982289725909', '7.828757112466519', '2025-05-26 23:53:06', NULL),
(146, 'covertible_currency_debt_usd_in_million', 2025, NULL, NULL, '1125.4610475174268', '1085.35751551991', '2025-05-26 23:53:06', NULL),
(147, 'covertible_currency_debt_usd_in_million_as__of_gdp', 2025, NULL, NULL, '30.9267752126541', '30.8329747563151', '2025-05-26 23:53:06', NULL),
(148, 'rupee_debt_rs_in_million', 2025, NULL, NULL, '172367.873312', '176205.264712', '2025-05-26 23:53:06', NULL),
(149, 'rupee_debt_rs_in_million_as__of_gdp', 2025, NULL, NULL, '56.5353566791276', '58.45686836219009', '2025-05-26 23:53:06', NULL),
(150, 'total_debt_service_through_budget_nu_in_million', 2025, NULL, NULL, '13329.159544525959', '13329.159544526', '2025-05-26 23:53:06', NULL),
(151, 'government_revenue_receipt1', 2016, NULL, NULL, '12203.579', '22176.041223099997', '2025-05-27 14:36:39', NULL),
(152, 'government_revenue_receipt1_tax_revenue', 2016, NULL, NULL, '8831.874', '17089.04594974', '2025-05-27 14:36:39', NULL),
(153, 'government_revenue_receipt1_nontax_revenue', 2016, NULL, NULL, '3371.705', '5086.995273359999', '2025-05-27 14:36:39', NULL),
(154, 'government_revenue_receipt1_nontax_revenue_other_revenue', 2016, NULL, NULL, '2518.1', '3731.9060990699995', '2025-05-27 14:36:39', NULL),
(155, 'government_revenue_receipt1_nontax_revenue_current_revenue_from_government_agencies', 2016, NULL, NULL, '795.299', '1282.32779282', '2025-05-27 14:36:39', NULL),
(156, 'government_revenue_receipt1_nontax_revenue_capital_revenue_from_government_agencies', 2016, NULL, NULL, '58.306', '72.76138147', '2025-05-27 14:36:39', NULL),
(157, 'government_expenditure', 2016, NULL, NULL, '13360.129', '10749.124', '2025-05-27 14:36:39', NULL),
(158, 'government_expenditure_current', 2016, NULL, NULL, '10110.862', '4061.674', '2025-05-27 14:36:39', NULL),
(159, 'government_expenditure_capital', 2016, NULL, NULL, '2727.902', '2727.902', '2025-05-27 14:36:39', NULL),
(160, 'government_expenditure_repayment', 2016, NULL, NULL, '2170.33', '931.596', '2025-05-27 14:36:39', NULL),
(161, 'total_public_debt_nu_in_million2', 2016, NULL, NULL, '290257.05187301', '292742.48076597', '2025-05-27 14:36:39', NULL),
(162, 'as__of_gdp', 2016, NULL, NULL, '95.2021141815075', '97.1186002309717', '2025-05-27 14:36:39', NULL),
(163, 'external_debt', 2016, NULL, NULL, '266658.99987301', '269144.42876597', '2025-05-27 14:36:39', NULL),
(164, 'external_debt_as__of_gdp', 2016, NULL, NULL, '87.46213189178161', '89.2898431185051', '2025-05-27 14:36:39', NULL),
(165, 'hydro_debt', 2016, NULL, NULL, '166972.386576993', '167951.82850533', '2025-05-27 14:36:39', NULL),
(166, 'hydro_debt_as__of_gdp', 2016, NULL, NULL, '54.76567790337919', '55.7187547498776', '2025-05-27 14:36:39', NULL),
(167, 'nonhydro_debt', 2016, NULL, NULL, '99686.613296017', '101192.60026064', '2025-05-27 14:36:39', NULL),
(168, 'nonhydro_debt_as__of_gdp', 2016, NULL, NULL, '32.6964539884024', '33.5710883686275', '2025-05-27 14:36:39', NULL),
(169, 'domestic_debt', 2016, NULL, NULL, '23598.052', '23598.052', '2025-05-27 14:36:39', NULL),
(170, 'domestic_debt_as__of_gdp', 2016, NULL, NULL, '7.739982289725909', '7.828757112466519', '2025-05-27 14:36:39', NULL),
(171, 'covertible_currency_debt_usd_in_million', 2016, NULL, NULL, '1125.4610475174268', '1085.35751551991', '2025-05-27 14:36:39', NULL),
(172, 'covertible_currency_debt_usd_in_million_as__of_gdp', 2016, NULL, NULL, '30.9267752126541', '30.8329747563151', '2025-05-27 14:36:39', NULL),
(173, 'rupee_debt_rs_in_million', 2016, NULL, NULL, '172367.873312', '176205.264712', '2025-05-27 14:36:39', NULL),
(174, 'rupee_debt_rs_in_million_as__of_gdp', 2016, NULL, NULL, '56.5353566791276', '58.45686836219009', '2025-05-27 14:36:39', NULL),
(175, 'total_debt_service_through_budget_nu_in_million', 2016, NULL, NULL, '13329.159544525959', '13329.159544526', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sanitation`
--

CREATE TABLE `sanitation` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanitation`
--

INSERT INTO `sanitation` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'rural_population_access_to_improved_drinking_water_source_', 2020, NULL, NULL, '99.5', '99.5', '2025-05-21 15:40:07', 'sanitation'),
(2, 'rural_population_access_to_improved_sanitation_', 2020, NULL, NULL, '98.9', '98.9', '2025-05-21 15:40:07', 'sanitation'),
(3, 'under_one_immunization_coverage_', 2020, NULL, NULL, '99.4', '99.4', '2025-05-21 15:40:07', 'sanitation'),
(4, 'rural_population_access_to_improved_drinking_water_source_', 2024, NULL, NULL, '99.5', '99.5', '2025-05-21 19:31:45', NULL),
(5, 'rural_population_access_to_improved_sanitation_', 2024, NULL, NULL, '98.9', '98.9', '2025-05-21 19:31:45', NULL),
(6, 'under_one_immunization_coverage_', 2024, NULL, NULL, '99.4', '99.4', '2025-05-21 19:31:45', NULL),
(7, 'rural_population_access_to_improved_drinking_water_source_', 2021, NULL, NULL, '99.5', '99.5', '2025-05-21 19:35:16', NULL),
(8, 'rural_population_access_to_improved_sanitation_', 2021, NULL, NULL, '98.9', '98.9', '2025-05-21 19:35:16', NULL),
(9, 'under_one_immunization_coverage_', 2021, NULL, NULL, '99.4', '99.4', '2025-05-21 19:35:16', NULL),
(10, 'rural_population_access_to_improved_drinking_water_source_', 2023, NULL, NULL, '99.5', '99.5', '2025-05-21 20:09:35', NULL),
(11, 'rural_population_access_to_improved_sanitation_', 2023, NULL, NULL, '98.9', '98.9', '2025-05-21 20:09:35', NULL),
(12, 'under_one_immunization_coverage_', 2023, NULL, NULL, '99.4', '99.4', '2025-05-21 20:09:35', NULL),
(13, 'rural_population_access_to_improved_drinking_water_source_', 2017, NULL, NULL, '99.5', '99.5', '2025-05-22 04:21:56', NULL),
(14, 'rural_population_access_to_improved_sanitation_', 2017, NULL, NULL, '98.9', '98.9', '2025-05-22 04:21:56', NULL),
(15, 'under_one_immunization_coverage_', 2017, NULL, NULL, '99.4', '99.4', '2025-05-22 04:21:56', NULL),
(16, 'rural_population_access_to_improved_drinking_water_source_', 2025, NULL, NULL, '99.5', '99.5', '2025-05-26 23:53:06', NULL),
(17, 'rural_population_access_to_improved_sanitation_', 2025, NULL, NULL, '98.9', '98.9', '2025-05-26 23:53:06', NULL),
(18, 'under_one_immunization_coverage_', 2025, NULL, NULL, '99.4', '99.4', '2025-05-26 23:53:06', NULL),
(19, 'rural_population_access_to_improved_drinking_water_source_', 2016, NULL, NULL, '99.5', '99.5', '2025-05-27 14:36:39', NULL),
(20, 'rural_population_access_to_improved_sanitation_', 2016, NULL, NULL, '98.9', '98.9', '2025-05-27 14:36:39', NULL),
(21, 'under_one_immunization_coverage_', 2016, NULL, NULL, '99.4', '99.4', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tourism`
--

CREATE TABLE `tourism` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tourism`
--

INSERT INTO `tourism` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'total_number_of_tourists_arrival', 2020, NULL, NULL, '20025', '49160', '2025-05-21 15:40:07', 'tourism'),
(2, 'total_number_of_tourists_arrival_tourists_from_countries_other_than_india_coti', 2020, NULL, NULL, '7973', '20957', '2025-05-21 15:40:07', 'tourism'),
(3, 'total_number_of_tourists_arrival_tourists_from_india', 2020, NULL, NULL, '12052', '28203', '2025-05-21 15:40:07', 'tourism'),
(4, 'total_tourists_revenue_from_sdf_usd_in_million2', 2020, NULL, NULL, '4.7', '12.1', '2025-05-21 15:40:07', 'tourism'),
(5, 'total_number_of_tourists_arrival', 2024, NULL, NULL, '20025', '49160', '2025-05-21 19:31:45', NULL),
(6, 'total_number_of_tourists_arrival_tourists_from_countries_other_than_india_coti', 2024, NULL, NULL, '7973', '20957', '2025-05-21 19:31:45', NULL),
(7, 'total_number_of_tourists_arrival_tourists_from_india', 2024, NULL, NULL, '12052', '28203', '2025-05-21 19:31:45', NULL),
(8, 'total_tourists_revenue_from_sdf_usd_in_million2', 2024, NULL, NULL, '4.7', '12.1', '2025-05-21 19:31:45', NULL),
(9, 'total_number_of_tourists_arrival', 2021, NULL, NULL, '20025', '49160', '2025-05-21 19:35:16', NULL),
(10, 'total_number_of_tourists_arrival_tourists_from_countries_other_than_india_coti', 2021, NULL, NULL, '7973', '20957', '2025-05-21 19:35:16', NULL),
(11, 'total_number_of_tourists_arrival_tourists_from_india', 2021, NULL, NULL, '12052', '28203', '2025-05-21 19:35:16', NULL),
(12, 'total_tourists_revenue_from_sdf_usd_in_million2', 2021, NULL, NULL, '4.7', '12.1', '2025-05-21 19:35:16', NULL),
(13, 'total_number_of_tourists_arrival', 2023, NULL, NULL, '20025', '49160', '2025-05-21 20:09:35', NULL),
(14, 'total_number_of_tourists_arrival_tourists_from_countries_other_than_india_coti', 2023, NULL, NULL, '7973', '20957', '2025-05-21 20:09:35', NULL),
(15, 'total_number_of_tourists_arrival_tourists_from_india', 2023, NULL, NULL, '12052', '28203', '2025-05-21 20:09:35', NULL),
(16, 'total_tourists_revenue_from_sdf_usd_in_million2', 2023, NULL, NULL, '4.7', '12.1', '2025-05-21 20:09:35', NULL),
(17, 'total_number_of_tourists_arrival', 2017, NULL, NULL, '20025', '49160', '2025-05-22 04:21:56', NULL),
(18, 'total_number_of_tourists_arrival_tourists_from_countries_other_than_india_coti', 2017, NULL, NULL, '7973', '20957', '2025-05-22 04:21:56', NULL),
(19, 'total_number_of_tourists_arrival_tourists_from_india', 2017, NULL, NULL, '12052', '28203', '2025-05-22 04:21:56', NULL),
(20, 'total_tourists_revenue_from_sdf_usd_in_million2', 2017, NULL, NULL, '4.7', '12.1', '2025-05-22 04:21:56', NULL),
(21, 'total_number_of_tourists_arrival', 2025, NULL, NULL, '20025', '49160', '2025-05-26 23:53:06', NULL),
(22, 'total_number_of_tourists_arrival_tourists_from_countries_other_than_india_coti', 2025, NULL, NULL, '7973', '20957', '2025-05-26 23:53:06', NULL),
(23, 'total_number_of_tourists_arrival_tourists_from_india', 2025, NULL, NULL, '12052', '28203', '2025-05-26 23:53:06', NULL),
(24, 'total_tourists_revenue_from_sdf_usd_in_million2', 2025, NULL, NULL, '4.7', '12.1', '2025-05-26 23:53:06', NULL),
(25, 'total_number_of_tourists_arrival', 2016, NULL, NULL, '20025', '49160', '2025-05-27 14:36:39', NULL),
(26, 'total_number_of_tourists_arrival_tourists_from_countries_other_than_india_coti', 2016, NULL, NULL, '7973', '20957', '2025-05-27 14:36:39', NULL),
(27, 'total_number_of_tourists_arrival_tourists_from_india', 2016, NULL, NULL, '12052', '28203', '2025-05-27 14:36:39', NULL),
(28, 'total_tourists_revenue_from_sdf_usd_in_million2', 2016, NULL, NULL, '4.7', '12.1', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trade`
--

CREATE TABLE `trade` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trade`
--

INSERT INTO `trade` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'trade_by_sector', 2020, NULL, NULL, '22613', '22513', '2025-05-21 15:40:07', 'trade'),
(2, 'trade_by_sector_micro_trade', 2020, NULL, NULL, '9553', '9549', '2025-05-21 15:40:07', 'trade'),
(3, 'trade_by_sector_retail', 2020, NULL, NULL, '12179', '12072', '2025-05-21 15:40:07', 'trade'),
(4, 'trade_by_sector_wholesale', 2020, NULL, NULL, '881', '892', '2025-05-21 15:40:07', 'trade'),
(5, 'trade_by_ownership', 2020, NULL, NULL, '22613', '22513', '2025-05-21 15:40:07', 'trade'),
(6, 'trade_by_ownership_sole_proprietorship', 2020, NULL, NULL, '21965', '21836', '2025-05-21 15:40:07', 'trade'),
(7, 'trade_by_ownership_partnership', 2020, NULL, NULL, '218', '212', '2025-05-21 15:40:07', 'trade'),
(8, 'trade_by_ownership_company', 2020, NULL, NULL, '383', '418', '2025-05-21 15:40:07', 'trade'),
(9, 'trade_by_ownership_others', 2020, NULL, NULL, '47', '47', '2025-05-21 15:40:07', 'trade'),
(10, 'trade_by_size', 2020, NULL, NULL, '22613', '22513', '2025-05-21 15:40:07', 'trade'),
(11, 'trade_by_size_large', 2020, NULL, NULL, '1396', '1412', '2025-05-21 15:40:07', 'trade'),
(12, 'trade_by_size_medium', 2020, NULL, NULL, '561', '560', '2025-05-21 15:40:07', 'trade'),
(13, 'trade_by_size_small', 2020, NULL, NULL, '11103', '10995', '2025-05-21 15:40:07', 'trade'),
(14, 'trade_by_size_cottage', 2020, NULL, NULL, '9553', '9546', '2025-05-21 15:40:07', 'trade'),
(15, 'trade_by_sector', 2024, NULL, NULL, '22613', '22513', '2025-05-21 19:31:45', NULL),
(16, 'trade_by_sector_micro_trade', 2024, NULL, NULL, '9553', '9549', '2025-05-21 19:31:45', NULL),
(17, 'trade_by_sector_retail', 2024, NULL, NULL, '12179', '12072', '2025-05-21 19:31:45', NULL),
(18, 'trade_by_sector_wholesale', 2024, NULL, NULL, '881', '892', '2025-05-21 19:31:45', NULL),
(19, 'trade_by_ownership', 2024, NULL, NULL, '22613', '22513', '2025-05-21 19:31:45', NULL),
(20, 'trade_by_ownership_sole_proprietorship', 2024, NULL, NULL, '21965', '21836', '2025-05-21 19:31:45', NULL),
(21, 'trade_by_ownership_partnership', 2024, NULL, NULL, '218', '212', '2025-05-21 19:31:45', NULL),
(22, 'trade_by_ownership_company', 2024, NULL, NULL, '383', '418', '2025-05-21 19:31:45', NULL),
(23, 'trade_by_ownership_others', 2024, NULL, NULL, '47', '47', '2025-05-21 19:31:45', NULL),
(24, 'trade_by_size', 2024, NULL, NULL, '22613', '22513', '2025-05-21 19:31:45', NULL),
(25, 'trade_by_size_large', 2024, NULL, NULL, '1396', '1412', '2025-05-21 19:31:45', NULL),
(26, 'trade_by_size_medium', 2024, NULL, NULL, '561', '560', '2025-05-21 19:31:45', NULL),
(27, 'trade_by_size_small', 2024, NULL, NULL, '11103', '10995', '2025-05-21 19:31:45', NULL),
(28, 'trade_by_size_cottage', 2024, NULL, NULL, '9553', '9546', '2025-05-21 19:31:45', NULL),
(29, 'trade_by_sector', 2021, NULL, NULL, '22613', '22513', '2025-05-21 19:35:16', NULL),
(30, 'trade_by_sector_micro_trade', 2021, NULL, NULL, '9553', '9549', '2025-05-21 19:35:16', NULL),
(31, 'trade_by_sector_retail', 2021, NULL, NULL, '12179', '12072', '2025-05-21 19:35:16', NULL),
(32, 'trade_by_sector_wholesale', 2021, NULL, NULL, '881', '892', '2025-05-21 19:35:16', NULL),
(33, 'trade_by_ownership', 2021, NULL, NULL, '22613', '22513', '2025-05-21 19:35:16', NULL),
(34, 'trade_by_ownership_sole_proprietorship', 2021, NULL, NULL, '21965', '21836', '2025-05-21 19:35:16', NULL),
(35, 'trade_by_ownership_partnership', 2021, NULL, NULL, '218', '212', '2025-05-21 19:35:16', NULL),
(36, 'trade_by_ownership_company', 2021, NULL, NULL, '383', '418', '2025-05-21 19:35:16', NULL),
(37, 'trade_by_ownership_others', 2021, NULL, NULL, '47', '47', '2025-05-21 19:35:16', NULL),
(38, 'trade_by_size', 2021, NULL, NULL, '22613', '22513', '2025-05-21 19:35:16', NULL),
(39, 'trade_by_size_large', 2021, NULL, NULL, '1396', '1412', '2025-05-21 19:35:16', NULL),
(40, 'trade_by_size_medium', 2021, NULL, NULL, '561', '560', '2025-05-21 19:35:16', NULL),
(41, 'trade_by_size_small', 2021, NULL, NULL, '11103', '10995', '2025-05-21 19:35:16', NULL),
(42, 'trade_by_size_cottage', 2021, NULL, NULL, '9553', '9546', '2025-05-21 19:35:16', NULL),
(43, 'trade_by_sector', 2023, NULL, NULL, '22613', '22513', '2025-05-21 20:09:35', NULL),
(44, 'trade_by_sector_micro_trade', 2023, NULL, NULL, '9553', '9549', '2025-05-21 20:09:35', NULL),
(45, 'trade_by_sector_retail', 2023, NULL, NULL, '12179', '12072', '2025-05-21 20:09:35', NULL),
(46, 'trade_by_sector_wholesale', 2023, NULL, NULL, '881', '892', '2025-05-21 20:09:35', NULL),
(47, 'trade_by_ownership', 2023, NULL, NULL, '22613', '22513', '2025-05-21 20:09:35', NULL),
(48, 'trade_by_ownership_sole_proprietorship', 2023, NULL, NULL, '21965', '21836', '2025-05-21 20:09:35', NULL),
(49, 'trade_by_ownership_partnership', 2023, NULL, NULL, '218', '212', '2025-05-21 20:09:35', NULL),
(50, 'trade_by_ownership_company', 2023, NULL, NULL, '383', '418', '2025-05-21 20:09:35', NULL),
(51, 'trade_by_ownership_others', 2023, NULL, NULL, '47', '47', '2025-05-21 20:09:35', NULL),
(52, 'trade_by_size', 2023, NULL, NULL, '22613', '22513', '2025-05-21 20:09:35', NULL),
(53, 'trade_by_size_large', 2023, NULL, NULL, '1396', '1412', '2025-05-21 20:09:35', NULL),
(54, 'trade_by_size_medium', 2023, NULL, NULL, '561', '560', '2025-05-21 20:09:35', NULL),
(55, 'trade_by_size_small', 2023, NULL, NULL, '11103', '10995', '2025-05-21 20:09:35', NULL),
(56, 'trade_by_size_cottage', 2023, NULL, NULL, '9553', '9546', '2025-05-21 20:09:35', NULL),
(57, 'trade_by_sector', 2017, NULL, NULL, '22613', '22513', '2025-05-22 04:21:56', NULL),
(58, 'trade_by_sector_micro_trade', 2017, NULL, NULL, '9553', '9549', '2025-05-22 04:21:56', NULL),
(59, 'trade_by_sector_retail', 2017, NULL, NULL, '12179', '12072', '2025-05-22 04:21:56', NULL),
(60, 'trade_by_sector_wholesale', 2017, NULL, NULL, '881', '892', '2025-05-22 04:21:56', NULL),
(61, 'trade_by_ownership', 2017, NULL, NULL, '22613', '22513', '2025-05-22 04:21:56', NULL),
(62, 'trade_by_ownership_sole_proprietorship', 2017, NULL, NULL, '21965', '21836', '2025-05-22 04:21:56', NULL),
(63, 'trade_by_ownership_partnership', 2017, NULL, NULL, '218', '212', '2025-05-22 04:21:56', NULL),
(64, 'trade_by_ownership_company', 2017, NULL, NULL, '383', '418', '2025-05-22 04:21:56', NULL),
(65, 'trade_by_ownership_others', 2017, NULL, NULL, '47', '47', '2025-05-22 04:21:56', NULL),
(66, 'trade_by_size', 2017, NULL, NULL, '22613', '22513', '2025-05-22 04:21:56', NULL),
(67, 'trade_by_size_large', 2017, NULL, NULL, '1396', '1412', '2025-05-22 04:21:56', NULL),
(68, 'trade_by_size_medium', 2017, NULL, NULL, '561', '560', '2025-05-22 04:21:56', NULL),
(69, 'trade_by_size_small', 2017, NULL, NULL, '11103', '10995', '2025-05-22 04:21:56', NULL),
(70, 'trade_by_size_cottage', 2017, NULL, NULL, '9553', '9546', '2025-05-22 04:21:56', NULL),
(71, 'trade_by_sector', 2025, NULL, NULL, '22613', '22513', '2025-05-26 23:53:06', NULL),
(72, 'trade_by_sector_micro_trade', 2025, NULL, NULL, '9553', '9549', '2025-05-26 23:53:06', NULL),
(73, 'trade_by_sector_retail', 2025, NULL, NULL, '12179', '12072', '2025-05-26 23:53:06', NULL),
(74, 'trade_by_sector_wholesale', 2025, NULL, NULL, '881', '892', '2025-05-26 23:53:06', NULL),
(75, 'trade_by_ownership', 2025, NULL, NULL, '22613', '22513', '2025-05-26 23:53:06', NULL),
(76, 'trade_by_ownership_sole_proprietorship', 2025, NULL, NULL, '21965', '21836', '2025-05-26 23:53:06', NULL),
(77, 'trade_by_ownership_partnership', 2025, NULL, NULL, '218', '212', '2025-05-26 23:53:06', NULL),
(78, 'trade_by_ownership_company', 2025, NULL, NULL, '383', '418', '2025-05-26 23:53:06', NULL),
(79, 'trade_by_ownership_others', 2025, NULL, NULL, '47', '47', '2025-05-26 23:53:06', NULL),
(80, 'trade_by_size', 2025, NULL, NULL, '22613', '22513', '2025-05-26 23:53:06', NULL),
(81, 'trade_by_size_large', 2025, NULL, NULL, '1396', '1412', '2025-05-26 23:53:06', NULL),
(82, 'trade_by_size_medium', 2025, NULL, NULL, '561', '560', '2025-05-26 23:53:06', NULL),
(83, 'trade_by_size_small', 2025, NULL, NULL, '11103', '10995', '2025-05-26 23:53:06', NULL),
(84, 'trade_by_size_cottage', 2025, NULL, NULL, '9553', '9546', '2025-05-26 23:53:06', NULL),
(85, 'trade_by_sector', 2016, NULL, NULL, '22613', '22513', '2025-05-27 14:36:39', NULL),
(86, 'trade_by_sector_micro_trade', 2016, NULL, NULL, '9553', '9549', '2025-05-27 14:36:39', NULL),
(87, 'trade_by_sector_retail', 2016, NULL, NULL, '12179', '12072', '2025-05-27 14:36:39', NULL),
(88, 'trade_by_sector_wholesale', 2016, NULL, NULL, '881', '892', '2025-05-27 14:36:39', NULL),
(89, 'trade_by_ownership', 2016, NULL, NULL, '22613', '22513', '2025-05-27 14:36:39', NULL),
(90, 'trade_by_ownership_sole_proprietorship', 2016, NULL, NULL, '21965', '21836', '2025-05-27 14:36:39', NULL),
(91, 'trade_by_ownership_partnership', 2016, NULL, NULL, '218', '212', '2025-05-27 14:36:39', NULL),
(92, 'trade_by_ownership_company', 2016, NULL, NULL, '383', '418', '2025-05-27 14:36:39', NULL),
(93, 'trade_by_ownership_others', 2016, NULL, NULL, '47', '47', '2025-05-27 14:36:39', NULL),
(94, 'trade_by_size', 2016, NULL, NULL, '22613', '22513', '2025-05-27 14:36:39', NULL),
(95, 'trade_by_size_large', 2016, NULL, NULL, '1396', '1412', '2025-05-27 14:36:39', NULL),
(96, 'trade_by_size_medium', 2016, NULL, NULL, '561', '560', '2025-05-27 14:36:39', NULL),
(97, 'trade_by_size_small', 2016, NULL, NULL, '11103', '10995', '2025-05-27 14:36:39', NULL),
(98, 'trade_by_size_cottage', 2016, NULL, NULL, '9553', '9546', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transport_communications`
--

CREATE TABLE `transport_communications` (
  `id` int(11) NOT NULL,
  `indicators` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  `q4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transport_communications`
--

INSERT INTO `transport_communications` (`id`, `indicators`, `year`, `q1`, `q2`, `q3`, `q4`, `created_at`, `tableName`) VALUES
(1, 'length_of_road_km1', 2020, NULL, NULL, '18343', '18115.5', '2025-05-21 15:40:07', 'transport_communications'),
(2, 'number_of_motorable_bridges', 2020, NULL, NULL, '388', '388', '2025-05-21 15:40:07', 'transport_communications'),
(3, 'number_of_suspension_bridges', 2020, NULL, NULL, '437', '438', '2025-05-21 15:40:07', 'transport_communications'),
(4, 'number_of_telephone_exchange_stations', 2020, NULL, NULL, '106', '106', '2025-05-21 15:40:07', 'transport_communications'),
(5, 'number_of_telephone_connections', 2020, NULL, NULL, '10831', '10335', '2025-05-21 15:40:07', 'transport_communications'),
(6, 'number_of_internet_connections', 2020, NULL, NULL, '764501', '805599', '2025-05-21 15:40:07', 'transport_communications'),
(7, 'number_of_internet_connections_lease_line_connections', 2020, NULL, NULL, '24385', '29122', '2025-05-21 15:40:07', 'transport_communications'),
(8, 'number_of_internet_connections_broadband_internet_connections', 2020, NULL, NULL, '4781', '5021', '2025-05-21 15:40:07', 'transport_communications'),
(9, 'number_of_internet_connections_edgegprs3g4g_connections', 2020, NULL, NULL, '712283', '746909', '2025-05-21 15:40:07', 'transport_communications'),
(10, 'number_of_internet_connections_5g_connections', 2020, NULL, NULL, '23052', '24547', '2025-05-21 15:40:07', 'transport_communications'),
(11, 'bmobile_subscribers', 2020, NULL, NULL, '496446', '500862', '2025-05-21 15:40:07', 'transport_communications'),
(12, 'tashicell_subscribers', 2020, NULL, NULL, '305171', '338644', '2025-05-21 15:40:07', 'transport_communications'),
(13, 'number_of_revenue_earning_passengers_carried_by_druk_air', 2020, NULL, NULL, '45437', '70912', '2025-05-21 15:40:07', 'transport_communications'),
(14, 'revenue_earned_by_druk_air_nu_in_million', 2020, NULL, NULL, '948.89', '1638.38', '2025-05-21 15:40:07', 'transport_communications'),
(15, 'number_of_revenue_earning_passengers_carried_by_bhutan_airlines', 2020, NULL, NULL, '31721', '39641', '2025-05-21 15:40:07', 'transport_communications'),
(16, 'revenue_earned_by_bhutan_airlines_nu_in_million', 2020, NULL, NULL, '305.12', '512.39', '2025-05-21 15:40:07', 'transport_communications'),
(17, 'number_of_revenue_earning_passengers_carried_by_helicopter_service', 2020, NULL, NULL, '384', '547', '2025-05-21 15:40:07', 'transport_communications'),
(18, 'revenue_earned_by_helicopter_service_nu_in_million', 2020, NULL, NULL, '30.82', '89.25', '2025-05-21 15:40:07', 'transport_communications'),
(19, 'number_of_motor_vehicles_registered', 2020, NULL, NULL, '127589', '123456', '2025-05-21 15:40:07', 'transport_communications'),
(20, 'number_of_motor_vehicles_registered_heavy__medium', 2020, NULL, NULL, '14711', '11179', '2025-05-21 15:40:07', 'transport_communications'),
(21, 'number_of_motor_vehicles_registered_light', 2020, NULL, NULL, '83693', '86035', '2025-05-21 15:40:07', 'transport_communications'),
(22, 'number_of_motor_vehicles_registered_two_wheeler', 2020, NULL, NULL, '12411', '10182', '2025-05-21 15:40:07', 'transport_communications'),
(23, 'number_of_motor_vehicles_registered_taxi', 2020, NULL, NULL, '7127', '6685', '2025-05-21 15:40:07', 'transport_communications'),
(24, 'number_of_motor_vehicles_registered_electric_vehicle2', 2020, NULL, NULL, '368', '375', '2025-05-21 15:40:07', 'transport_communications'),
(25, 'number_of_motor_vehicles_registered_others3', 2020, NULL, NULL, '9279', '9000', '2025-05-21 15:40:07', 'transport_communications'),
(26, 'length_of_road_km1', 2024, NULL, NULL, '18343', '18115.5', '2025-05-21 19:31:45', NULL),
(27, 'number_of_motorable_bridges', 2024, NULL, NULL, '388', '388', '2025-05-21 19:31:45', NULL),
(28, 'number_of_suspension_bridges', 2024, NULL, NULL, '437', '438', '2025-05-21 19:31:45', NULL),
(29, 'number_of_telephone_exchange_stations', 2024, NULL, NULL, '106', '106', '2025-05-21 19:31:45', NULL),
(30, 'number_of_telephone_connections', 2024, NULL, NULL, '10831', '10335', '2025-05-21 19:31:45', NULL),
(31, 'number_of_internet_connections', 2024, NULL, NULL, '764501', '805599', '2025-05-21 19:31:45', NULL),
(32, 'number_of_internet_connections_lease_line_connections', 2024, NULL, NULL, '24385', '29122', '2025-05-21 19:31:45', NULL),
(33, 'number_of_internet_connections_broadband_internet_connections', 2024, NULL, NULL, '4781', '5021', '2025-05-21 19:31:45', NULL),
(34, 'number_of_internet_connections_edgegprs3g4g_connections', 2024, NULL, NULL, '712283', '746909', '2025-05-21 19:31:45', NULL),
(35, 'number_of_internet_connections_5g_connections', 2024, NULL, NULL, '23052', '24547', '2025-05-21 19:31:45', NULL),
(36, 'bmobile_subscribers', 2024, NULL, NULL, '496446', '500862', '2025-05-21 19:31:45', NULL),
(37, 'tashicell_subscribers', 2024, NULL, NULL, '305171', '338644', '2025-05-21 19:31:45', NULL),
(38, 'number_of_revenue_earning_passengers_carried_by_druk_air', 2024, NULL, NULL, '45437', '70912', '2025-05-21 19:31:45', NULL),
(39, 'revenue_earned_by_druk_air_nu_in_million', 2024, NULL, NULL, '948.89', '1638.38', '2025-05-21 19:31:45', NULL),
(40, 'number_of_revenue_earning_passengers_carried_by_bhutan_airlines', 2024, NULL, NULL, '31721', '39641', '2025-05-21 19:31:45', NULL),
(41, 'revenue_earned_by_bhutan_airlines_nu_in_million', 2024, NULL, NULL, '305.12', '512.39', '2025-05-21 19:31:45', NULL),
(42, 'number_of_revenue_earning_passengers_carried_by_helicopter_service', 2024, NULL, NULL, '384', '547', '2025-05-21 19:31:45', NULL),
(43, 'revenue_earned_by_helicopter_service_nu_in_million', 2024, NULL, NULL, '30.82', '89.25', '2025-05-21 19:31:45', NULL),
(44, 'number_of_motor_vehicles_registered', 2024, NULL, NULL, '127589', '123456', '2025-05-21 19:31:45', NULL),
(45, 'number_of_motor_vehicles_registered_heavy__medium', 2024, NULL, NULL, '14711', '11179', '2025-05-21 19:31:45', NULL),
(46, 'number_of_motor_vehicles_registered_light', 2024, NULL, NULL, '83693', '86035', '2025-05-21 19:31:45', NULL),
(47, 'number_of_motor_vehicles_registered_two_wheeler', 2024, NULL, NULL, '12411', '10182', '2025-05-21 19:31:45', NULL),
(48, 'number_of_motor_vehicles_registered_taxi', 2024, NULL, NULL, '7127', '6685', '2025-05-21 19:31:45', NULL),
(49, 'number_of_motor_vehicles_registered_electric_vehicle2', 2024, NULL, NULL, '368', '375', '2025-05-21 19:31:45', NULL),
(50, 'number_of_motor_vehicles_registered_others3', 2024, NULL, NULL, '9279', '9000', '2025-05-21 19:31:45', NULL),
(51, 'length_of_road_km1', 2021, NULL, NULL, '18343', '18115.5', '2025-05-21 19:35:16', NULL),
(52, 'number_of_motorable_bridges', 2021, NULL, NULL, '388', '388', '2025-05-21 19:35:16', NULL),
(53, 'number_of_suspension_bridges', 2021, NULL, NULL, '437', '438', '2025-05-21 19:35:16', NULL),
(54, 'number_of_telephone_exchange_stations', 2021, NULL, NULL, '106', '106', '2025-05-21 19:35:16', NULL),
(55, 'number_of_telephone_connections', 2021, NULL, NULL, '10831', '10335', '2025-05-21 19:35:16', NULL),
(56, 'number_of_internet_connections', 2021, NULL, NULL, '764501', '805599', '2025-05-21 19:35:16', NULL),
(57, 'number_of_internet_connections_lease_line_connections', 2021, NULL, NULL, '24385', '29122', '2025-05-21 19:35:16', NULL),
(58, 'number_of_internet_connections_broadband_internet_connections', 2021, NULL, NULL, '4781', '5021', '2025-05-21 19:35:16', NULL),
(59, 'number_of_internet_connections_edgegprs3g4g_connections', 2021, NULL, NULL, '712283', '746909', '2025-05-21 19:35:16', NULL),
(60, 'number_of_internet_connections_5g_connections', 2021, NULL, NULL, '23052', '24547', '2025-05-21 19:35:16', NULL),
(61, 'bmobile_subscribers', 2021, NULL, NULL, '496446', '500862', '2025-05-21 19:35:16', NULL),
(62, 'tashicell_subscribers', 2021, NULL, NULL, '305171', '338644', '2025-05-21 19:35:16', NULL),
(63, 'number_of_revenue_earning_passengers_carried_by_druk_air', 2021, NULL, NULL, '45437', '70912', '2025-05-21 19:35:16', NULL),
(64, 'revenue_earned_by_druk_air_nu_in_million', 2021, NULL, NULL, '948.89', '1638.38', '2025-05-21 19:35:16', NULL),
(65, 'number_of_revenue_earning_passengers_carried_by_bhutan_airlines', 2021, NULL, NULL, '31721', '39641', '2025-05-21 19:35:16', NULL),
(66, 'revenue_earned_by_bhutan_airlines_nu_in_million', 2021, NULL, NULL, '305.12', '512.39', '2025-05-21 19:35:16', NULL),
(67, 'number_of_revenue_earning_passengers_carried_by_helicopter_service', 2021, NULL, NULL, '384', '547', '2025-05-21 19:35:16', NULL),
(68, 'revenue_earned_by_helicopter_service_nu_in_million', 2021, NULL, NULL, '30.82', '89.25', '2025-05-21 19:35:16', NULL),
(69, 'number_of_motor_vehicles_registered', 2021, NULL, NULL, '127589', '123456', '2025-05-21 19:35:16', NULL),
(70, 'number_of_motor_vehicles_registered_heavy__medium', 2021, NULL, NULL, '14711', '11179', '2025-05-21 19:35:16', NULL),
(71, 'number_of_motor_vehicles_registered_light', 2021, NULL, NULL, '83693', '86035', '2025-05-21 19:35:16', NULL),
(72, 'number_of_motor_vehicles_registered_two_wheeler', 2021, NULL, NULL, '12411', '10182', '2025-05-21 19:35:16', NULL),
(73, 'number_of_motor_vehicles_registered_taxi', 2021, NULL, NULL, '7127', '6685', '2025-05-21 19:35:16', NULL),
(74, 'number_of_motor_vehicles_registered_electric_vehicle2', 2021, NULL, NULL, '368', '375', '2025-05-21 19:35:16', NULL),
(75, 'number_of_motor_vehicles_registered_others3', 2021, NULL, NULL, '9279', '9000', '2025-05-21 19:35:16', NULL),
(76, 'length_of_road_km1', 2023, NULL, NULL, '18343', '18115.5', '2025-05-21 20:09:35', NULL),
(77, 'number_of_motorable_bridges', 2023, NULL, NULL, '388', '388', '2025-05-21 20:09:35', NULL),
(78, 'number_of_suspension_bridges', 2023, NULL, NULL, '437', '438', '2025-05-21 20:09:35', NULL),
(79, 'number_of_telephone_exchange_stations', 2023, NULL, NULL, '106', '106', '2025-05-21 20:09:35', NULL),
(80, 'number_of_telephone_connections', 2023, NULL, NULL, '10831', '10335', '2025-05-21 20:09:35', NULL),
(81, 'number_of_internet_connections', 2023, NULL, NULL, '764501', '805599', '2025-05-21 20:09:35', NULL),
(82, 'number_of_internet_connections_lease_line_connections', 2023, NULL, NULL, '24385', '29122', '2025-05-21 20:09:35', NULL),
(83, 'number_of_internet_connections_broadband_internet_connections', 2023, NULL, NULL, '4781', '5021', '2025-05-21 20:09:35', NULL),
(84, 'number_of_internet_connections_edgegprs3g4g_connections', 2023, NULL, NULL, '712283', '746909', '2025-05-21 20:09:35', NULL),
(85, 'number_of_internet_connections_5g_connections', 2023, NULL, NULL, '23052', '24547', '2025-05-21 20:09:35', NULL),
(86, 'bmobile_subscribers', 2023, NULL, NULL, '496446', '500862', '2025-05-21 20:09:35', NULL),
(87, 'tashicell_subscribers', 2023, NULL, NULL, '305171', '338644', '2025-05-21 20:09:35', NULL),
(88, 'number_of_revenue_earning_passengers_carried_by_druk_air', 2023, NULL, NULL, '45437', '70912', '2025-05-21 20:09:35', NULL),
(89, 'revenue_earned_by_druk_air_nu_in_million', 2023, NULL, NULL, '948.89', '1638.38', '2025-05-21 20:09:35', NULL),
(90, 'number_of_revenue_earning_passengers_carried_by_bhutan_airlines', 2023, NULL, NULL, '31721', '39641', '2025-05-21 20:09:35', NULL),
(91, 'revenue_earned_by_bhutan_airlines_nu_in_million', 2023, NULL, NULL, '305.12', '512.39', '2025-05-21 20:09:35', NULL),
(92, 'number_of_revenue_earning_passengers_carried_by_helicopter_service', 2023, NULL, NULL, '384', '547', '2025-05-21 20:09:35', NULL),
(93, 'revenue_earned_by_helicopter_service_nu_in_million', 2023, NULL, NULL, '30.82', '89.25', '2025-05-21 20:09:35', NULL),
(94, 'number_of_motor_vehicles_registered', 2023, NULL, NULL, '127589', '123456', '2025-05-21 20:09:35', NULL),
(95, 'number_of_motor_vehicles_registered_heavy__medium', 2023, NULL, NULL, '14711', '11179', '2025-05-21 20:09:35', NULL),
(96, 'number_of_motor_vehicles_registered_light', 2023, NULL, NULL, '83693', '86035', '2025-05-21 20:09:35', NULL),
(97, 'number_of_motor_vehicles_registered_two_wheeler', 2023, NULL, NULL, '12411', '10182', '2025-05-21 20:09:35', NULL),
(98, 'number_of_motor_vehicles_registered_taxi', 2023, NULL, NULL, '7127', '6685', '2025-05-21 20:09:35', NULL),
(99, 'number_of_motor_vehicles_registered_electric_vehicle2', 2023, NULL, NULL, '368', '375', '2025-05-21 20:09:35', NULL),
(100, 'number_of_motor_vehicles_registered_others3', 2023, NULL, NULL, '9279', '9000', '2025-05-21 20:09:35', NULL),
(101, 'length_of_road_km1', 2017, NULL, NULL, '18343', '18115.5', '2025-05-22 04:21:56', NULL),
(102, 'number_of_motorable_bridges', 2017, NULL, NULL, '388', '388', '2025-05-22 04:21:56', NULL),
(103, 'number_of_suspension_bridges', 2017, NULL, NULL, '437', '438', '2025-05-22 04:21:56', NULL),
(104, 'number_of_telephone_exchange_stations', 2017, NULL, NULL, '106', '106', '2025-05-22 04:21:56', NULL),
(105, 'number_of_telephone_connections', 2017, NULL, NULL, '10831', '10335', '2025-05-22 04:21:56', NULL),
(106, 'number_of_internet_connections', 2017, NULL, NULL, '764501', '805599', '2025-05-22 04:21:56', NULL),
(107, 'number_of_internet_connections_lease_line_connections', 2017, NULL, NULL, '24385', '29122', '2025-05-22 04:21:56', NULL),
(108, 'number_of_internet_connections_broadband_internet_connections', 2017, NULL, NULL, '4781', '5021', '2025-05-22 04:21:56', NULL),
(109, 'number_of_internet_connections_edgegprs3g4g_connections', 2017, NULL, NULL, '712283', '746909', '2025-05-22 04:21:56', NULL),
(110, 'number_of_internet_connections_5g_connections', 2017, NULL, NULL, '23052', '24547', '2025-05-22 04:21:56', NULL),
(111, 'bmobile_subscribers', 2017, NULL, NULL, '496446', '500862', '2025-05-22 04:21:56', NULL),
(112, 'tashicell_subscribers', 2017, NULL, NULL, '305171', '338644', '2025-05-22 04:21:56', NULL),
(113, 'number_of_revenue_earning_passengers_carried_by_druk_air', 2017, NULL, NULL, '45437', '70912', '2025-05-22 04:21:56', NULL),
(114, 'revenue_earned_by_druk_air_nu_in_million', 2017, NULL, NULL, '948.89', '1638.38', '2025-05-22 04:21:56', NULL),
(115, 'number_of_revenue_earning_passengers_carried_by_bhutan_airlines', 2017, NULL, NULL, '31721', '39641', '2025-05-22 04:21:56', NULL),
(116, 'revenue_earned_by_bhutan_airlines_nu_in_million', 2017, NULL, NULL, '305.12', '512.39', '2025-05-22 04:21:56', NULL),
(117, 'number_of_revenue_earning_passengers_carried_by_helicopter_service', 2017, NULL, NULL, '384', '547', '2025-05-22 04:21:56', NULL),
(118, 'revenue_earned_by_helicopter_service_nu_in_million', 2017, NULL, NULL, '30.82', '89.25', '2025-05-22 04:21:56', NULL),
(119, 'number_of_motor_vehicles_registered', 2017, NULL, NULL, '127589', '123456', '2025-05-22 04:21:56', NULL),
(120, 'number_of_motor_vehicles_registered_heavy__medium', 2017, NULL, NULL, '14711', '11179', '2025-05-22 04:21:56', NULL),
(121, 'number_of_motor_vehicles_registered_light', 2017, NULL, NULL, '83693', '86035', '2025-05-22 04:21:56', NULL),
(122, 'number_of_motor_vehicles_registered_two_wheeler', 2017, NULL, NULL, '12411', '10182', '2025-05-22 04:21:56', NULL),
(123, 'number_of_motor_vehicles_registered_taxi', 2017, NULL, NULL, '7127', '6685', '2025-05-22 04:21:56', NULL),
(124, 'number_of_motor_vehicles_registered_electric_vehicle2', 2017, NULL, NULL, '368', '375', '2025-05-22 04:21:56', NULL),
(125, 'number_of_motor_vehicles_registered_others3', 2017, NULL, NULL, '9279', '9000', '2025-05-22 04:21:56', NULL),
(126, 'length_of_road_km1', 2025, NULL, NULL, '18343', '18115.5', '2025-05-26 23:53:06', NULL),
(127, 'number_of_motorable_bridges', 2025, NULL, NULL, '388', '388', '2025-05-26 23:53:06', NULL),
(128, 'number_of_suspension_bridges', 2025, NULL, NULL, '437', '438', '2025-05-26 23:53:06', NULL),
(129, 'number_of_telephone_exchange_stations', 2025, NULL, NULL, '106', '106', '2025-05-26 23:53:06', NULL),
(130, 'number_of_telephone_connections', 2025, NULL, NULL, '10831', '10335', '2025-05-26 23:53:06', NULL),
(131, 'number_of_internet_connections', 2025, NULL, NULL, '764501', '805599', '2025-05-26 23:53:06', NULL),
(132, 'number_of_internet_connections_lease_line_connections', 2025, NULL, NULL, '24385', '29122', '2025-05-26 23:53:06', NULL),
(133, 'number_of_internet_connections_broadband_internet_connections', 2025, NULL, NULL, '4781', '5021', '2025-05-26 23:53:06', NULL),
(134, 'number_of_internet_connections_edgegprs3g4g_connections', 2025, NULL, NULL, '712283', '746909', '2025-05-26 23:53:06', NULL),
(135, 'number_of_internet_connections_5g_connections', 2025, NULL, NULL, '23052', '24547', '2025-05-26 23:53:06', NULL),
(136, 'bmobile_subscribers', 2025, NULL, NULL, '496446', '500862', '2025-05-26 23:53:06', NULL),
(137, 'tashicell_subscribers', 2025, NULL, NULL, '305171', '338644', '2025-05-26 23:53:06', NULL),
(138, 'number_of_revenue_earning_passengers_carried_by_druk_air', 2025, NULL, NULL, '45437', '70912', '2025-05-26 23:53:06', NULL),
(139, 'revenue_earned_by_druk_air_nu_in_million', 2025, NULL, NULL, '948.89', '1638.38', '2025-05-26 23:53:06', NULL),
(140, 'number_of_revenue_earning_passengers_carried_by_bhutan_airlines', 2025, NULL, NULL, '31721', '39641', '2025-05-26 23:53:06', NULL),
(141, 'revenue_earned_by_bhutan_airlines_nu_in_million', 2025, NULL, NULL, '305.12', '512.39', '2025-05-26 23:53:06', NULL),
(142, 'number_of_revenue_earning_passengers_carried_by_helicopter_service', 2025, NULL, NULL, '384', '547', '2025-05-26 23:53:06', NULL),
(143, 'revenue_earned_by_helicopter_service_nu_in_million', 2025, NULL, NULL, '30.82', '89.25', '2025-05-26 23:53:06', NULL),
(144, 'number_of_motor_vehicles_registered', 2025, NULL, NULL, '127589', '123456', '2025-05-26 23:53:06', NULL),
(145, 'number_of_motor_vehicles_registered_heavy__medium', 2025, NULL, NULL, '14711', '11179', '2025-05-26 23:53:06', NULL),
(146, 'number_of_motor_vehicles_registered_light', 2025, NULL, NULL, '83693', '86035', '2025-05-26 23:53:06', NULL),
(147, 'number_of_motor_vehicles_registered_two_wheeler', 2025, NULL, NULL, '12411', '10182', '2025-05-26 23:53:06', NULL),
(148, 'number_of_motor_vehicles_registered_taxi', 2025, NULL, NULL, '7127', '6685', '2025-05-26 23:53:06', NULL),
(149, 'number_of_motor_vehicles_registered_electric_vehicle2', 2025, NULL, NULL, '368', '375', '2025-05-26 23:53:06', NULL),
(150, 'number_of_motor_vehicles_registered_others3', 2025, NULL, NULL, '9279', '9000', '2025-05-26 23:53:06', NULL),
(151, 'length_of_road_km1', 2016, NULL, NULL, '18343', '18115.5', '2025-05-27 14:36:39', NULL),
(152, 'number_of_motorable_bridges', 2016, NULL, NULL, '388', '388', '2025-05-27 14:36:39', NULL),
(153, 'number_of_suspension_bridges', 2016, NULL, NULL, '437', '438', '2025-05-27 14:36:39', NULL),
(154, 'number_of_telephone_exchange_stations', 2016, NULL, NULL, '106', '106', '2025-05-27 14:36:39', NULL),
(155, 'number_of_telephone_connections', 2016, NULL, NULL, '10831', '10335', '2025-05-27 14:36:39', NULL),
(156, 'number_of_internet_connections', 2016, NULL, NULL, '764501', '805599', '2025-05-27 14:36:39', NULL),
(157, 'number_of_internet_connections_lease_line_connections', 2016, NULL, NULL, '24385', '29122', '2025-05-27 14:36:39', NULL),
(158, 'number_of_internet_connections_broadband_internet_connections', 2016, NULL, NULL, '4781', '5021', '2025-05-27 14:36:39', NULL),
(159, 'number_of_internet_connections_edgegprs3g4g_connections', 2016, NULL, NULL, '712283', '746909', '2025-05-27 14:36:39', NULL),
(160, 'number_of_internet_connections_5g_connections', 2016, NULL, NULL, '23052', '24547', '2025-05-27 14:36:39', NULL),
(161, 'bmobile_subscribers', 2016, NULL, NULL, '496446', '500862', '2025-05-27 14:36:39', NULL),
(162, 'tashicell_subscribers', 2016, NULL, NULL, '305171', '338644', '2025-05-27 14:36:39', NULL),
(163, 'number_of_revenue_earning_passengers_carried_by_druk_air', 2016, NULL, NULL, '45437', '70912', '2025-05-27 14:36:39', NULL),
(164, 'revenue_earned_by_druk_air_nu_in_million', 2016, NULL, NULL, '948.89', '1638.38', '2025-05-27 14:36:39', NULL),
(165, 'number_of_revenue_earning_passengers_carried_by_bhutan_airlines', 2016, NULL, NULL, '31721', '39641', '2025-05-27 14:36:39', NULL),
(166, 'revenue_earned_by_bhutan_airlines_nu_in_million', 2016, NULL, NULL, '305.12', '512.39', '2025-05-27 14:36:39', NULL),
(167, 'number_of_revenue_earning_passengers_carried_by_helicopter_service', 2016, NULL, NULL, '384', '547', '2025-05-27 14:36:39', NULL),
(168, 'revenue_earned_by_helicopter_service_nu_in_million', 2016, NULL, NULL, '30.82', '89.25', '2025-05-27 14:36:39', NULL),
(169, 'number_of_motor_vehicles_registered', 2016, NULL, NULL, '127589', '123456', '2025-05-27 14:36:39', NULL),
(170, 'number_of_motor_vehicles_registered_heavy__medium', 2016, NULL, NULL, '14711', '11179', '2025-05-27 14:36:39', NULL),
(171, 'number_of_motor_vehicles_registered_light', 2016, NULL, NULL, '83693', '86035', '2025-05-27 14:36:39', NULL),
(172, 'number_of_motor_vehicles_registered_two_wheeler', 2016, NULL, NULL, '12411', '10182', '2025-05-27 14:36:39', NULL),
(173, 'number_of_motor_vehicles_registered_taxi', 2016, NULL, NULL, '7127', '6685', '2025-05-27 14:36:39', NULL),
(174, 'number_of_motor_vehicles_registered_electric_vehicle2', 2016, NULL, NULL, '368', '375', '2025-05-27 14:36:39', NULL),
(175, 'number_of_motor_vehicles_registered_others3', 2016, NULL, NULL, '9279', '9000', '2025-05-27 14:36:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `otp` int(11) DEFAULT NULL,
  `role` varchar(10) NOT NULL,
  `profile_image` varchar(255) DEFAULT 'defaultProfile.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `otp`, `role`, `profile_image`) VALUES
(20, 'Dema Thukten', 'demathukten60@gmail.com', '$2b$10$kBhPEmyxSGXHfslxY4teA.qKLMBUrWgEuYOwKG/Kt1iuZuFEXC9sK', '2025-05-22 04:24:33', NULL, 'admin', '1747887835317-Screenshot 2024-03-25 012343.png'),
(22, 'Pema Chozom', 'pemachozom2002@gmail.com', '$2b$10$8afKv2YP6TC4AMq07xr/s.E1w6c1TzNstAs.09kRON/Bg31FmfhlS', '2025-05-21 19:26:36', 873459, 'general', 'defaultProfile.png'),
(23, 'Bidash Gurung', 'bidashgurung4040@gmail.com', '$2b$10$EzJRMIOfWzlwPc7pfCh7.OgYmicMkRnNhBisL5/b5ArDi3p44PK7q', '2025-05-22 04:17:35', NULL, 'general', 'defaultProfile.png'),
(28, 'Asseh', 'asseh@gmail.com', '$2b$10$5ilJsVk8Z0P.oHTLDM6r8uSTWAEV4ZlY76hwcaNPgIyt6zVpV6pai', '2025-05-27 14:35:38', NULL, 'general', 'defaultProfile.png'),
(29, 'Asseh', 'asseh1@gmail.com', '$2b$10$f2bwm2Vof4eunMqkbv88Ju7JE75MrJGperMEXmKmLw//csF0kv3hi', '2025-05-27 14:31:49', NULL, 'admin', 'defaultProfile.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agricultural_marketing_centres_number`
--
ALTER TABLE `agricultural_marketing_centres_number`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agriculture_number`
--
ALTER TABLE `agriculture_number`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diplomatic_relations_number`
--
ALTER TABLE `diplomatic_relations_number`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foreign_trade`
--
ALTER TABLE `foreign_trade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forestry_number`
--
ALTER TABLE `forestry_number`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health`
--
ALTER TABLE `health`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health_human_resources`
--
ALTER TABLE `health_human_resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health_institutes_number`
--
ALTER TABLE `health_institutes_number`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indicator_metadata`
--
ALTER TABLE `indicator_metadata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sector_name` (`sector`);

--
-- Indexes for table `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labour_and_employment`
--
ALTER TABLE `labour_and_employment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livestock_number`
--
ALTER TABLE `livestock_number`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `national_poverty_rate`
--
ALTER TABLE `national_poverty_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `number_of_educational_institutes_schools_institutes_and_centres`
--
ALTER TABLE `number_of_educational_institutes_schools_institutes_and_centres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `population`
--
ALTER TABLE `population`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `power_units_in_million`
--
ALTER TABLE `power_units_in_million`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_finance_nu_in_million`
--
ALTER TABLE `public_finance_nu_in_million`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanitation`
--
ALTER TABLE `sanitation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tourism`
--
ALTER TABLE `tourism`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trade`
--
ALTER TABLE `trade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport_communications`
--
ALTER TABLE `transport_communications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agricultural_marketing_centres_number`
--
ALTER TABLE `agricultural_marketing_centres_number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `agriculture_number`
--
ALTER TABLE `agriculture_number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `diplomatic_relations_number`
--
ALTER TABLE `diplomatic_relations_number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `foreign_trade`
--
ALTER TABLE `foreign_trade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `forestry_number`
--
ALTER TABLE `forestry_number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `health`
--
ALTER TABLE `health`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `health_human_resources`
--
ALTER TABLE `health_human_resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `health_institutes_number`
--
ALTER TABLE `health_institutes_number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `indicator_metadata`
--
ALTER TABLE `indicator_metadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `industries`
--
ALTER TABLE `industries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `labour_and_employment`
--
ALTER TABLE `labour_and_employment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `livestock_number`
--
ALTER TABLE `livestock_number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `national_poverty_rate`
--
ALTER TABLE `national_poverty_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `number_of_educational_institutes_schools_institutes_and_centres`
--
ALTER TABLE `number_of_educational_institutes_schools_institutes_and_centres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `population`
--
ALTER TABLE `population`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `power_units_in_million`
--
ALTER TABLE `power_units_in_million`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `public_finance_nu_in_million`
--
ALTER TABLE `public_finance_nu_in_million`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `sanitation`
--
ALTER TABLE `sanitation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tourism`
--
ALTER TABLE `tourism`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `trade`
--
ALTER TABLE `trade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `transport_communications`
--
ALTER TABLE `transport_communications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
