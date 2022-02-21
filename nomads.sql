-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2022 at 03:03 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nomads`
--

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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'assets/gallery/Ftwpx3uCBzAseOIO0st9hOA6zxBgvdojbzzEjDaE.jpg', NULL, '2022-02-18 18:57:36', '2022-02-19 09:45:11'),
(2, 3, 'assets/gallery/j2581OqESHzb0oOFMtgM25NXIwsaOtBBMqC0Wdkq.jpg', '2022-02-18 19:33:13', '2022-02-18 18:59:55', '2022-02-18 19:33:13'),
(3, 3, 'assets/gallery/l70KeE9Hmd1PUR5S6yVvOXY04iTcJ9RKoBBiVSJS.jpg', NULL, '2022-02-18 19:33:32', '2022-02-19 09:55:32'),
(4, 5, 'assets/gallery/yfZN0zo4meS4r5VeissKKrCBUNHB3xd9wM0E185V.jpg', NULL, '2022-02-19 07:25:52', '2022-02-19 09:26:21'),
(5, 6, 'assets/gallery/wlNvygb2xqjFT6ExKSfH00WhlygScqr1uq3zQCQo.jpg', NULL, '2022-02-19 07:29:21', '2022-02-19 11:05:03'),
(6, 3, 'assets/gallery/wtDKVHrTMR7HeLVuKF7eVdSFIR2aB7JIpI0G3oVy.jpg', '2022-02-19 07:37:04', '2022-02-19 07:30:37', '2022-02-19 07:37:04'),
(7, 5, 'assets/gallery/JLhsKJFy90AB9ui8Oe3RCsEPcXjS2hfknMM2Bmkh.jpg', NULL, '2022-02-19 09:16:44', '2022-02-19 09:29:57'),
(8, 5, 'assets/gallery/OxSxctsmyWqcQMikoXRjaHMUdvRPvJHqAqF3Stz3.jpg', NULL, '2022-02-19 09:27:43', '2022-02-19 09:30:10'),
(9, 5, 'assets/gallery/iOm4pwFib2vzvqIce4ZGDkQP7oHT8O9FFpYAIjeK.jpg', NULL, '2022-02-19 09:28:22', '2022-02-19 09:30:49'),
(10, 5, 'assets/gallery/qucqPooWe0D45F2RIkoQ3pJ1N3iTGCkhh2jcKDuQ.jpg', NULL, '2022-02-19 09:28:57', '2022-02-19 09:31:28'),
(11, 5, 'assets/gallery/VqnbyHFyK20zoXxM1f22HFGI7HYRqTVxuKr0SiqV.jpg', '2022-02-19 09:31:31', '2022-02-19 09:29:12', '2022-02-19 09:31:31'),
(12, 2, 'assets/gallery/nz1yRnzJBehPkbmw8jWvR6ZY2mGgMC7WIQAfYDDZ.jpg', NULL, '2022-02-19 09:45:50', '2022-02-19 09:47:15'),
(13, 2, 'assets/gallery/EqpA9mo9T5vLDVCd431bvoe4n5ENzy5EyTh51EfK.jpg', NULL, '2022-02-19 09:47:40', '2022-02-19 09:47:40'),
(14, 2, 'assets/gallery/fCcV9WMzrhrZn4p1pOdkV90dInYn3uADvumxg59j.jpg', NULL, '2022-02-19 09:48:03', '2022-02-19 09:48:21'),
(15, 2, 'assets/gallery/svpKDLMF2fvOi1nxRxhSowFgrDqdBuJUNIsEmLB2.jpg', NULL, '2022-02-19 09:49:11', '2022-02-19 09:49:11'),
(16, 3, 'assets/gallery/iBtGEeaTWXlOcMaGd2KxSyxATOruKtWUlYo8YD7f.jpg', NULL, '2022-02-19 09:57:29', '2022-02-19 10:58:22'),
(17, 3, 'assets/gallery/RRDOCiDo0bFO5MaR1giAOXfPAXM3mP7ADhfiRjCs.jpg', NULL, '2022-02-19 09:57:53', '2022-02-19 10:58:35'),
(18, 3, 'assets/gallery/SiX0NPOC38sdWTmGMIUhVKeGUQCCqpNY2UiSRUS2.jpg', NULL, '2022-02-19 09:58:12', '2022-02-19 10:58:46'),
(19, 3, 'assets/gallery/3TVxqJ34igDAHkMzIfSxmyCG89RD5iMLwFssrVNk.jpg', NULL, '2022-02-19 10:57:52', '2022-02-19 10:57:52'),
(20, 6, 'assets/gallery/5UECMaXo5TWVDF7Riwk1Tm5GojlcP3UdTclxJ5Uf.jpg', NULL, '2022-02-19 11:02:31', '2022-02-19 11:05:55'),
(21, 6, 'assets/gallery/eehYbLMo4W5lubMsq2eZuh0QT22MiqajJLXYjOjZ.jpg', NULL, '2022-02-19 11:06:23', '2022-02-19 11:06:23'),
(22, 6, 'assets/gallery/DzNdI7ezCsi2EWnfXI2Cljr9jsnmkJM9JCquhWmd.jpg', NULL, '2022-02-19 11:06:45', '2022-02-19 11:06:45'),
(23, 6, 'assets/gallery/v85dbffUVL5OqQFpzCokrVgtIHcxxPX2UtA97ukS.jpg', NULL, '2022-02-19 11:06:58', '2022-02-19 11:06:58');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_02_17_092033_create_travel_packages_table', 1),
(5, '2022_02_17_093617_create_galleries_table', 2),
(6, '2022_02_17_094336_create_transactions_table', 3),
(7, '2022_02_17_103820_create_transaction_details_table', 4),
(8, '2022_02_17_165235_add_roles_field_to_users_table', 5),
(9, '2022_02_17_185651_add_username_field_to_users_table', 6);

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
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 5, 10, 0, 60, 'IN_CART', '2022-02-20 11:17:21', '2022-02-20 09:26:42', '2022-02-20 11:17:21'),
(4, 5, 10, 0, 30, 'PENDING', NULL, '2022-02-20 11:14:41', '2022-02-20 11:17:00'),
(5, 3, 5, 0, 8, 'IN_CART', NULL, '2022-02-20 11:26:42', '2022-02-20 11:26:42'),
(6, 6, 21, 0, 38, 'PENDING', NULL, '2022-02-20 11:27:24', '2022-02-20 11:30:09'),
(7, 3, 21, 0, 8, 'PENDING', NULL, '2022-02-20 11:32:22', '2022-02-20 11:40:20'),
(8, 6, 21, 0, 38, 'PENDING', '2022-02-20 12:26:56', '2022-02-20 11:49:54', '2022-02-20 12:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 2, 'rose', 'ID', 0, '2027-02-20', NULL, '2022-02-20 09:12:27', '2022-02-20 09:12:27'),
(3, 3, 'rose', 'ID', 0, '2027-02-20', '2022-02-20 11:12:52', '2022-02-20 09:26:42', '2022-02-20 11:12:52'),
(4, 4, 'rose', 'ID', 0, '2027-02-20', NULL, '2022-02-20 11:14:41', '2022-02-20 11:14:41'),
(5, 5, '', 'ID', 0, '2027-02-20', NULL, '2022-02-20 11:26:42', '2022-02-20 11:26:42'),
(6, 6, 'lita', 'ID', 0, '2027-02-20', NULL, '2022-02-20 11:27:24', '2022-02-20 11:27:24'),
(7, 7, 'lita', 'ID', 0, '2027-02-20', NULL, '2022-02-20 11:32:22', '2022-02-20 11:32:22'),
(8, 8, 'lita', 'ID', 0, '2027-02-20', NULL, '2022-02-20 11:49:54', '2022-02-20 11:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ok', 'ok', 'ok', 'ok', 'Komodo Dragons', 'Indonesian', 'Local Foods', '2022-02-18', '2 Days', 'Open Trip', 14, '2022-02-19 04:31:26', '2022-02-18 09:48:56', '2022-02-19 04:31:26'),
(2, 'BOROBUDUR TEMPLE', 'borobudur-temple', 'WEST JAVA, INDONESIA', '<p align=\"justify\">Borobudur temple is the world\'s biggest Buddhist monument you must visit at least once in your lifetime. The area is surrounded by beautiful scenery of Central Java’s nature that you can only find there. The temple sits majestically on a hilltop overlooking lush green fields and distant hills. Built between AD 780 and 840 during the reign of Syailendra dynasty, the temple\'s design in Gupta architecture reflects India\'s influence on the region. However, there are enough indigenous scenes and elements incorporated to make Borobudur uniquely Indonesian.</p>\r\n <p align=\"justify\"\">The temple has remained strong even through ten centuries of neglect. It was rediscovered in 1814 under the order of Sir Thomas Stanford Raffles. In the 1970s, the Indonesian Government and UNESCO worked together to restore Borobudur to its former majesty. The restoration took eight years to complete, making Borobudur one of Indonesia’s most valuable treasures.  The temple is decorated with stone carvings in bas-relief, representing images from the life of Buddha. Commentators claim that this is the largest and most complete ensemble of Buddhist reliefs in the world, unsurpassed in artistic merit. </p>', 'Visit the museums', 'Indonesian and english', 'Local food', '2022-02-20', '12 hours', 'Open trip', 12, NULL, '2022-02-18 09:57:43', '2022-02-19 12:48:40'),
(3, 'MOUNT BROMO', 'mount-bromo', 'EAST JAVA, INDONESIA', '<p align=\"justify\">Mount Bromo is one of active volcanoes in Indonesia located in East Java and is nestled in the regencies of Probolinggo, Pasuruan, Lumajang and Malang. Bromo volcano which stands tall at 2329 m is the most iconic and the most hiked mountain in Indonesia. Mount Bromo is still one of the most active volcanoes in the world and there are areas that are blocked off from tourists due to its imminent danger. It sits inside the massive Tengger caldera (volcanic crater with a diameter approximately 10km), surrounded by the Laut Pasir (sea of sand) of fine volcanic sand.</p>\r\n<p align=\"justify\"\">Mount Bromo is not as big as other volcanoes in Indonesia but the view of Bromo is amazing. The magnificent beauty of Mount Bromo makes tourists amazed. As an active volcano, Bromo is the main and popular tourist destination in East Java and always filled with domestic and international tourists even outside the holiday period. Foreign travellers usually visit the area on weekdays, meanwhile locals mostly travel there on weekends.</p>', 'Hiking', 'Indonesian', 'Mie instan and snack', '2022-02-19', '2 days', 'Open trip', 8, NULL, '2022-02-18 10:40:07', '2022-02-19 12:45:24'),
(4, 'Coba', 'coba', 'coba', 'ok', 'aslkajsl', 'Indonesian', 'Local Foods', '2022-02-19', '2 Days', 'Open Trip', 20, '2022-02-18 19:32:11', '2022-02-18 18:54:37', '2022-02-18 19:32:11'),
(5, 'KOMODO ISLAND', 'komodo-island', 'NTT, INDONESIA', '<p align=\"justify\">Komodo Island is located between Sumbawa island and Flores in eastern Indonesia archipelago. Administratively include in Komodo district regional, West Manggarai regency, East Nusa Tenggara Province. In 1915 the Dutch government set Komodo Island as a nature conservation area for Komodo. In 1986, Komodo Island declared as World Heritage Site and Man and Biosphere Reserve (World Biosphere Reserve) by UNESCO.</p>\r\n<p align=\"justify\"\">Komodo Island also has amazing underwater life. The divers states that Komodo island is one of the best dive sites in the world. With stunning views of sea bottom where there are 385 species of beautiful corals, mangroves and sea grass, as well as home to thousands fishes, 70 sponges species, 10 species of dolphins, 6 kinds of whales, green turtles, and various types of sharks and stingrays. The combination of a variety of vegetation in the park provide a good environment for different types of animals in this region.</p>\r\n<p align=\"justify\">There are four villages in Komodo Island. It has one village that is Komodo village; Rinca island has two villages namely Rinca and Kerora, and Papagarang island has one village, Papagarang village. This location can be reached from Kupang, boarded a plane to Ende then forwarded by minibus to Labuan Bajo town for 10 hours journey, then we will go to Komodo Island by speed boat for 2 hours.</p>', 'Observation', 'Indonesian', 'Local food', '2022-02-19', '2 days', 'Open trip', 30, NULL, '2022-02-19 07:23:43', '2022-02-19 12:45:36'),
(6, 'GILI TRAWANGAN', 'gili-trawangan', 'LOMBOK, INDONESIA', '<p align=\"justify\">White sandy beaches. Tropical coral reefs. Warm inviting waters. All this awaits you on the Gili Trawangan and the Gili islands in Lombok.  And with no cars, no motorbikes, and no distractions other than beautiful tropical island scenery, the Gili islands off the northwest coast of Lombok are truly an ideal destination for a tropical getaway. Offering spectacular reefs and ominous dive sites like Shark reef, the Gili Trawangan, and the Gili islands in Lombok are the perfect escape for anyone wanting to get away to beautiful, natural, and relaxing surroundings. This is why these islands have become a popular destination for Western tourists looking for a remote island experience. </p>\r\n<p align=\"justify\"\">The Gilis consist of three islands: Gili Trawangan, Gili Meno, and Gili Air. In the local Sasak language, \"Gili\" means \"island\". In the Indonesian language, plural is denoted by repeating a noun. So \"Gili Gili\" literally means \"islands”. Renowned for friendly locals and superb natural beauty, each of the island’s is well prepared for tourists. Gili Trawangan is the largest and most popular of the three islands. It has a vibrant nightlife to keep you entertained once the sun goes down. With a wide collection of restaurants and bars, you’ll never be short of entertainment here.</p>', 'Diving', 'Indonesian and english', 'Seafood', '2022-02-20', '2 weeks', 'Open trip', 38, NULL, '2022-02-19 07:25:03', '2022-02-19 12:45:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USERS',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(4, 'Admin', 'admin@gmail.com', NULL, '$2y$10$BBBByRXIrb1mk4zc41PE6uvkVsC6D.FP1Our1qMd72mU433Ywp386', NULL, '2022-02-17 11:02:59', '2022-02-17 11:02:59', 'ADMIN', ''),
(5, 'Lala', 'm03@gmail.com', NULL, '$2y$10$XJDMRiQjnnBg6kZbsZnswukV0yGOH/hnDzUVSz3RfuxMYZ7Ur1mhK', NULL, '2022-02-17 11:15:04', '2022-02-17 11:15:04', 'USERS', 'lala'),
(10, 'Rose Familia', 'rosefamilia@gmail.com', NULL, '$2y$10$agpH0f8ApszSJEhu0J8mbulb33UPD0d8anHVqYKvIhNIfQaAFbTLu', NULL, '2022-02-18 16:41:22', '2022-02-18 16:41:22', 'USERS', 'rose'),
(13, 'Fira', 'hafizah.safira223@gmail.com', NULL, '$2y$10$3RrKxVepKtSYryJ3hO5zQua6/.9Q0XhSBTPg5ulEDXEDXJXC0g7AW', NULL, '2022-02-20 05:13:03', '2022-02-20 05:13:03', 'USERS', 'fira'),
(19, 'oke', 'apaaja@gmail.com', NULL, '$2y$10$STv1Hlq4v4drDFY.vPCUXuTbQs/q3EkJgeKo48Ll/q4oBakmU0eey', NULL, '2022-02-20 06:04:57', '2022-02-20 06:04:57', 'USERS', 'okedeh'),
(21, 'lita ameilia', 'litaameilia@gmail.com', NULL, '$2y$10$lDEOK.zScYz8qJ86rZyWveA6J5TxRd.Km07NcaknzXqyBUvZHxwR2', NULL, '2022-02-20 06:14:13', '2022-02-20 06:14:13', 'USERS', 'lita');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
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
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
