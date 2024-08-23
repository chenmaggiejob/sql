-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-08-16 02:43:28
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `mytiffany`
--

-- --------------------------------------------------------

--
-- 資料表結構 `tf_admin`
--

CREATE TABLE `tf_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `acc` text NOT NULL,
  `pwd` text NOT NULL,
  `name` text NOT NULL,
  `role` int(1) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `tf_admin`
--

INSERT INTO `tf_admin` (`id`, `acc`, `pwd`, `name`, `role`) VALUES
(1, 'admin', '1234', 'SuperAdmin', 1),
(2, 'user', '1234', 'User', 0),
(5, 'tiffany', '1234', 'tiffany', 0),
(13, 'usertest', '5678', 'test', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `tf_banner`
--

CREATE TABLE `tf_banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` text NOT NULL,
  `alt` text NOT NULL,
  `title` text NOT NULL,
  `des` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `tf_banner`
--

INSERT INTO `tf_banner` (`id`, `img`, `alt`, `title`, `des`, `sh`) VALUES
(1, '2024-Icons-HP-FWMH-SDR-Desktop.webp', 'Tiffany & CO', 'Band Ring', 'Each Tiffany Forever ring celebrates the eternal bond of lifelong love and commitment. A half-circle of round brilliant diamonds traces this timeless platinum band. Pair it with a mixed metal ring stack for a modern finish.', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `tf_carousels`
--

CREATE TABLE `tf_carousels` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` text NOT NULL,
  `alt` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `tf_carousels`
--

INSERT INTO `tf_carousels` (`id`, `img`, `alt`, `sh`) VALUES
(1, 'tiffany-forever-15263245_1039829_SV_1_M.webp', 'Tiffany & CO', 1),
(2, 'tiffany-forever-15263245_1039830_SV_2_M.webp', 'Tiffany & CO', 1),
(3, 'tiffany-forever-15263318_980582_SV_3.webp', 'Tiffany & CO', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `tf_classic`
--

CREATE TABLE `tf_classic` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` text NOT NULL,
  `alt` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `tf_classic`
--

INSERT INTO `tf_classic` (`id`, `img`, `alt`, `sh`) VALUES
(1, '2024-Icons-HP-Carousel-HW.webp', 'Tiffany & CO', 1),
(2, '2024-Icons-HP-Carousel-Knot.webp', 'Tiffany & CO', 0),
(3, '2024-Icons-HP-Carousel-Lock.webp', 'Tiffany & CO', 0),
(4, '2024-Icons-HP-Carousel-Schlum.webp', 'Tiffany & CO4', 0),
(5, '2024-Icons-HP-Carousel-SDR.webp', 'Tiffany & CO', 0),
(6, '2024-Icons-HP-Carousel-T.webp', 'Tiffany & CO', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `tf_early_access`
--

CREATE TABLE `tf_early_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `ytlink` text NOT NULL,
  `img` text NOT NULL,
  `alt` text NOT NULL,
  `img2` text NOT NULL,
  `alt2` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `tf_early_access`
--

INSERT INTO `tf_early_access` (`id`, `ytlink`, `img`, `alt`, `img2`, `alt2`, `sh`) VALUES
(3, 'https://www.youtube.com/embed/Yzsx3wFRLfA?si=6aaC7zASNRFpvjX-', 'tiffany-lock-70158108_1070906_AV_1_M.webp', 'Tiffany', 'tiffany-lock-71855198_1052770_ED.webp', 'Tiffany & Co.', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `tf_logo`
--

CREATE TABLE `tf_logo` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` text NOT NULL,
  `alt` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `tf_logo`
--

INSERT INTO `tf_logo` (`id`, `img`, `alt`, `sh`) VALUES
(10, 'logo.png', 'Tiffany & Co.', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `tf_rings`
--

CREATE TABLE `tf_rings` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` text NOT NULL,
  `alt` text NOT NULL,
  `title` text NOT NULL,
  `des` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `tf_rings`
--

INSERT INTO `tf_rings` (`id`, `img`, `alt`, `title`, `des`, `sh`) VALUES
(2, 'tiffany-forever-16574635_1045538_ED_M.webp', 'Tiffany & CO', 'Band Ring', 'Each Tiffany Forever ring celebrates the eternal bond of lifelong love and commitment. A half-circle of round brilliant diamonds defines this radiant platinum band. Make a striking statement by wearing this ring alone, or pair it with other Tiffany designs for a custom stack.', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `tf_service`
--

CREATE TABLE `tf_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` text NOT NULL,
  `alt` text NOT NULL,
  `title` text NOT NULL,
  `des` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `tf_service`
--

INSERT INTO `tf_service` (`id`, `img`, `alt`, `title`, `des`, `sh`) VALUES
(1, 'gift.png', 'Tiffany & Co.', 'Tiffany At Your Service', 'There’s no question too small or request too big for our Tiffany client advisors. From choosing an engagement ring or gift to providing in-store or virtual appointments, we’re always at your service. ', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `tf_stories`
--

CREATE TABLE `tf_stories` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` text NOT NULL,
  `alt` text NOT NULL,
  `title` text NOT NULL,
  `des` text NOT NULL,
  `btn_name` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `tf_stories`
--

INSERT INTO `tf_stories` (`id`, `img`, `alt`, `title`, `des`, `btn_name`, `sh`) VALUES
(3, '2024_APR_BB_HP_WhatIsNew_Desktop.webp', 'Tiffany & Co.', 'Our Newest High Jewelry Collection', 'Fantastical. Poetic. Ethereal. Discover Blue Book 2024: Tiffany Céleste.', 'Explore the Collection', 1),
(4, '2024-NCA-HP-Stories.webp', 'Tiffany & Co.', 'Tiffany Atrium & Nina Chanel Abney', 'Introducing the next chapter of Tiffany Atrium’s Artist Collaboration Series with multidis…', 'Learn More', 1),
(5, '2024-TITAN-HP-Stories-1.webp', 'Tiffany & Co.', 'Tiffany Titan by Pharrell Williams', 'Pharrell Williams’ first jewelry collection for the House has arrived.', 'Shop Now', 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `tf_admin`
--
ALTER TABLE `tf_admin`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `tf_banner`
--
ALTER TABLE `tf_banner`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `tf_carousels`
--
ALTER TABLE `tf_carousels`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `tf_classic`
--
ALTER TABLE `tf_classic`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `tf_early_access`
--
ALTER TABLE `tf_early_access`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `tf_logo`
--
ALTER TABLE `tf_logo`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `tf_rings`
--
ALTER TABLE `tf_rings`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `tf_service`
--
ALTER TABLE `tf_service`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `tf_stories`
--
ALTER TABLE `tf_stories`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tf_admin`
--
ALTER TABLE `tf_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tf_banner`
--
ALTER TABLE `tf_banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tf_carousels`
--
ALTER TABLE `tf_carousels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tf_classic`
--
ALTER TABLE `tf_classic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tf_early_access`
--
ALTER TABLE `tf_early_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tf_logo`
--
ALTER TABLE `tf_logo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tf_rings`
--
ALTER TABLE `tf_rings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tf_service`
--
ALTER TABLE `tf_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tf_stories`
--
ALTER TABLE `tf_stories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
