-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2022 at 08:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `authenticate_user`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_donation_history`
--

CREATE TABLE `blood_donation_history` (
  `id` int(11) NOT NULL,
  `donar_id` int(11) NOT NULL,
  `donate_date` date NOT NULL,
  `recieve_date` date NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blood_group`
--

CREATE TABLE `blood_group` (
  `id` int(11) NOT NULL,
  `group_name` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_group`
--

INSERT INTO `blood_group` (`id`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'A+', '2022-07-23 19:21:19', NULL),
(2, 'A-', '2022-07-23 19:21:19', NULL),
(3, 'B+', '2022-07-23 19:21:19', NULL),
(4, 'B-', '2022-07-23 19:21:19', NULL),
(5, 'O+', '2022-07-23 19:21:19', NULL),
(6, 'O-', '2022-07-23 19:21:19', NULL),
(7, 'AB+', '2022-07-23 19:21:19', NULL),
(8, 'AB-', '2022-07-23 19:21:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(100) NOT NULL,
  `division_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bn_name` varchar(200) NOT NULL,
  `lat` varchar(200) NOT NULL,
  `long` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `division_id`, `name`, `bn_name`, `lat`, `long`) VALUES
(1, 3, 'Dhaka', 'ঢাকা', '23.7115253', '90.4111451'),
(2, 3, 'Faridpur', 'ফরিদপুর', '23.6070822', '89.8429406'),
(3, 3, 'Gazipur', 'গাজীপুর', '24.0022858', '90.4264283'),
(4, 3, 'Gopalganj', 'গোপালগঞ্জ', '23.0050857', '89.8266059'),
(5, 8, 'Jamalpur', 'জামালপুর', '24.937533', '89.937775'),
(6, 3, 'Kishoreganj', 'কিশোরগঞ্জ', '24.444937', '90.776575'),
(7, 3, 'Madaripur', 'মাদারীপুর', '23.164102', '90.1896805'),
(8, 3, 'Manikganj', 'মানিকগঞ্জ', '23.8644', '90.0047'),
(9, 3, 'Munshiganj', 'মুন্সিগঞ্জ', '23.5422', '90.5305'),
(10, 8, 'Mymensingh', 'ময়মনসিংহ', '24.7471', '90.4203'),
(11, 3, 'Narayanganj', 'নারায়াণগঞ্জ', '23.63366', '90.496482'),
(12, 3, 'Narsingdi', 'নরসিংদী', '23.932233', '90.71541'),
(13, 8, 'Netrokona', 'নেত্রকোণা', '24.870955', '90.727887'),
(14, 3, 'Rajbari', 'রাজবাড়ি', '23.7574305', '89.6444665'),
(15, 3, 'Shariatpur', 'শরীয়তপুর', '23.2423', '90.4348'),
(16, 8, 'Sherpur', 'শেরপুর', '25.0204933', '90.0152966'),
(17, 3, 'Tangail', 'টাঙ্গাইল', '24.2513', '89.9167'),
(18, 5, 'Bogura', 'বগুড়া', '24.8465228', '89.377755'),
(19, 5, 'Joypurhat', 'জয়পুরহাট', '25.0968', '89.0227'),
(20, 5, 'Naogaon', 'নওগাঁ', '24.7936', '88.9318'),
(21, 5, 'Natore', 'নাটোর', '24.420556', '89.000282'),
(22, 5, 'Nawabganj', 'নবাবগঞ্জ', '24.5965034', '88.2775122'),
(23, 5, 'Pabna', 'পাবনা', '23.998524', '89.233645'),
(24, 5, 'Rajshahi', 'রাজশাহী', '24.3745', '88.6042'),
(25, 5, 'Sirajgonj', 'সিরাজগঞ্জ', '24.4533978', '89.7006815'),
(26, 6, 'Dinajpur', 'দিনাজপুর', '25.6217061', '88.6354504'),
(27, 6, 'Gaibandha', 'গাইবান্ধা', '25.328751', '89.528088'),
(28, 6, 'Kurigram', 'কুড়িগ্রাম', '25.805445', '89.636174'),
(29, 6, 'Lalmonirhat', 'লালমনিরহাট', '25.9923', '89.2847'),
(30, 6, 'Nilphamari', 'নীলফামারী', '25.931794', '88.856006'),
(31, 6, 'Panchagarh', 'পঞ্চগড়', '26.3411', '88.5541606'),
(32, 6, 'Rangpur', 'রংপুর', '25.7558096', '89.244462'),
(33, 6, 'Thakurgaon', 'ঠাকুরগাঁও', '26.0336945', '88.4616834'),
(34, 1, 'Barguna', 'বরগুনা', '22.0953', '90.1121'),
(35, 1, 'Barishal', 'বরিশাল', '22.7010', '90.3535'),
(36, 1, 'Bhola', 'ভোলা', '22.685923', '90.648179'),
(37, 1, 'Jhalokati', 'ঝালকাঠি', '22.6406', '90.1987'),
(38, 1, 'Patuakhali', 'পটুয়াখালী', '22.3596316', '90.3298712'),
(39, 1, 'Pirojpur', 'পিরোজপুর', '22.5841', '89.9720'),
(40, 2, 'Bandarban', 'বান্দরবান', '22.1953275', '92.2183773'),
(41, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', '23.9570904', '91.1119286'),
(42, 2, 'Chandpur', 'চাঁদপুর', '23.2332585', '90.6712912'),
(43, 2, 'Chattogram', 'চট্টগ্রাম', '22.335109', '91.834073'),
(44, 2, 'Cumilla', 'কুমিল্লা', '23.4682747', '91.1788135'),
(45, 2, 'Cox\'s Bazar', 'কক্স বাজার', '21.4272', '92.0058'),
(46, 2, 'Feni', 'ফেনী', '23.0159', '91.3976'),
(47, 2, 'Khagrachari', 'খাগড়াছড়ি', '23.119285', '91.984663'),
(48, 2, 'Lakshmipur', 'লক্ষ্মীপুর', '22.942477', '90.841184'),
(49, 2, 'Noakhali', 'নোয়াখালী', '22.869563', '91.099398'),
(50, 2, 'Rangamati', 'রাঙ্গামাটি', '22.7324', '92.2985'),
(51, 7, 'Habiganj', 'হবিগঞ্জ', '24.374945', '91.41553'),
(52, 7, 'Maulvibazar', 'মৌলভীবাজার', '24.482934', '91.777417'),
(53, 7, 'Sunamganj', 'সুনামগঞ্জ', '25.0658042', '91.3950115'),
(54, 7, 'Sylhet', 'সিলেট', '24.8897956', '91.8697894'),
(55, 4, 'Bagerhat', 'বাগেরহাট', '22.651568', '89.785938'),
(56, 4, 'Chuadanga', 'চুয়াডাঙ্গা', '23.6401961', '88.841841'),
(57, 4, 'Jashore', 'যশোর', '23.16643', '89.2081126'),
(58, 4, 'Jhenaidah', 'ঝিনাইদহ', '23.5448176', '89.1539213'),
(59, 4, 'Khulna', 'খুলনা', '22.815774', '89.568679'),
(60, 4, 'Kushtia', 'কুষ্টিয়া', '23.901258', '89.120482'),
(61, 4, 'Magura', 'মাগুরা', '23.487337', '89.419956'),
(62, 4, 'Meherpur', 'মেহেরপুর', '23.762213', '88.631821'),
(63, 4, 'Narail', 'নড়াইল', '23.172534', '89.512672'),
(64, 4, 'Satkhira', 'সাতক্ষীরা', '22.7185', '89.0705');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_post`
--

CREATE TABLE `emergency_post` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blood_group` int(255) NOT NULL,
  `purpose` text NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=Resolved, 2= pending,3=in progress',
  `donator_id` int(11) NOT NULL COMMENT 'blood donator id',
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `emergency_post_id` int(11) NOT NULL,
  `message_time` datetime NOT NULL,
  `message_body` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `emergency_post_id`, `message_time`, `message_body`, `user_id`, `receiver_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-06-11 23:06:33', 'i am aviable', 1, 0, '2022-06-17 18:54:11.363778', NULL),
(2, 1, '2022-06-11 23:07:44', 'not need anymore', 1, 2, '2022-06-17 18:54:11.363778', NULL),
(3, 1, '2022-06-17 18:53:13', 'test message', 1, 1, '2022-06-17 18:58:50.765545', NULL),
(4, 1, '2022-06-17 18:53:13', 'test message', 1, 1, '2022-06-23 16:55:49.779563', NULL),
(5, 1, '2022-06-17 18:53:13', 'test message', 1, 1, '2022-06-23 17:48:40.106411', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(29, '2014_10_12_000000_create_users_table', 1),
(30, '2014_10_12_100000_create_password_resets_table', 1),
(31, '2019_08_19_000000_create_failed_jobs_table', 1),
(32, '2021_06_24_052005_blog', 1),
(33, '2021_07_08_085859_create_permission_tables', 1),
(34, '2021_07_12_182341_create_categories_table', 1),
(35, '2021_07_13_135408_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` int(5) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` int(11) NOT NULL,
  `address` varchar(2555) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL COMMENT '1=Admin, 2= Moderator, 3= User',
  `status` int(4) NOT NULL COMMENT '1= approved by admin, 2= Pending/rejected, 3= Block',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone_number`, `blood_group`, `email`, `nid`, `district_id`, `address`, `type`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '12345678', 1, 'admin@gmail.com', '123456789', 1, 'Rampura', 1, 1, NULL, '$2y$10$M6M3DIv0fqWmLTz5/9.8Nulg/Nd2cXFML2srHgX.3a7KY04vrOdxe', NULL, '2022-07-02 13:53:12', '2022-07-02 13:53:12'),
(2, 'Md Samiur Rahman', '01714491616', 1, 'triptorahman@gmail.com', '123456789', 40, 'house:85', 3, 1, NULL, '$2y$10$.P1IgNHQ5csBebxghb2XsuXAVw37L9aKhU.NIXYXIHclM4kK4Ly3a', NULL, '2022-12-14 12:50:04', '2022-12-14 13:09:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_donation_history`
--
ALTER TABLE `blood_donation_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_post`
--
ALTER TABLE `emergency_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_donation_history`
--
ALTER TABLE `blood_donation_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emergency_post`
--
ALTER TABLE `emergency_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
