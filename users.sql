-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 21, 2025 at 01:51 PM
-- Server version: 10.11.11-MariaDB
-- PHP Version: 8.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digitaldigitizer_academy`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 3,
  `name` varchar(191) NOT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `notification_preference` varchar(191) NOT NULL DEFAULT 'mail',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `username` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `email_verify` varchar(191) NOT NULL DEFAULT '0',
  `password` varchar(191) NOT NULL,
  `headline` varchar(191) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT '19',
  `zip` varchar(191) DEFAULT NULL,
  `dob` varchar(191) DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `short_details` longtext DEFAULT NULL,
  `facebook` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL,
  `linkedin` varchar(191) DEFAULT NULL,
  `instagram` varchar(191) DEFAULT NULL,
  `youtube` varchar(191) DEFAULT NULL,
  `subscribe` int(11) NOT NULL DEFAULT 0,
  `provider` varchar(191) DEFAULT NULL,
  `provider_id` varchar(191) DEFAULT NULL,
  `language_id` varchar(191) NOT NULL DEFAULT '19',
  `language_code` varchar(191) NOT NULL DEFAULT 'en',
  `language_name` varchar(191) NOT NULL DEFAULT 'English',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `balance` float DEFAULT 0,
  `currency_id` int(10) UNSIGNED NOT NULL DEFAULT 112,
  `special_commission` varchar(11) DEFAULT NULL,
  `payout` varchar(191) NOT NULL DEFAULT 'PayPal',
  `payout_icon` varchar(191) NOT NULL DEFAULT 'public/uploads/payout/pay_1.png',
  `payout_email` varchar(191) NOT NULL DEFAULT 'demo@paypal.com',
  `referral` varchar(10) DEFAULT NULL,
  `added_by` tinyint(1) NOT NULL DEFAULT 0,
  `zoom_api_key_of_user` varchar(191) DEFAULT NULL,
  `zoom_api_serect_of_user` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `branch_name` varchar(191) DEFAULT NULL,
  `bank_account_number` varchar(191) DEFAULT NULL,
  `account_holder_name` varchar(191) DEFAULT NULL,
  `bank_type` varchar(191) DEFAULT NULL,
  `subscription_method` varchar(191) DEFAULT NULL,
  `subscription_api_key` varchar(191) DEFAULT NULL,
  `subscription_api_status` tinyint(1) NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `language_rtl` tinyint(1) NOT NULL DEFAULT 0,
  `gender` varchar(191) DEFAULT NULL,
  `student_type` varchar(191) DEFAULT NULL,
  `identification_number` varchar(191) DEFAULT NULL,
  `job_title` varchar(191) DEFAULT NULL,
  `company_id` varchar(191) DEFAULT NULL,
  `student_group_id` varchar(191) DEFAULT NULL,
  `last_activity_at` timestamp NULL DEFAULT NULL,
  `teach_via` int(11) DEFAULT 1 COMMENT '1= Online & 2 = Offline',
  `access_token` varchar(191) DEFAULT NULL,
  `device_token` text DEFAULT NULL,
  `policy_id` int(11) DEFAULT NULL,
  `lms_id` int(11) NOT NULL DEFAULT 1,
  `state` int(11) DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `otp` varchar(191) DEFAULT NULL,
  `level` text DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `gamification_points` int(11) NOT NULL DEFAULT 0,
  `gamification_total_points` int(11) NOT NULL DEFAULT 0,
  `gamification_total_spent_points` int(11) NOT NULL DEFAULT 0,
  `user_level` int(11) NOT NULL DEFAULT 1,
  `user_level_course_complete` int(11) NOT NULL DEFAULT 0,
  `total_referrer_users` int(11) NOT NULL DEFAULT 0,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `is_login_into_web` tinyint(1) NOT NULL DEFAULT 0,
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `sidebar` tinyint(1) NOT NULL DEFAULT 1,
  `institute_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `photo`, `image`, `avatar`, `mobile_verified_at`, `email_verified_at`, `notification_preference`, `is_active`, `username`, `email`, `email_verify`, `password`, `headline`, `phone`, `address`, `country`, `zip`, `dob`, `about`, `short_details`, `facebook`, `twitter`, `linkedin`, `instagram`, `youtube`, `subscribe`, `provider`, `provider_id`, `language_id`, `language_code`, `language_name`, `status`, `balance`, `currency_id`, `special_commission`, `payout`, `payout_icon`, `payout_email`, `referral`, `added_by`, `zoom_api_key_of_user`, `zoom_api_serect_of_user`, `remember_token`, `created_at`, `updated_at`, `bank_name`, `branch_name`, `bank_account_number`, `account_holder_name`, `bank_type`, `subscription_method`, `subscription_api_key`, `subscription_api_status`, `total_rating`, `language_rtl`, `gender`, `student_type`, `identification_number`, `job_title`, `company_id`, `student_group_id`, `last_activity_at`, `teach_via`, `access_token`, `device_token`, `policy_id`, `lms_id`, `state`, `company`, `otp`, `level`, `city`, `gamification_points`, `gamification_total_points`, `gamification_total_spent_points`, `user_level`, `user_level_course_complete`, `total_referrer_users`, `first_name`, `last_name`, `is_login_into_web`, `dark_mode`, `sidebar`, `institute_id`) VALUES
