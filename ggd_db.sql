-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 24, 2025 at 12:40 AM
-- Server version: 8.0.43-cll-lve
-- PHP Version: 8.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abiapoly_pharmTest`
--

-- --------------------------------------------------------

--
-- Table structure for table `abscess_mcs`
--

CREATE TABLE `abscess_mcs` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `firstName` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `lastName` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `addTime`, `firstName`, `lastName`) VALUES
(1, 'test@gmail.com', '$2y$10$SeeTiAp6ArqsC.kPHc3AgO5trd7.GrLhwVjF8hXds2bsvyFNEz0.C', '2024-12-06 12:21:01', 'test', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `afp_test`
--

CREATE TABLE `afp_test` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `amh_test`
--

CREATE TABLE `amh_test` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `bactec_final`
--

CREATE TABLE `bactec_final` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `bactec_preliminary`
--

CREATE TABLE `bactec_preliminary` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `bgg_hbv_hcv_hiv`
--

CREATE TABLE `bgg_hbv_hcv_hiv` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `genotype` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `blood_group` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rhesus` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hbsag` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hcv` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hiv_screen` text COLLATE utf8mb4_general_ci,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `blood_group_genotype`
--

CREATE TABLE `blood_group_genotype` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `genotype` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `flag_genotype` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `blood_group` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rhesus` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_Time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `blood_sugar_reports`
--