(1, 1, 'Admin', NULL, 'public/demo/user/admin.jpg', NULL, NULL, '2025-05-17 17:35:19', 'mail', 1, 'admin', 'aaditec25@gmail.com', '0', '$2y$10$aNtUQb1mnydsb1Wt4oG26uTlYplhE1pGoCKP8etXpRGdu2exQ89Ja', 'Administrator', '96897002784', NULL, '19', NULL, NULL, 'As the Super Admin of our platform, I bring over a decade of experience in managing and leading digital transformation initiatives. My journey began in the tech industry as a developer, and I have since evolved into a strategic leader with a focus on innovation and operational excellence. I am passionate about leveraging technology to solve complex problems and drive organizational growth. Outside of work, I enjoy mentoring aspiring tech professionals and staying updated with the latest industry trends.', 'Experienced tech leader with a decade in digital transformation. Passionate about innovation, problem-solving, and mentoring.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, '1', 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'Fy47nqxlSR', 0, '', '', 'YZDWXInckR2895YR0vhpsdKuj2tLoMTUhp5UuOS5yGOubZW88stzLLNzfq2B', '2025-05-17 05:35:19', '2025-05-21 19:12:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-21 19:12:58', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(3, 2, 'Kautilya Roshan', NULL, 'public/uploads/main/files/17-05-2025/WhatsApp Image 2025-05-17 at 9.57.24 PM.jpeg', NULL, NULL, '2025-05-17 22:41:40', 'mail', 1, 'kautilya-roshan', 'roshankautilya@gmail.com', '1', '$2y$10$LbpJDhR9BMStquYrW.EOdeeaxGI7R2STITJwJzINSL8bLnsuBwsgK', NULL, '8340647293', NULL, '101', NULL, '02/24/1993', '<p>Corporate Marketing Trainer | Marketing Consultant - From 8+ Years Helped 9000 + Students and More Than 50+ Businesses Succeed Online</p>', NULL, NULL, NULL, 'https://www.linkedin.com/in/kautilyaroshan/', NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'qvaomnzOBz', 1, NULL, NULL, NULL, '2025-05-17 22:41:40', '2025-05-20 14:03:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(4, 2, 'Dr Abinaya Gopalakrishnan', NULL, 'public/uploads/main/files/17-05-2025/abinaya.webp', NULL, NULL, '2025-05-17 22:48:18', 'mail', 1, 'dr-abinaya-gopalakrishnan', 'shaliniv35029@gmail.com', '1', '$2y$10$oDd/X3z0m7cFj6xQQh1DdOVb7KxjjP79HOFvRfu8wmsi3l0i53YqC', NULL, NULL, NULL, '101', NULL, '', '<p><font color=\"#2a2b3f\" face=\"Udemy Sans, SF Pro Text, -apple-system, BlinkMacSystemFont, Roboto, Segoe UI, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol\">&nbsp;I\'m a developer with a passion for teaching. I\'m the lead instructor at the London App Brewery, London\'s leading Programming Bootcamp. I\'ve helped hundreds of thousands of students learn to code and change their lives by becoming a developer. I\'ve been invited by companies such as Twitter, Facebook and Google to teach their employees.</font></p><p><font color=\"#2a2b3f\" face=\"Udemy Sans, SF Pro Text, -apple-system, BlinkMacSystemFont, Roboto, Segoe UI, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol\"><br></font></p><p><font color=\"#2a2b3f\" face=\"Udemy Sans, SF Pro Text, -apple-system, BlinkMacSystemFont, Roboto, Segoe UI, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol\">My first foray into programming was when I was just 12 years old, wanting to build my own Space Invader game. Since then, I\'ve made hundred of websites, apps and games. But most importantly, I realised that my greatest passion is teaching.</font></p>', NULL, NULL, NULL, 'https://www.linkedin.com/https://www.linkedin.com/in/abinaya-gopalakrishnan-15b816251/?_l=en_US', NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'qXhloikN8g', 1, NULL, NULL, NULL, '2025-05-17 22:48:18', '2025-05-21 10:12:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-21 10:12:20', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 3, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(5, 2, 'Ing. Tomáš Morávek', NULL, 'public/uploads/main/files/17-05-2025/vara.webp', NULL, NULL, '2025-05-17 22:52:00', 'mail', 1, 'ing-tomas-moravek', 'varadharajseran20@gmail.com', '1', '$2y$10$lKThIwdWoQ9MVcUu6sUfR.WOThnVqiut7jOqfX6XCdpR/hFRdJeNa', NULL, NULL, NULL, '101', NULL, '', '<p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; max-width: 60rem;\"><font color=\"#303141\" face=\"Udemy Sans, SF Pro Text, -apple-system, BlinkMacSystemFont, Roboto, Segoe UI, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol\"><span style=\"font-size: 16px;\">AI Technologies is at the forefront of education in the fields of Data Science, Machine Learning, Generative AI, Deep Learning, and related technologies. Founded by industry veteran Krish Naik, who has over 13 years of experience in the data analytics industry and more than 7 years of teaching expertise, our mission is to equip learners with the skills and knowledge required to excel in the rapidly evolving tech landscape.</span></font></p>', NULL, NULL, NULL, 'https://linkedin.com/in/ingtomasmoravek', NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'GyCxEstaTu', 1, NULL, NULL, NULL, '2025-05-17 22:52:00', '2025-05-20 16:01:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-20 16:01:43', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(6, 2, 'Stephane Maarek', NULL, 'public/uploads/main/files/17-05-2025/shal.webp', NULL, NULL, '2025-05-17 22:55:32', 'mail', 1, 'stephane-maarek', 'shalinishalu17@gmail.com', '1', '$2y$10$6p1SZZDID.vpRg.Z5aQNDOxPCvnk8785PkRsIvnB5uDayqcWg4xSm', NULL, NULL, NULL, '101', NULL, '', '<p><font color=\"#303141\" face=\"Udemy Sans, SF Pro Text, -apple-system, BlinkMacSystemFont, Roboto, Segoe UI, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol\"><span style=\"font-size: 16px;\">I am currently a Senior Android Engineer at a major UK company, although I do not come from a computer science background.</span></font></p><p><font color=\"#303141\" face=\"Udemy Sans, SF Pro Text, -apple-system, BlinkMacSystemFont, Roboto, Segoe UI, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#303141\" face=\"Udemy Sans, SF Pro Text, -apple-system, BlinkMacSystemFont, Roboto, Segoe UI, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol\"><span style=\"font-size: 16px;\">I started my career as a professional musician and fully qualified music teacher, teaching both in the UK and internationally, including in the Middle East.</span></font></p>', NULL, NULL, NULL, 'https://linkedin.com/in/stephanemaarek', NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'igRLLtNUPV', 1, NULL, NULL, NULL, '2025-05-17 22:55:32', '2025-05-20 12:37:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(7, 2, 'Daniel Schifano', NULL, 'public/uploads/main/files/17-05-2025/img.webp', NULL, NULL, '2025-05-17 23:02:44', 'mail', 1, 'daniel-schifano', 'varadharaj160@gmail.com', '1', '$2y$10$EpfAM6jeBWE8UbmkHwpvX.5gRrXkf1Z9yYCk/UdrY2Ss7jApQRPF.', NULL, NULL, NULL, '101', NULL, '', '<p>Daniel is a design leader in tech with extensive experience in helping startups build and iterate on their products. Daniel is passionate about teaching and empowering designers and working with other disciplines to build purposeful products that meet both user and business goals.</p><p><br></p><p>His approach to design is always thoughtful and iterative. Daniel often finds himself working collaboratively with his team whether that is sketching concepts and flows or leading design strategy with team leads and external stakeholders</p>', NULL, NULL, NULL, 'https://linkedin.com/in/daniel-schifano/', NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'uyfMwoRsiH', 1, NULL, NULL, NULL, '2025-05-17 23:02:44', '2025-05-20 12:41:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(19, 3, 'Jeevana', NULL, NULL, NULL, NULL, '2025-05-20 09:32:41', 'mail', 1, 'jeevana', 'jeevana28@gmail.com', '1', '$2y$10$mdsc6RVjPR0H8n5MgDvzFehPRlxgUejs5.Vz28Bgu3TGrqYnTtn5C', NULL, NULL, NULL, '101', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'UfyqbjqjcP', 1, NULL, NULL, NULL, '2025-05-20 09:32:41', '2025-05-20 12:14:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'other', NULL, NULL, NULL, NULL, NULL, '2025-05-20 12:14:38', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(20, 3, 'Surya', NULL, NULL, NULL, NULL, '2025-05-20 09:33:27', 'mail', 1, 'surya', 'surya14@gmail.com', '1', '$2y$10$e.pReK8U4IM5sv82kqxmLeoIyKwnk6Itmu/a1lak6QgCWMmN9/3Xa', NULL, NULL, NULL, '101', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'B4h9v1z8Rs', 1, NULL, NULL, NULL, '2025-05-20 09:33:27', '2025-05-20 09:33:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(21, 3, 'Kishore', NULL, NULL, NULL, NULL, '2025-05-20 09:34:31', 'mail', 1, 'kishore', 'kishore27@gmail.com', '1', '$2y$10$QLxDpjgVt.u2.j5d3x2fWOAUbyzRCjhcQ2pLh3Z/h4jx9Hym61qNK', NULL, NULL, NULL, '101', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'ohiJTSNS3R', 1, NULL, NULL, NULL, '2025-05-20 09:34:31', '2025-05-20 09:34:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(22, 3, 'Kaaviyasree', NULL, NULL, NULL, NULL, '2025-05-20 09:37:23', 'mail', 1, 'kaaviyasree', 'kaaviya05@gmail.com', '1', '$2y$10$HwJiD64pgiL01ew9gg1wfOh7OPW01Igq0yUqe9QjKOli/BB1eMQoe', NULL, NULL, NULL, '101', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'eDn3gldfb5', 1, NULL, NULL, NULL, '2025-05-20 09:37:23', '2025-05-20 09:37:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(23, 3, 'Nadeem', NULL, NULL, NULL, NULL, '2025-05-20 09:38:51', 'mail', 1, 'nadeem', 'nadeem05@gmail.com', '1', '$2y$10$wBPVWdN.dGx6tDQ/zCL/y.VJ0ELmX9sguShK/O3b9KYIx6UnCrSr6', NULL, NULL, NULL, '101', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', '71xrJ4ZO4S', 1, NULL, NULL, NULL, '2025-05-20 09:38:51', '2025-05-20 15:26:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-20 15:26:53', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 4, 4, 0, 1, 2, 0, NULL, NULL, 0, 0, 1, NULL),
(24, 3, 'Thirisha', NULL, NULL, NULL, NULL, '2025-05-20 09:41:48', 'mail', 1, 'thirisha', 'thirisha1308@gmail.com', '1', '$2y$10$cqTMgirEEpxajvUYcrFydu5SO/4lNukqTCVp5SqrHpgNx/1iZCHIS', NULL, NULL, NULL, '101', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'fJqmjRuXS9', 1, NULL, NULL, NULL, '2025-05-20 09:41:48', '2025-05-20 09:41:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(25, 3, 'Shyam', NULL, NULL, NULL, NULL, '2025-05-20 09:47:39', 'mail', 1, 'shyam', 'shyamsv20@gmail.com', '1', '$2y$10$WFU2FMbzxmpwN5G9kW6Z0esyKURRt3wmPo.lDszYM.gF2RrQH4NCi', NULL, NULL, NULL, '101', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'sQ9oQmMghh', 1, NULL, NULL, NULL, '2025-05-20 09:47:39', '2025-05-20 09:55:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-20 09:55:42', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(26, 3, 'Diwakar', NULL, NULL, NULL, NULL, '2025-05-20 09:48:19', 'mail', 1, 'diwakar', 'diwakar20@gmail.com', '1', '$2y$10$WIUgJvKdmUt98eWUqEgb0eTPgXPFYWbITEjwmC29EqvLOBFmBB68K', NULL, NULL, NULL, '101', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', '9p9gi9Qv9a', 1, NULL, NULL, NULL, '2025-05-20 09:48:19', '2025-05-20 09:48:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(27, 3, 'Ramesh', NULL, NULL, NULL, NULL, '2025-05-20 09:49:24', 'mail', 1, 'ramesh', 'ramesh14@gmail.com', '1', '$2y$10$XIq64675OIL.u4RQcyN6tuEgfGl7L1Kd3co5jt9igqAmUFtLKp2MC', NULL, NULL, NULL, '101', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'C39ueNZwNP', 1, NULL, NULL, NULL, '2025-05-20 09:49:24', '2025-05-20 09:49:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(28, 3, 'Priya', NULL, NULL, NULL, NULL, '2025-05-20 09:54:08', 'mail', 1, 'priya', 'priya20@gmail.com', '1', '$2y$10$kxX6LQ/HlXnXkkeTBMuLS.z9O.3VFN3lFGvLqrs19aHHuc3VrK.Dm', NULL, NULL, NULL, '101', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'RgmQ0byvsU', 1, NULL, NULL, NULL, '2025-05-20 09:54:08', '2025-05-20 09:59:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-20 09:59:39', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(29, 3, 'Shakthi', NULL, NULL, NULL, NULL, '2025-05-20 10:32:57', 'mail', 1, 'shakthi', 'shakthi20@gmail.com', '1', '$2y$10$7okwmoczuEGJUvb6SsYm7edYOVLrC38oxeC.h9Taj414aQFrUyJoa', NULL, NULL, NULL, '101', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'v2l4OYP4WI', 1, NULL, NULL, NULL, '2025-05-20 10:32:57', '2025-05-20 10:32:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(30, 3, 'Abishek', NULL, NULL, NULL, NULL, '2025-05-20 10:47:22', 'mail', 1, 'abishek', 'abishek14@gmail.com', '1', '$2y$10$0HgVsI8dgkCXmmW87KD8GeDL3MfrhCGM7Pw1nQTkUzSuyHKyAgN0W', NULL, NULL, NULL, '101', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', '3kJzaLIMoh', 1, NULL, NULL, NULL, '2025-05-20 10:47:22', '2025-05-20 10:47:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(31, 3, 'Madhan S', NULL, NULL, NULL, NULL, '2025-05-20 10:48:59', 'mail', 1, 'madhan-s', 'madhanmaddy20@gmail.com', '1', '$2y$10$7KM3KgXG4Jltlq2cQHZk9eEsAtDJfEBTyG6LRCQ6cQMmuxQoeUU5K', NULL, NULL, NULL, '101', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'ZVzgw1Tbmk', 1, NULL, NULL, NULL, '2025-05-20 10:48:59', '2025-05-20 10:48:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(32, 3, 'kaaviyashree s', NULL, NULL, NULL, NULL, NULL, 'mail', 1, 'kaaviyashree-s', 'kaaviyasuresh05@gmail.com', '0', '$2y$10$FVIjFXoj.F47zdJYHntDA.yi5wRYpjfldH72hV1.cD3XyIMZonu2G', NULL, '08825555024', NULL, '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'avK8sX0D3p', 0, NULL, NULL, NULL, '2025-05-20 11:13:54', '2025-05-20 11:13:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', NULL, 1, 1, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(33, 3, 'Roman', NULL, NULL, NULL, NULL, NULL, 'mail', 1, 'roman', 'hongkong632503@gmail.com', '0', '$2y$10$/RIlNvmes3z3OJELU8P6dOgxWN2s0kanIvC.JyRUOb65uQ1ZvOODu', NULL, '9791829954', NULL, '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'etbMUmqvlL', 0, NULL, NULL, NULL, '2025-05-20 16:55:00', '2025-05-20 16:55:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', NULL, 1, 1, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(34, 3, 'Shalini V', NULL, NULL, NULL, NULL, NULL, 'mail', 1, 'shalini-v', 'shalini.v2023@vitstudent.ac.in', '0', '$2y$10$j2pi52rVjhLwtP15zf3IceM.0on/i68ymfRKdthj8vUlONanUy6qK', NULL, '9626068305', NULL, '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'OsNkzNs2lt', 0, NULL, NULL, NULL, '2025-05-20 18:15:16', '2025-05-20 22:58:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-20 22:58:17', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', NULL, 2, 2, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(36, 3, 'Roman', NULL, NULL, NULL, NULL, '2025-05-20 21:05:00', 'mail', 1, 'roman-1', 'varadharajshaliniapp@gmail.com', '0', '$2y$10$24IRvC6ylf/x.Xsew8hv0OVCaZV0fY3k/m5N9xFSVNe2mm1MBODNy', NULL, '9791819943', NULL, '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'eD4rGyR1FO', 0, NULL, NULL, NULL, '2025-05-20 21:14:00', '2025-05-20 21:14:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', NULL, 1, 1, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL),
(37, 3, 'Shalini V', NULL, NULL, NULL, NULL, '2025-05-21 10:05:52', 'mail', 1, 'shalini-v-1', 'nithiya.r2023@vitstudent.ac.in', '0', '$2y$10$ucqEcsgsYRCbaEEk7Orbbe7uRldgGQyA1AP71aYyt0srW4QwJLkPy', NULL, '9943643995', NULL, '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '19', 'en', 'English', 1, 0, 112, NULL, 'PayPal', 'public/uploads/payout/pay_1.png', 'demo@paypal.com', 'KQ754y8WgI', 0, NULL, NULL, NULL, '2025-05-21 10:14:52', '2025-05-21 10:14:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, '', NULL, 1, 1, 0, 1, 0, 0, NULL, NULL, 0, 0, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_referral_unique` (`referral`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