CREATE TABLE `blood_sugar_reports` (
  `id` int NOT NULL,
  `report_id` int NOT NULL,
  `fasting_blood_sugar` decimal(7,2) DEFAULT NULL,
  `fbs_ref_range` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fbs_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hba1c` decimal(5,2) DEFAULT NULL,
  `hba1c_diabetic` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hba1c_prediabetic` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hba1c_nondiabetic` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hba1c_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `info` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blood_sugar_reports`
--

INSERT INTO `blood_sugar_reports` (`id`, `report_id`, `fasting_blood_sugar`, `fbs_ref_range`, `fbs_flag`, `hba1c`, `hba1c_diabetic`, `hba1c_prediabetic`, `hba1c_nondiabetic`, `hba1c_flag`, `info`, `created_at`) VALUES
(1, 6, 234.00, '90', 'H', 9.10, '6.5', '5.7', '5.6', 'L', 'this is an aditional information', '2025-05-07 14:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `b_hcg`
--

CREATE TABLE `b_hcg` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `ca12_5_test`
--

CREATE TABLE `ca12_5_test` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `ca15_3_test`
--

CREATE TABLE `ca15_3_test` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `ca19_9_test`
--

CREATE TABLE `ca19_9_test` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `calcium_phosphate_magnesium`
--

CREATE TABLE `calcium_phosphate_magnesium` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `cardiac_markers`
--

CREATE TABLE `cardiac_markers` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `chemical_pathology_contd_reports`
--

CREATE TABLE `chemical_pathology_contd_reports` (
  `id` int NOT NULL,
  `report_id` int NOT NULL,
  `ionized_calcium` decimal(6,2) DEFAULT NULL,
  `ionized_calcium_range` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ionized_calcium_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `serum_calcium` decimal(6,2) DEFAULT NULL,
  `serum_calcium_range` text COLLATE utf8mb4_general_ci,
  `serum_calcium_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `inorganic_phosphate` decimal(6,2) DEFAULT NULL,
  `inorganic_phosphate_range` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `inorganic_phosphate_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `magnesium` decimal(6,2) DEFAULT NULL,
  `magnesium_range` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `magnesium_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra4` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra5` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra6` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra7` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra8` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra9` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra10` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chemical_pathology_kft_reports`
--

CREATE TABLE `chemical_pathology_kft_reports` (
  `id` int NOT NULL,
  `report_id` int NOT NULL,
  `serum_urea_result` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `serum_urea_reference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `serum_urea_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `serum_creatinine_result` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ref_range_female` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `flag_female` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ref_range_male` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `flag_male` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ref_range_child_3_5` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `flag_child_3_5` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ref_range_child_5_7` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `flag_child_5_7` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ref_range_child_7_9` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `flag_child_7_9` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ref_range_child_9_11` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `flag_child_9_11` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ref_range_child_11_13` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `flag_child_11_13` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ref_range_child_13_15` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `flag_child_13_15` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `electrolyte_na_result` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `electrolyte_na_reference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `electrolyte_na_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `electrolyte_k_result` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `electrolyte_k_reference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `electrolyte_k_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `electrolyte_cl_result` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `electrolyte_cl_reference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `electrolyte_cl_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `electrolyte_hco3_result` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `electrolyte_hco3_reference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `electrolyte_hco3_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info1` text COLLATE utf8mb4_general_ci,
  `additional_info2` text COLLATE utf8mb4_general_ci,
  `additional_info3` text COLLATE utf8mb4_general_ci,
  `additional_info4` text COLLATE utf8mb4_general_ci,
  `additional_info5` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chemical_pathology_lft_reports`
--

CREATE TABLE `chemical_pathology_lft_reports` (
  `id` int NOT NULL,
  `report_id` int NOT NULL,
  `total_bilirubin_result` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_bilirubin_reference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_bilirubin_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `direct_bilirubin_result` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `direct_bilirubin_reference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `direct_bilirubin_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sgpt_alt_result` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sgpt_alt_reference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sgpt_alt_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sgot_ast_result` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sgot_ast_reference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sgot_ast_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alkaline_phosphatase_result` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alkaline_phosphatase_reference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alkaline_phosphatase_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ggt_result` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ggt_reference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ggt_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_protein_result` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_protein_reference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_protein_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `albumin_result` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `albumin_reference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `albumin_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info4` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info5` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chemical_pathology_nutrition_reports`
--

CREATE TABLE `chemical_pathology_nutrition_reports` (
  `id` int NOT NULL,
  `report_id` int NOT NULL,
  `vb12` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `vb12_range` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ferritin` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ferritin_range` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `serum_iron` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `serum_iron_range` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `transferrin` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `transferrin_range` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rbc_folate` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rbc_folate_range` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `vitamin_e` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `vitamin_e_range` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_test1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_test2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_test3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_test4` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_test5` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_test6` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_test7` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_test8` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_test9` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_test10` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chemical_pathology_psa_reports`
--

CREATE TABLE `chemical_pathology_psa_reports` (
  `id` int NOT NULL,
  `report_id` int NOT NULL,
  `total_psa` decimal(7,3) DEFAULT NULL,
  `total_psa_range` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_psa_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `free_psa` decimal(7,3) DEFAULT NULL,
  `free_psa_range` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `free_psa_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `percent_free_psa` decimal(6,2) DEFAULT NULL,
  `percent_free_psa_range` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `percent_free_psa_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ratio_free_total_psa` decimal(6,3) DEFAULT NULL,
  `ratio_free_total_psa_range` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ratio_free_total_psa_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_test1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_test2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_test3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_test4` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_test5` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_test6` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_test7` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_test8` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_test9` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_test10` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chemical_pathology_reports`
--

CREATE TABLE `chemical_pathology_reports` (
  `id` int NOT NULL,
  `report_id` int NOT NULL,
  `total_cholesterol_result` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_cholesterol_reference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_cholesterol_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `borderline_cholesterol_result` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `borderline_cholesterol_reference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `borderline_cholesterol_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ldl_cholesterol_result` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ldl_cholesterol_reference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ldl_cholesterol_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hdl_cholesterol_result` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hdl_cholesterol_reference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hdl_cholesterol_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `vldl_cholesterol_result` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `vldl_cholesterol_reference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `vldl_cholesterol_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `triglyceride_result` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `triglyceride_reference` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `triglyceride_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chemical_pathology_thyroid_reports`
--

CREATE TABLE `chemical_pathology_thyroid_reports` (
  `id` int NOT NULL,
  `report_id` int NOT NULL,
  `tsh` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tsh_range` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tsh_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tT3` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tT3_range` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tT3_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tT4` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tT4_range` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tT4_flag` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info4` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info5` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info6` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info7` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info8` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info9` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info10` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

CREATE TABLE `clinic` (
  `id` int NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clinic`
--

INSERT INTO `clinic` (`id`, `title`, `addtime`) VALUES
(1, 'happy day hospital ', '2025-01-30 06:44:20'),
(2, 'fedaral medical center umuhia', '2025-01-30 06:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `completeResults`
--

CREATE TABLE `completeResults` (
  `id` int NOT NULL,
  `pat_test_id` int NOT NULL,
  `source` int NOT NULL,
  `submit_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `submit_by` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complete_blood_count`
--

CREATE TABLE `complete_blood_count` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `cbc_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `film_comment` text COLLATE utf8mb4_general_ci,
  `comment_wbc` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `comment_rbc` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `comment_plt` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_Time` datetime DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `complete_blood_count`
--

INSERT INTO `complete_blood_count` (`id`, `test_id`, `cbc_data`, `film_comment`, `comment_wbc`, `comment_rbc`, `comment_plt`, `other_entries`, `created_at`, `created_by`, `updated_by`, `updated_Time`) VALUES
(4, '2', '{\"WBC\":{\"result\":\"2\",\"flag\":\"High\"},\"LYMPH#\":{\"result\":\"8\",\"flag\":\"High\"},\"MID#\":{\"result\":\"7\",\"flag\":\"High\"},\"GRAN#\":{\"result\":\"9\",\"flag\":\"High\"},\"LYMPH%\":{\"result\":\"9\",\"flag\":\"Low\"},\"NEUT%\":{\"result\":\"9\",\"flag\":\"High\"},\"EOS%\":{\"result\":\"8\",\"flag\":\"High\"},\"MONO%\":{\"result\":\"9\",\"flag\":\"High\"},\"BASO%\":{\"result\":\"9\",\"flag\":\"Low\"},\"NEUT#\":{\"result\":\"9\",\"flag\":\"High\"},\"MONO#\":{\"result\":\"9\",\"flag\":\"Low\"},\"EOSI#\":{\"result\":\"8\",\"flag\":\"High\"},\"BASO#\":{\"result\":\"9\",\"flag\":\"Low\"},\"MID%\":{\"result\":\"6\",\"flag\":\"Low\"},\"GRAN%\":{\"result\":\"8\",\"flag\":\"High\"},\"HGB\":{\"result\":\"5\",\"flag\":\"Low\"},\"RBC\":{\"result\":\"4\",\"flag\":\"Low\"},\"HCT\":{\"result\":\"7\",\"flag\":\"Low\"},\"MCV\":{\"result\":\"3\",\"flag\":\"High\"},\"MCH\":{\"result\":\"4\",\"flag\":\"Low\"},\"MCHC\":{\"result\":\"8\",\"flag\":\"High\"},\"RDW\\u2011CV\":{\"result\":\"2\",\"flag\":\"Low\"},\"RDW\\u2011SD\":{\"result\":\"1\",\"flag\":\"High\"},\"PLT\":{\"result\":\"4\",\"flag\":\"High\"},\"MPV\":{\"result\":\"8\",\"flag\":\"High\"},\"PDW\":{\"result\":\"6\",\"flag\":\"High\"},\"PCT\":{\"result\":\"6\",\"flag\":\"Low\"},\"ESR\":{\"result\":\"7\",\"flag\":\"Low\"}}', 'this is great', 'game', 'trigger', 'fatherdfd', '[]', '2025-07-21 09:43:18', 0, NULL, '2025-07-29 15:51:45'),
(6, '6', '{\"WBC\":{\"result\":\"\",\"flag\":\"Normal\"},\"LYMPH#\":{\"result\":\"\",\"flag\":\"Normal\"},\"MID#\":{\"result\":\"\",\"flag\":\"Normal\"},\"GRAN#\":{\"result\":\"\",\"flag\":\"Normal\"},\"LYMPH%\":{\"result\":\"\",\"flag\":\"Normal\"},\"NEUT%\":{\"result\":\"\",\"flag\":\"Normal\"},\"EOS%\":{\"result\":\"\",\"flag\":\"Normal\"},\"MONO%\":{\"result\":\"\",\"flag\":\"Normal\"},\"BASO%\":{\"result\":\"\",\"flag\":\"Normal\"},\"NEUT#\":{\"result\":\"\",\"flag\":\"Normal\"},\"MONO#\":{\"result\":\"\",\"flag\":\"Normal\"},\"EOSI#\":{\"result\":\"\",\"flag\":\"Normal\"},\"BASO#\":{\"result\":\"\",\"flag\":\"Normal\"},\"MID%\":{\"result\":\"\",\"flag\":\"Normal\"},\"GRAN%\":{\"result\":\"\",\"flag\":\"Normal\"},\"HGB\":{\"result\":\"\",\"flag\":\"Normal\"},\"RBC\":{\"result\":\"\",\"flag\":\"Normal\"},\"HCT\":{\"result\":\"\",\"flag\":\"Normal\"},\"MCV\":{\"result\":\"\",\"flag\":\"Normal\"},\"MCH\":{\"result\":\"\",\"flag\":\"Normal\"},\"MCHC\":{\"result\":\"\",\"flag\":\"Normal\"},\"RDW\\u2011CV\":{\"result\":\"\",\"flag\":\"Normal\"},\"RDW\\u2011SD\":{\"result\":\"\",\"flag\":\"Normal\"},\"PLT\":{\"result\":\"\",\"flag\":\"Normal\"},\"MPV\":{\"result\":\"\",\"flag\":\"Normal\"},\"PDW\":{\"result\":\"\",\"flag\":\"Normal\"},\"PCT\":{\"result\":\"\",\"flag\":\"Normal\"},\"ESR\":{\"result\":\"\",\"flag\":\"Normal\"}}', '', '', '', '', '[]', '2025-08-11 04:16:29', 16, NULL, '2025-08-11 05:16:29'),
(7, '7', '{\"WBC\":{\"result\":\"nnn\",\"flag\":\"High\"},\"LYMPH#\":{\"result\":\"bbbb\",\"flag\":\"Low\"},\"MID#\":{\"result\":\"jjjj\",\"flag\":\"Normal\"},\"GRAN#\":{\"result\":\"kkkk\",\"flag\":\"Normal\"},\"LYMPH%\":{\"result\":\"klkkk\",\"flag\":\"Normal\"},\"NEUT%\":{\"result\":\"lllll\",\"flag\":\"Normal\"},\"EOS%\":{\"result\":\"llll\",\"flag\":\"Normal\"},\"MONO%\":{\"result\":\"jmjjj\",\"flag\":\"Normal\"},\"BASO%\":{\"result\":\"jkjkkk\",\"flag\":\"Normal\"},\"NEUT#\":{\"result\":\"jkjjjk\",\"flag\":\"Normal\"},\"MONO#\":{\"result\":\"klklll\",\"flag\":\"Normal\"},\"EOSI#\":{\"result\":\"olll;l\",\"flag\":\"Normal\"},\"BASO#\":{\"result\":\"llll\",\"flag\":\"Normal\"},\"MID%\":{\"result\":\"llll\",\"flag\":\"Normal\"},\"GRAN%\":{\"result\":\"plll\",\"flag\":\"Normal\"},\"HGB\":{\"result\":\"llll\",\"flag\":\"Normal\"},\"RBC\":{\"result\":\"kkkk\",\"flag\":\"Normal\"},\"HCT\":{\"result\":\"jjjj\",\"flag\":\"Normal\"},\"MCV\":{\"result\":\"jkjjjj\",\"flag\":\"Normal\"},\"MCH\":{\"result\":\"oooo\",\"flag\":\"Normal\"},\"MCHC\":{\"result\":\"oooo\",\"flag\":\"Normal\"},\"RDW\\u2011CV\":{\"result\":\"ioioo\",\"flag\":\"Normal\"},\"RDW\\u2011SD\":{\"result\":\"oooo\",\"flag\":\"Normal\"},\"PLT\":{\"result\":\"kikkk\",\"flag\":\"Normal\"},\"MPV\":{\"result\":\"oooo\",\"flag\":\"Normal\"},\"PDW\":{\"result\":\"oooo\",\"flag\":\"Normal\"},\"PCT\":{\"result\":\"oooo\",\"flag\":\"Normal\"},\"ESR\":{\"result\":\"ooooo\",\"flag\":\"Normal\"}}', 'jjjjjj', 'kkkk', 'jjjj', 'jjjj', '[\"mmmm\",\"lllll\",\"lllll\",\"lllll\",\"lllll\"]', '2025-09-05 09:32:08', 0, NULL, '2025-09-05 10:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `consultant`
--

CREATE TABLE `consultant` (
  `id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consultant`
--

INSERT INTO `consultant` (`id`, `name`, `addtime`) VALUES
(1, 'Dr. Saturday Sunday', '2025-01-30 06:43:07'),
(2, 'Dr. Saturday chidindu', '2025-01-30 06:43:23');

-- --------------------------------------------------------

--
-- Table structure for table `drug_toxicology`
--

CREATE TABLE `drug_toxicology` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `employment_screening`
--

CREATE TABLE `employment_screening` (
  `id` int NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Lab_num` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `DOB` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `workforce` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(7) COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  `created_by` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employment_screening`
--

INSERT INTO `employment_screening` (`id`, `full_name`, `Lab_num`, `DOB`, `workforce`, `gender`, `date`, `created_by`, `created_at`) VALUES
(1, 'Sunday Samuel', '32434', '2025-07-04', 'klancnsjd', 'Male', '2025-07-04', 0, '2025-07-04 13:00:33'),
(2, 'Sunday Samuel', '32434', '1985-02-06', 'test one', 'Female', '2025-07-04', 0, '2025-07-04 13:34:35'),
(3, 'Sunday Samuel', '32434', '2025-07-05', 'test one', 'Male', '2025-07-04', 0, '2025-07-04 13:42:03'),
(4, 'Sunday Samuel', '32434', '2004-07-27', 'test one', 'Male', '2025-07-04', 0, '2025-07-04 13:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `endocervical_swab_mcs`
--

CREATE TABLE `endocervical_swab_mcs` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `fasting_blood_sugar`
--

CREATE TABLE `fasting_blood_sugar` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `fsh_lh_prl_e2`
--

CREATE TABLE `fsh_lh_prl_e2` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `genexpert_only`
--

CREATE TABLE `genexpert_only` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `genexpert_zn`
--

CREATE TABLE `genexpert_zn` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `genotype_bloodgroup`
--

CREATE TABLE `genotype_bloodgroup` (
  `id` int NOT NULL,
  `genotype` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `blood_group` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rhesus` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_Time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `genotype_bloodgroup`
--

INSERT INTO `genotype_bloodgroup` (`id`, `genotype`, `test_id`, `blood_group`, `rhesus`, `other_entries`, `created_at`, `created_by`, `updated_by`, `updated_Time`) VALUES
(1, 'AA', '2', 'B+', 'Negative', '[\"ewdwed\",\"wdqwdwq\",\"dwwqdw\",\"sahbsajbdsak\",\"sam bdjksab\"]', '2025-07-24 13:18:51', 0, NULL, '2025-08-08 20:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `hematology_report`
--

CREATE TABLE `hematology_report` (
  `id` int NOT NULL,
  `labreport` int DEFAULT NULL,
  `wbc_result` decimal(5,2) DEFAULT NULL,
  `wbc_lhp` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `wbc_ref_range` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lymph_result` decimal(5,2) DEFAULT NULL,
  `lymph_lhp` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lymph_ref_range` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mid_result` decimal(5,2) DEFAULT NULL,
  `mid_lhp` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mid_ref_range` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gran_result` decimal(5,2) DEFAULT NULL,
  `gran_lhp` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gran_ref_range` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lymph_percent_result` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lymph_percent_lhp` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lymph_percent_ref_range` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `neut_percent_result` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `neut_percent_lhp` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `neut_percent_ref_range` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `eos_result` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `eos_lhp` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `eos_ref_range` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mono_result` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mono_lhp` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mono_ref_range` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `baso_result` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `baso_lhp` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `baso_ref_range` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `neut_abs_result` decimal(5,2) DEFAULT NULL,
  `neut_abs_lhp` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `neut_abs_ref_range` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hematology_report`
--

INSERT INTO `hematology_report` (`id`, `labreport`, `wbc_result`, `wbc_lhp`, `wbc_ref_range`, `lymph_result`, `lymph_lhp`, `lymph_ref_range`, `mid_result`, `mid_lhp`, `mid_ref_range`, `gran_result`, `gran_lhp`, `gran_ref_range`, `lymph_percent_result`, `lymph_percent_lhp`, `lymph_percent_ref_range`, `neut_percent_result`, `neut_percent_lhp`, `neut_percent_ref_range`, `eos_result`, `eos_lhp`, `eos_ref_range`, `mono_result`, `mono_lhp`, `mono_ref_range`, `baso_result`, `baso_lhp`, `baso_ref_range`, `neut_abs_result`, `neut_abs_lhp`, `neut_abs_ref_range`, `created_at`) VALUES
(1, 4, 6.00, 'H', '9', 4.00, 'L', '0.8', 0.30, 'H', '1.2', 3.20, 'H', '2.0', '53%', 'L', '20.0', '39%', 'L', '54', '3.0%', 'N', '1.0', '5.0%', 'N', '2', '0.0%', 'N', '1', 2.30, 'N', '2.0', '2025-03-07 08:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `hemoglobin_esr`
--

CREATE TABLE `hemoglobin_esr` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `results` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_Time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `hemoglobin_esr`
--

INSERT INTO `hemoglobin_esr` (`id`, `test_id`, `results`, `other_entries`, `created_at`, `created_by`, `updated_by`, `updated_Time`) VALUES
(4, '2', '{\"HB\":\"2\",\"PCV\":\"5\",\"ESR\":\"7\"}', '[]', '2025-07-21 10:06:35', 0, NULL, '2025-08-08 20:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `hep_b_profile`
--

CREATE TABLE `hep_b_profile` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `hiv_hepatitis`
--

CREATE TABLE `hiv_hepatitis` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `hep_a` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hep_b` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hep_c` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hiv_screening` text COLLATE utf8mb4_general_ci,
  `note` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_Time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `hiv_hepatitis`
--

INSERT INTO `hiv_hepatitis` (`id`, `test_id`, `hep_a`, `hep_b`, `hep_c`, `hiv_screening`, `note`, `other_entries`, `created_at`, `created_by`, `updated_by`, `updated_Time`) VALUES
(4, '2', 'postive', 'negative', 'postive ', 'Deployed that night ', 'sero negative', '[\"ewdwed\",\"entertain\",\"efas\",\"kjnkjkbj jkbkbkbj\",\"hjbjhbjbjh jhbkbjk\"]', '2025-07-24 12:37:02', 0, NULL, '2025-08-08 20:55:26'),
(5, '4', 'this ', 'this', '0', 'sdjksdnjkds ', 'dscnuidsbcuids dsinciods', '[\"sddskjsdjk\",\"csjkndjksnc\",\"sdsdkjd\",\"smomcm\",\"jknjkn\"]', '2025-07-29 14:25:52', 0, NULL, '2025-08-08 20:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `hormones_general`
--

CREATE TABLE `hormones_general` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `hvs_mcs`
--

CREATE TABLE `hvs_mcs` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `iron_profile`
--

CREATE TABLE `iron_profile` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `labtest`
--

CREATE TABLE `labtest` (
  `id` int NOT NULL,
  `labNumber` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `addBy` int NOT NULL,
  `testSelect` int NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `labtest`
--

INSERT INTO `labtest` (`id`, `labNumber`, `addTime`, `addBy`, `testSelect`, `date`) VALUES
(1, '20251', '2025-01-10 17:12:04', 0, 1, '2025-01-10'),
(2, '77gy88h', '2025-02-22 09:06:48', 0, 1, '2025-02-22'),
(3, '77gy88h', '2025-03-02 15:51:02', 0, 6, '2025-03-03'),
(4, '77gy88h', '2025-03-06 22:20:18', 0, 1, '2025-03-12'),
(5, 'reiuu84893', '2025-04-22 22:59:00', 0, 12, '2025-04-22'),
(6, 'aWDWQDW', '2025-05-07 14:31:17', 0, 3, '2025-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `labtest_reports`
--

CREATE TABLE `labtest_reports` (
  `id` int NOT NULL,
  `report_id` int DEFAULT NULL,
  `narrative` text COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `labtest_reports`
--

INSERT INTO `labtest_reports` (`id`, `report_id`, `narrative`, `created_at`) VALUES
(2, 3, 'mkcmdscmsmckls dkcmnklmlksd ckdslmklmcklmsdklcmdkls dsklcdkmklcsmdlkc dsclkdsmlkcmdklsc clkdslcmkdlsmc lkmlksdmklds', '2025-03-02 18:05:15');

-- --------------------------------------------------------

--
-- Table structure for table `lab_results`
--

CREATE TABLE `lab_results` (
  `id` int NOT NULL,
  `date` date NOT NULL,
  `lab_id` int NOT NULL,
  `source` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `lab_num` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(11) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab_results`
--

INSERT INTO `lab_results` (`id`, `date`, `lab_id`, `source`, `lab_num`, `created_at`, `created_by`) VALUES
(1, '2025-08-07', 2, 'patient_tests', '348895', '2025-08-07 08:35:22', '8'),
(2, '2025-08-11', 6, 'patient_tests', '202531', '2025-08-11 04:20:19', '16'),
(3, '2025-09-05', 0, '', '202530', '2025-09-05 09:44:34', '17'),
(4, '2025-09-05', 0, '', '202530', '2025-09-05 09:45:48', '17'),
(5, '2025-09-05', 0, '', '202530', '2025-09-05 09:47:46', '17'),
(6, '2025-09-05', 7, 'patient_tests', '202530', '2025-09-05 10:52:11', '0');

-- --------------------------------------------------------

--
-- Table structure for table `lipid_profile`
--

CREATE TABLE `lipid_profile` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_Time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `liver_function`
--

CREATE TABLE `liver_function` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_Time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `microbiology_reports`
--

CREATE TABLE `microbiology_reports` (
  `id` int NOT NULL,
  `report_id` int NOT NULL,
  `malaria` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salmonella_typhi_o` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salmonella_typhi_h` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salmonella_paratyphi_a_o` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salmonella_paratyphi_a_h` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salmonella_paratyphi_b_o` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salmonella_paratyphi_b_h` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salmonella_paratyphi_c_o` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salmonella_paratyphi_c_h` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra4` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra5` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_widal`
--

CREATE TABLE `mp_widal` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `mp_result` text COLLATE utf8mb4_general_ci,
  `widal_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `comments` text COLLATE utf8mb4_general_ci,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_Time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `mp_widal`
--

INSERT INTO `mp_widal` (`id`, `test_id`, `mp_result`, `widal_data`, `comments`, `other_entries`, `created_at`, `created_by`, `updated_by`, `updated_Time`) VALUES
(1, '2', 'this is a test em', '{\"typhi_d\":{\"O\":\"ee\",\"H\":\"ehhhh\"},\"paratyphi_a\":{\"O\":\"e\",\"H\":\"e\"},\"paratyphi_b\":{\"O\":\"e\",\"H\":\"ekl\"},\"paratyphi_c\":{\"O\":\"ejknjknjk\",\"H\":\"e\"}}', 'fdjbvhjdfbhjvfd', '[\"lllkk\"]', '2025-07-21 10:29:42', 0, NULL, '2025-08-08 20:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `mycobacterium_culture`
--

CREATE TABLE `mycobacterium_culture` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int NOT NULL,
  `firstname` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sex` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `middlename` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DOB` date NOT NULL,
  `patientId` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `addBy` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `firstname`, `lastname`, `addTime`, `sex`, `middlename`, `DOB`, `patientId`, `addBy`) VALUES
(2, 'Lucky', 'Chizurum', '2025-01-10 17:50:18', 'male', 'Agbara', '1994-08-10', '20251', 0),
(4, 'Samuel', 'Patient', '2025-07-01 01:10:44', 'male', 'jjksdjskd', '2025-07-27', '3898938', 0),
(6, 'samuell', 'testing two', '2025-07-28 09:45:17', 'male', 'the food middle', '1912-02-28', '47753', 8),
(7, 'Amanda', 'Chim', '2025-08-11 04:10:51', 'female', 'Dike', '2015-03-12', '202531', 16),
(8, 'Favour', 'Ihechi', '2025-09-05 09:20:20', 'female', 'Oluchi', '2025-09-05', '202530', 0),
(9, 'Chinegbonkpa', 'nwakanma', '2025-09-21 23:14:16', 'female', 'Hope', '1984-08-23', 'chinegbonkpa nwakanma', 0),
(10, 'Amarachi ', 'Nwakanma', '2025-09-21 23:16:30', 'male', 'Monday', '1976-03-29', '0002.2025', 0),
(11, 'Adaku ', 'Nwakanma', '2025-10-12 15:54:45', 'female', 'Peace', '1983-01-31', '9532', 19);

-- --------------------------------------------------------

--
-- Table structure for table `patient_test`
--

CREATE TABLE `patient_test` (
  `id` int NOT NULL,
  `patient` int NOT NULL,
  `consultant` int NOT NULL,
  `symptoms` text COLLATE utf8mb4_general_ci NOT NULL,
  `clinic` int NOT NULL,
  `addby` int NOT NULL,
  `investigation` text COLLATE utf8mb4_general_ci NOT NULL,
  `testId` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_test`
--

INSERT INTO `patient_test` (`id`, `patient`, `consultant`, `symptoms`, `clinic`, `addby`, `investigation`, `testId`, `addTime`, `date`) VALUES
(1, 1, 1, 'udbshdjhsbc djksbcjbjsdhbcjs dsjkcnkjsdbcjsd jhbsdjbjhsd jhbsdjhbcsdhj shdcbjshdbc', 1, 0, 'dscsbjhcbsjcb jsdhbcsdjhbcjsd j cdjshbcjsd', 'GYM724', '2025-01-30 08:01:22', '2025-01-30'),
(2, 1, 1, 'udbshdjhsbc djksbcjbjsdhbcjs dsjkcnkjsdbcjsd jhbsdjbjhsd jhbsdjhbcsdhj shdcbjshdbc', 1, 0, 'dscsbjhcbsjcb jsdhbcsdjhbcjsd j cdjshbcjsd', 'JBQ357', '2025-01-30 08:01:50', '2025-01-29'),
(3, 2, 1, 'ed je dwe dehwbdew dewbdjwbedh ewhbdhjewbd ewhdbewhd ', 1, 0, 'ebdhewjbdh ewhbdehwbd wehdjbewhd ewhbdhewb dewhjbdjwe', 'UYW503', '2025-01-30 08:09:34', '2025-01-31'),
(4, 1, 2, 'sknjdnjksdnjkse', 2, 0, 'djncjksncjksnd', 'AQI705', '2025-01-30 08:11:50', '2025-01-30'),
(5, 1, 2, 'sknjdnjksdnjkse', 2, 0, 'djncjksncjksnd', 'RFL730', '2025-01-30 08:13:15', '2025-01-30'),
(6, 1, 2, 'ggvgggvhgv gvhjvhv hjvhgvhvhj gvhj', 2, 0, 'hgvhvhgvhjhvh', 'EGU432', '2025-01-30 18:52:06', '2025-01-31'),
(7, 1, 1, 'back pain ', 2, 0, 'this is a test', 'TLG372', '2025-02-02 00:03:36', '2025-02-02'),
(8, 1, 1, 'hbjbjbjbjl', 1, 0, 'jkbnkjbjk ', 'TPO760', '2025-02-05 01:34:51', '2025-02-06'),
(9, 1, 1, 'ml;ml;mlkklw dk dkewmdklew', 1, 0, 'lkwemdl;kemwld;mew dkemwlkdmelwmdk ', 'LER682', '2025-02-09 21:13:19', '2025-02-11'),
(10, 1, 1, 'sjwndjkwned wkejnjkwe', 1, 0, 'wejhdjekwdjkewdjknwejk ewkjndkjwend ewkjnewkjd', 'ANR451', '2025-04-14 00:30:58', '2025-04-15'),
(11, 1, 1, 'sjwndjkwned wkejnjkwe', 1, 0, 'wejhdjekwdjkewdjknwejk ewkjndkjwend ewkjnewkjd', 'ILU536', '2025-04-14 00:31:52', '2025-04-15'),
(12, 1, 1, 'sjwndjkwned wkejnjkwe', 1, 0, 'wejhdjekwdjkewdjknwejk ewkjndkjwend ewkjnewkjd', 'OXP208', '2025-04-14 00:33:06', '2025-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `patient_tests`
--

CREATE TABLE `patient_tests` (
  `id` int NOT NULL,
  `patient_id` int NOT NULL,
  `consultant_id` int NOT NULL,
  `clinic_id` int NOT NULL,
  `lab_number` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `symptoms` text COLLATE utf8mb4_general_ci,
  `investigation` text COLLATE utf8mb4_general_ci,
  `test_date` date DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_tests`
--

INSERT INTO `patient_tests` (`id`, `patient_id`, `consultant_id`, `clinic_id`, `lab_number`, `symptoms`, `investigation`, `test_date`, `created_by`, `created_at`) VALUES
(1, 2, 1, 1, '348867', 'jsnfsj jsdknfkjsnd jsdnjkfnjks jasnkjna. jnjksnajkf', 'insnkjfsnjk sajknkjsanjfsn sajnfkjsankf sjdknfjksanf ', '2025-07-01', 0, '2025-07-01 11:34:09'),
(2, 2, 1, 1, '348895', 'klnksdnfns kdlnosdfnsdklfnkls sknfsd', 'sdnfklsdklfnsadl', '2025-07-01', 0, '2025-07-01 11:52:47'),
(3, 2, 1, 1, '348845', 'klnksdnfns kdlnosdfnsdklfnkls sknfsd', 'sdnfklsdklfnsadl', '2025-07-01', 0, '2025-07-01 11:55:43'),
(4, 2, 1, 1, '558909', 'jzdjcnj djscnjdsncjsd cjdncjkdc', 'cdjnjkcnsjkdc jdncjkdnsjck jkdcjkd', '2025-07-29', 8, '2025-07-28 11:54:59'),
(5, 2, 1, 1, '2025222', 'bbb b', '   nnnn', '2025-08-11', 1, '2025-08-11 04:04:16'),
(6, 7, 2, 1, '202531', 'kkkkk', 'kkkkk', '2025-08-11', 16, '2025-08-11 04:11:56'),
(7, 8, 1, 1, '202530', 'hghgggg', 'jjjjjj', '2025-09-05', 1, '2025-09-05 09:22:21'),
(8, 10, 2, 2, '002/2025', '', '', '2025-09-22', 1, '2025-09-21 23:20:56'),
(9, 11, 1, 2, '9532', 'fever, vommitting', 'mp,widal rxn,urinalysis,cbc', '2025-10-12', 19, '2025-10-12 16:02:22'),
(10, 11, 1, 2, '9532', 'fever,vommitting', 'mp,widal rxnm,urinalysis,', '2025-10-12', 19, '2025-10-12 16:07:41'),
(11, 11, 1, 2, '9532', 'fever, vomitting', 'mp widal', '2025-10-12', 19, '2025-10-12 16:10:05');

-- --------------------------------------------------------

--
-- Table structure for table `patient_test_items`
--

CREATE TABLE `patient_test_items` (
  `id` int NOT NULL,
  `patient_test_id` int NOT NULL,
  `test_id` int NOT NULL,
  `test_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_test_items`
--

INSERT INTO `patient_test_items` (`id`, `patient_test_id`, `test_id`, `test_price`) VALUES
(1, 1, 1, 0.00),
(2, 1, 4, 0.00),
(3, 1, 5, 0.00),
(4, 2, 1, 0.00),
(5, 2, 3, 0.00),
(6, 2, 4, 0.00),
(7, 2, 5, 0.00),
(8, 3, 1, 8000.00),
(9, 3, 3, 2000.00),
(10, 3, 4, 3000.00),
(11, 3, 5, 7000.00),
(12, 4, 1, 2000.00),
(13, 4, 4, 39902.00),
(14, 4, 5, 5000.00),
(15, 4, 6, 70000.00),
(16, 5, 1, 2000.00),
(17, 6, 2, 3333.00),
(18, 7, 1, 2000.00),
(19, 7, 2, 3333.00),
(20, 8, 1, 2000.00),
(21, 8, 2, 3333.00),
(22, 9, 1, 2000.00),
(23, 9, 2, 3333.00),
(24, 11, 1, 2000.00),
(25, 11, 2, 3333.00);

-- --------------------------------------------------------

--
-- Table structure for table `progesterone_testosterone`
--

CREATE TABLE `progesterone_testosterone` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `psa_test`
--

CREATE TABLE `psa_test` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `report_custom_fields`
--

CREATE TABLE `report_custom_fields` (
  `id` int NOT NULL,
  `report_id` int DEFAULT NULL,
  `field_key` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `field_value` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report_custom_fields`
--

INSERT INTO `report_custom_fields` (`id`, `report_id`, `field_key`, `field_value`) VALUES
(6, 3, 'hpc', '17'),
(7, 3, 'hhh', 'lol'),
(8, 3, 'erfe', 'eee'),
(9, 3, 'erere', '44'),
(10, 3, 'dsdsd', '22');

-- --------------------------------------------------------

--
-- Table structure for table `retro_confirmatory`
--

CREATE TABLE `retro_confirmatory` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `retro_result` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_Time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `retro_confirmatory`
--

INSERT INTO `retro_confirmatory` (`id`, `test_id`, `retro_result`, `other_entries`, `created_at`, `created_by`, `updated_by`, `updated_Time`) VALUES
(1, '2', 'Indeterminate', '[\"xckjnsajkcnkjsancj\",\"scjsjcnjksa\",\"scakjnsajcnkjsa\",\"sacjsjcnjs\",\"csakcmska\"]', '2025-07-24 12:50:05', 0, NULL, '2025-08-08 20:55:26'),
(2, '6', 'Negative', '[]', '2025-08-11 04:19:39', 16, NULL, '2025-08-11 05:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `semen_analysis`
--

CREATE TABLE `semen_analysis` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_Time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `semen_analysis_sfa`
--

CREATE TABLE `semen_analysis_sfa` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `semen_culture`
--

CREATE TABLE `semen_culture` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `serum_electrolytes`
--

CREATE TABLE `serum_electrolytes` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `sputum_afb_microscopy`
--

CREATE TABLE `sputum_afb_microscopy` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `sputum_mcs`
--

CREATE TABLE `sputum_mcs` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `department` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `contact` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `password` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `staffId` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `addBy` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `role`, `department`, `contact`, `addTime`, `password`, `staffId`, `addBy`) VALUES
(1, 'Samuel', 'doctor', 'medical lab', 'don&#039;t ask me', '2025-01-09 00:25:34', '$2y$10$EC5PI/Y1ulEsKrUEM6AiCecN5f71XV4/ZOQkDHMO/dna4ZcbmW6sS', '46783656', 0),
(2, 'Devine', 'Lab Attendant', 'Lab', '09012345678', '2025-01-10 17:33:31', '$2y$10$3xLx7JUGS4uWacTr6Tb/weTUhAbEjTZvV3rri9WTePhBDHmegTgNq', '20251', 0),
(5, 'daniel', 'mechnic', 'department', '4345345', '2025-06-30 11:47:06', '$2y$10$exRP5QPjCex7AedIbWYi9uskqS8M/w61XiTHfXhLBypW/Yg6Kgjt6', '3334', 0),
(6, 'daniel', 'mechnic', 'department', '4345345', '2025-06-30 11:47:46', '$2y$10$cG/kKVX4mNOf9/sQaBEZi.Usll2cr2iOsaVanwpbNnVZU0Ca/7Xy2', '3334', 0),
(7, 'daniel', 'mechnic', 'department', '4345345', '2025-06-30 19:53:43', '$2y$10$wRDLvXO4H70picCj0UqIL.3ZjxwPcrzT3bg9mMhqGVtgiX5gQqTBy', '3334', 0),
(8, 'Samuel Test', 'mechnic', 'department', '4345345', '2025-06-30 19:54:34', '$2y$10$/A85zXfUzEeCaRsElVgOLuefqX6z5fM2P3F4kMtmyj/9HANy/HaqC', '34545', 0),
(13, 'progress Nwankwo 2', 'driver', 'nigeria', '0903849588594', '2025-07-26 23:35:06', '$2y$10$OCMCxbFxyuRitK47O7AMqO1m4Zh6DfWXz0MmavSxrA7/cZqwXVVTi', 'ng1233', 8),
(14, 'Samuel Test', 's', 's', '43453454', '2025-08-08 20:44:15', '$2y$10$bEzK7rHOg5Oeh8.P9xNGPeCuDWgagaRtvME7uxqD8ayIKprZx5fuW', 's', 1),
(16, 'Ngozi Blessed', 'Lab Attendant', 'Lab', '07035117041', '2025-08-11 03:47:13', '$2y$10$de2vGUo6WV//IoTZX/hHYuetkOwX7UkqCBJCqqjL0lkdelFaK6lca', '2025001', 1),
(17, 'Lucky', 'Lab Attendant', 'Lab', '07035117041', '2025-09-05 09:19:11', '$2y$10$glR//pY180g87mfqtSr6hO0WAPKa3JRkY9P0QOBgYM6LpEbZLaaY2', '202526', 0),
(18, 'Ngozi', 'Lab Attendant', 'Labouratory', '22 amakama', '2025-10-12 15:17:51', '$2y$10$juiFgCKZtwHYLxNL35P8CerycYy.4tdhDLuY8N2nDm.ZfSHn3.WFm', '20251025', 0),
(19, 'Chiamaka Onyema', 'Supervisor', 'Labouratory', '50 Mission Hill', '2025-10-12 15:47:09', '$2y$10$KO0OkUQ79x9LBWl3FzbieOF9pwfBdh2IzC6hPJhXpRJ8GnqgNj3eO', '20251030', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staff_permissions`
--

CREATE TABLE `staff_permissions` (
  `id` int NOT NULL,
  `staff_id` int NOT NULL,
  `lab` tinyint(1) NOT NULL DEFAULT '0',
  `staff` tinyint(1) NOT NULL DEFAULT '0',
  `patient` tinyint(1) NOT NULL DEFAULT '0',
  `payment` tinyint(1) NOT NULL DEFAULT '0',
  `test` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_permissions`
--

INSERT INTO `staff_permissions` (`id`, `staff_id`, `lab`, `staff`, `patient`, `payment`, `test`) VALUES
(1, 6, 0, 0, 1, 1, 1),
(2, 7, 0, 0, 1, 1, 1),
(3, 8, 1, 1, 1, 1, 1),
(4, 3, 0, 0, 0, 0, 1),
(5, 9, 0, 0, 0, 0, 0),
(6, 10, 1, 1, 1, 1, 1),
(7, 11, 1, 1, 1, 1, 1),
(8, 12, 1, 1, 1, 1, 1),
(9, 13, 0, 0, 0, 0, 1),
(10, 14, 1, 1, 1, 1, 1),
(11, 15, 1, 1, 1, 1, 1),
(12, 16, 1, 1, 1, 1, 1),
(13, 17, 1, 1, 1, 1, 1),
(14, 18, 1, 1, 1, 1, 1),
(15, 19, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stool_mcs`
--

CREATE TABLE `stool_mcs` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `sugar_test`
--

CREATE TABLE `sugar_test` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_Time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `addTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `title`, `price`, `addTime`) VALUES
(1, 'malaria test', 2000, '2025-01-10 18:09:39'),
(2, 'HIV ', 3333, '2025-04-13 23:21:20'),
(3, 'hypertetises', 333332, '2025-04-13 23:21:46'),
(4, 'finest', 39902, '2025-04-13 23:22:29'),
(5, 'hits ', 5000, '2025-04-13 23:31:13'),
(6, 'cars', 70000, '2025-04-13 23:31:22'),
(7, 'nothing ', 4000, '2025-04-13 23:33:20');

-- --------------------------------------------------------

--
-- Table structure for table `testPayment`
--

CREATE TABLE `testPayment` (
  `id` int NOT NULL,
  `amount` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `addby` int NOT NULL,
  `testId` int NOT NULL,
  `addTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date` date NOT NULL,
  `reciept_num` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `type` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testPayment`
--

INSERT INTO `testPayment` (`id`, `amount`, `addby`, `testId`, `addTime`, `date`, `reciept_num`, `type`) VALUES
(9, '4500', 0, 3, '2025-07-02 02:30:15', '2025-07-02', '', 0),
(10, '5500', 0, 3, '2025-07-02 02:30:53', '2025-07-03', '', 0),
(11, '300', 0, 3, '2025-07-02 03:08:16', '2025-07-04', '', 0),
(12, '4000', 0, 3, '2025-07-02 04:13:22', '2025-07-03', 'GGD-2025-K292CB', 0),
(13, '650', 0, 3, '2025-07-04 20:56:59', '2025-07-04', 'GGD-2025-761X0O', 0),
(14, '200', 0, 6, '2025-08-11 05:12:32', '2025-08-11', 'GGD-2025-9AZVWI', 0),
(15, '3000', 0, 7, '2025-09-05 10:25:20', '2025-09-05', 'GGD-2025-W0FV9A', 0),
(16, '1000', 0, 7, '2025-09-05 10:26:03', '2025-09-12', 'GGD-2025-L9TPLA', 0),
(17, '3000', 0, 8, '2025-09-22 00:21:47', '2025-09-22', 'GGD-2025-ZWCSW8', 0),
(18, '3000', 0, 11, '2025-10-12 17:10:36', '2025-10-12', 'GGD-2025-SXFS7K', 0);

-- --------------------------------------------------------

--
-- Table structure for table `test_required`
--

CREATE TABLE `test_required` (
  `id` int NOT NULL,
  `patient_test_id` int NOT NULL,
  `test_required` int NOT NULL,
  `addTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `test_required`
--

INSERT INTO `test_required` (`id`, `patient_test_id`, `test_required`, `addTime`, `price`) VALUES
(1, 2, 12, '2025-04-14 01:33:06', 3333),
(2, 4, 12, '2025-04-14 01:33:06', 39902),
(3, 5, 12, '2025-04-14 01:33:06', 5000),
(4, 6, 12, '2025-04-14 01:33:06', 70000);

-- --------------------------------------------------------

--
-- Table structure for table `throat_swab_mcs`
--

CREATE TABLE `throat_swab_mcs` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `thyroid_function`
--

CREATE TABLE `thyroid_function` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_Time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `total_psa`
--

CREATE TABLE `total_psa` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `tumor_markers`
--

CREATE TABLE `tumor_markers` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `urine_mcs`
--

CREATE TABLE `urine_mcs` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `virology_confirmatory_reports`
--

CREATE TABLE `virology_confirmatory_reports` (
  `id` int NOT NULL,
  `report_id` int NOT NULL,
  `retro_test` text COLLATE utf8mb4_general_ci,
  `result` enum('negative','positive','indeterminate') COLLATE utf8mb4_general_ci NOT NULL,
  `comments` text COLLATE utf8mb4_general_ci,
  `additional_info_1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info_2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info_3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info_4` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional_info_5` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virology_general_reports`
--

CREATE TABLE `virology_general_reports` (
  `id` int NOT NULL,
  `report_id` int NOT NULL,
  `hepatitis_b` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `hepatitis_c` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `hiv_test` text COLLATE utf8mb4_general_ci NOT NULL,
  `note` text COLLATE utf8mb4_general_ci,
  `additional1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional4` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional5` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virology_hepatitis_reports`
--

CREATE TABLE `virology_hepatitis_reports` (
  `id` int NOT NULL,
  `report_id` int NOT NULL,
  `hepatitis_a` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `hepatitis_b` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `hepatitis_c` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `additional1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional4` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `additional5` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virology_hiv_reports`
--

CREATE TABLE `virology_hiv_reports` (
  `id` int NOT NULL,
  `report_id` int NOT NULL,
  `test_result` enum('negative','positive') COLLATE utf8mb4_general_ci NOT NULL,
  `note` enum('sero-negative','sero-positive') COLLATE utf8mb4_general_ci NOT NULL,
  `confirmatory_test` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra4` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `extra5` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wound_swab_mcs`
--

CREATE TABLE `wound_swab_mcs` (
  `id` int NOT NULL,
  `test_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `data_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_entries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abscess_mcs`
--
ALTER TABLE `abscess_mcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `afp_test`
--
ALTER TABLE `afp_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amh_test`
--
ALTER TABLE `amh_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bactec_final`
--
ALTER TABLE `bactec_final`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bactec_preliminary`
--
ALTER TABLE `bactec_preliminary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bgg_hbv_hcv_hiv`
--
ALTER TABLE `bgg_hbv_hcv_hiv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_group_genotype`
--
ALTER TABLE `blood_group_genotype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_sugar_reports`
--
ALTER TABLE `blood_sugar_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `b_hcg`
--
ALTER TABLE `b_hcg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ca12_5_test`
--
ALTER TABLE `ca12_5_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ca15_3_test`
--
ALTER TABLE `ca15_3_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ca19_9_test`
--
ALTER TABLE `ca19_9_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calcium_phosphate_magnesium`
--
ALTER TABLE `calcium_phosphate_magnesium`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cardiac_markers`
--
ALTER TABLE `cardiac_markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chemical_pathology_contd_reports`
--
ALTER TABLE `chemical_pathology_contd_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `chemical_pathology_kft_reports`
--
ALTER TABLE `chemical_pathology_kft_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `chemical_pathology_lft_reports`
--
ALTER TABLE `chemical_pathology_lft_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `chemical_pathology_nutrition_reports`
--
ALTER TABLE `chemical_pathology_nutrition_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `chemical_pathology_psa_reports`
--
ALTER TABLE `chemical_pathology_psa_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `chemical_pathology_reports`
--
ALTER TABLE `chemical_pathology_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `chemical_pathology_thyroid_reports`
--
ALTER TABLE `chemical_pathology_thyroid_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `clinic`
--
ALTER TABLE `clinic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `completeResults`
--
ALTER TABLE `completeResults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complete_blood_count`
--
ALTER TABLE `complete_blood_count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consultant`
--
ALTER TABLE `consultant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drug_toxicology`
--
ALTER TABLE `drug_toxicology`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employment_screening`
--
ALTER TABLE `employment_screening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `endocervical_swab_mcs`
--
ALTER TABLE `endocervical_swab_mcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fasting_blood_sugar`
--
ALTER TABLE `fasting_blood_sugar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fsh_lh_prl_e2`
--
ALTER TABLE `fsh_lh_prl_e2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genexpert_only`
--
ALTER TABLE `genexpert_only`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genexpert_zn`
--
ALTER TABLE `genexpert_zn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genotype_bloodgroup`
--
ALTER TABLE `genotype_bloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hematology_report`
--
ALTER TABLE `hematology_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hemoglobin_esr`
--
ALTER TABLE `hemoglobin_esr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hep_b_profile`
--
ALTER TABLE `hep_b_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hiv_hepatitis`
--
ALTER TABLE `hiv_hepatitis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hormones_general`
--
ALTER TABLE `hormones_general`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hvs_mcs`
--
ALTER TABLE `hvs_mcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iron_profile`
--
ALTER TABLE `iron_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labtest`
--
ALTER TABLE `labtest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labtest_reports`
--
ALTER TABLE `labtest_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_results`
--
ALTER TABLE `lab_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lipid_profile`
--
ALTER TABLE `lipid_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `liver_function`
--
ALTER TABLE `liver_function`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `microbiology_reports`
--
ALTER TABLE `microbiology_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `mp_widal`
--
ALTER TABLE `mp_widal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mycobacterium_culture`
--
ALTER TABLE `mycobacterium_culture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_test`
--
ALTER TABLE `patient_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_tests`
--
ALTER TABLE `patient_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_test_items`
--
ALTER TABLE `patient_test_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `progesterone_testosterone`
--
ALTER TABLE `progesterone_testosterone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psa_test`
--
ALTER TABLE `psa_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_custom_fields`
--
ALTER TABLE `report_custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `retro_confirmatory`
--
ALTER TABLE `retro_confirmatory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semen_analysis`
--
ALTER TABLE `semen_analysis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semen_analysis_sfa`
--
ALTER TABLE `semen_analysis_sfa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semen_culture`
--
ALTER TABLE `semen_culture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serum_electrolytes`
--
ALTER TABLE `serum_electrolytes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sputum_afb_microscopy`
--
ALTER TABLE `sputum_afb_microscopy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sputum_mcs`
--
ALTER TABLE `sputum_mcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_permissions`
--
ALTER TABLE `staff_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stool_mcs`
--
ALTER TABLE `stool_mcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sugar_test`
--
ALTER TABLE `sugar_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testPayment`
--
ALTER TABLE `testPayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_required`
--
ALTER TABLE `test_required`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `throat_swab_mcs`
--
ALTER TABLE `throat_swab_mcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thyroid_function`
--
ALTER TABLE `thyroid_function`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total_psa`
--
ALTER TABLE `total_psa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tumor_markers`
--
ALTER TABLE `tumor_markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `urine_mcs`
--
ALTER TABLE `urine_mcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `virology_confirmatory_reports`
--
ALTER TABLE `virology_confirmatory_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `virology_general_reports`
--
ALTER TABLE `virology_general_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `virology_hepatitis_reports`
--
ALTER TABLE `virology_hepatitis_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `virology_hiv_reports`
--
ALTER TABLE `virology_hiv_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `wound_swab_mcs`
--
ALTER TABLE `wound_swab_mcs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abscess_mcs`
--
ALTER TABLE `abscess_mcs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `afp_test`
--
ALTER TABLE `afp_test`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `amh_test`
--
ALTER TABLE `amh_test`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bactec_final`
--
ALTER TABLE `bactec_final`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bactec_preliminary`
--
ALTER TABLE `bactec_preliminary`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgg_hbv_hcv_hiv`
--
ALTER TABLE `bgg_hbv_hcv_hiv`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_group_genotype`
--
ALTER TABLE `blood_group_genotype`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_sugar_reports`
--
ALTER TABLE `blood_sugar_reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `b_hcg`
--
ALTER TABLE `b_hcg`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ca12_5_test`
--
ALTER TABLE `ca12_5_test`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ca15_3_test`
--
ALTER TABLE `ca15_3_test`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ca19_9_test`
--
ALTER TABLE `ca19_9_test`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calcium_phosphate_magnesium`
--
ALTER TABLE `calcium_phosphate_magnesium`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cardiac_markers`
--
ALTER TABLE `cardiac_markers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chemical_pathology_contd_reports`
--
ALTER TABLE `chemical_pathology_contd_reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chemical_pathology_kft_reports`
--
ALTER TABLE `chemical_pathology_kft_reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chemical_pathology_lft_reports`
--
ALTER TABLE `chemical_pathology_lft_reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chemical_pathology_nutrition_reports`
--
ALTER TABLE `chemical_pathology_nutrition_reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chemical_pathology_psa_reports`
--
ALTER TABLE `chemical_pathology_psa_reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chemical_pathology_reports`
--
ALTER TABLE `chemical_pathology_reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chemical_pathology_thyroid_reports`
--
ALTER TABLE `chemical_pathology_thyroid_reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clinic`
--
ALTER TABLE `clinic`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `completeResults`
--
ALTER TABLE `completeResults`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complete_blood_count`
--
ALTER TABLE `complete_blood_count`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consultant`
--
ALTER TABLE `consultant`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `drug_toxicology`
--
ALTER TABLE `drug_toxicology`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employment_screening`
--
ALTER TABLE `employment_screening`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `endocervical_swab_mcs`
--
ALTER TABLE `endocervical_swab_mcs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fasting_blood_sugar`
--
ALTER TABLE `fasting_blood_sugar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fsh_lh_prl_e2`
--
ALTER TABLE `fsh_lh_prl_e2`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genexpert_only`
--
ALTER TABLE `genexpert_only`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genexpert_zn`
--
ALTER TABLE `genexpert_zn`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genotype_bloodgroup`
--
ALTER TABLE `genotype_bloodgroup`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hematology_report`
--
ALTER TABLE `hematology_report`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hemoglobin_esr`
--
ALTER TABLE `hemoglobin_esr`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hep_b_profile`
--
ALTER TABLE `hep_b_profile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hiv_hepatitis`
--
ALTER TABLE `hiv_hepatitis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hormones_general`
--
ALTER TABLE `hormones_general`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hvs_mcs`
--
ALTER TABLE `hvs_mcs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iron_profile`
--
ALTER TABLE `iron_profile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labtest`
--
ALTER TABLE `labtest`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `labtest_reports`
--
ALTER TABLE `labtest_reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lab_results`
--
ALTER TABLE `lab_results`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lipid_profile`
--
ALTER TABLE `lipid_profile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `liver_function`
--
ALTER TABLE `liver_function`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `microbiology_reports`
--
ALTER TABLE `microbiology_reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_widal`
--
ALTER TABLE `mp_widal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mycobacterium_culture`
--
ALTER TABLE `mycobacterium_culture`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `patient_test`
--
ALTER TABLE `patient_test`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `patient_tests`
--
ALTER TABLE `patient_tests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `patient_test_items`
--
ALTER TABLE `patient_test_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `progesterone_testosterone`
--
ALTER TABLE `progesterone_testosterone`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `psa_test`
--
ALTER TABLE `psa_test`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_custom_fields`
--
ALTER TABLE `report_custom_fields`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `retro_confirmatory`
--
ALTER TABLE `retro_confirmatory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semen_analysis`
--
ALTER TABLE `semen_analysis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semen_analysis_sfa`
--
ALTER TABLE `semen_analysis_sfa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semen_culture`
--
ALTER TABLE `semen_culture`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serum_electrolytes`
--
ALTER TABLE `serum_electrolytes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sputum_afb_microscopy`
--
ALTER TABLE `sputum_afb_microscopy`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sputum_mcs`
--
ALTER TABLE `sputum_mcs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `staff_permissions`
--
ALTER TABLE `staff_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `stool_mcs`
--
ALTER TABLE `stool_mcs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sugar_test`
--
ALTER TABLE `sugar_test`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `testPayment`
--
ALTER TABLE `testPayment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `test_required`
--
ALTER TABLE `test_required`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `throat_swab_mcs`
--
ALTER TABLE `throat_swab_mcs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thyroid_function`
--
ALTER TABLE `thyroid_function`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `total_psa`
--
ALTER TABLE `total_psa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tumor_markers`
--
ALTER TABLE `tumor_markers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `urine_mcs`
--
ALTER TABLE `urine_mcs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virology_confirmatory_reports`
--
ALTER TABLE `virology_confirmatory_reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virology_general_reports`
--
ALTER TABLE `virology_general_reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virology_hepatitis_reports`
--
ALTER TABLE `virology_hepatitis_reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virology_hiv_reports`
--
ALTER TABLE `virology_hiv_reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wound_swab_mcs`
--
ALTER TABLE `wound_swab_mcs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
