-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-08-16 02:43:09
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
-- 資料庫： `journal`
--

-- --------------------------------------------------------

--
-- 資料表結構 `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, '餐飲'),
(2, '生活'),
(3, '交通');

-- --------------------------------------------------------

--
-- 資料表結構 `currency`
--

CREATE TABLE `currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(16) NOT NULL,
  `abbr` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `currency`
--

INSERT INTO `currency` (`id`, `name`, `abbr`) VALUES
(1, '新台幣', 'TWD'),
(2, '美元', 'USD');

-- --------------------------------------------------------

--
-- 資料表結構 `payers`
--

CREATE TABLE `payers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `payers`
--

INSERT INTO `payers` (`id`, `name`) VALUES
(1, 'm&m'),
(2, ' c&c');

-- --------------------------------------------------------

--
-- 資料表結構 `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(16) NOT NULL,
  `account` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `payments`
--

INSERT INTO `payments` (`id`, `name`, `account`) VALUES
(1, 'cash', ''),
(2, 'Linepay', 'Linebank'),
(3, 'visa', 'Linebank');

-- --------------------------------------------------------

--
-- 資料表結構 `place`
--

CREATE TABLE `place` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `place`
--

INSERT INTO `place` (`id`, `name`) VALUES
(1, '雙北'),
(2, '外縣市'),
(3, '海外');

-- --------------------------------------------------------

--
-- 資料表結構 `records`
--

CREATE TABLE `records` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '流水號',
  `date` date NOT NULL COMMENT '日期',
  `note` text NOT NULL COMMENT '備註',
  `price` int(10) UNSIGNED NOT NULL COMMENT '金額',
  `type_id` text NOT NULL COMMENT '類型',
  `category_id` text NOT NULL COMMENT '分類',
  `payer_id` text NOT NULL COMMENT '付款人',
  `place` text NOT NULL COMMENT '地點',
  `payment_id` text NOT NULL COMMENT '支付方式',
  `currency_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `records`
--

INSERT INTO `records` (`id`, `date`, `note`, `price`, `type_id`, `category_id`, `payer_id`, `place`, `payment_id`, `currency_id`) VALUES
(1, '2024-05-10', '早餐', 100, '2', '1', '1', '', '1', 1),
(2, '2024-05-11', '午餐', 1050, '2', '1', '1', '台北市', '3', 1),
(3, '2024-05-11', '晚餐', 100, '2', '1', '1', '學校', '1', 1),
(5, '2024-05-12', '晚餐', 1050, '2', '1', '1', '台北市', '1', 1),
(6, '2024-05-13', '早餐', 100, '2', '1', '1', '學校', '1', 1),
(13, '2024-05-10', '早餐', 100, '2', '1', '1', '學校', '2', 1),
(15, '2024-05-11', '晚餐', 100, '2', '1', '1', '學校', '1', 1),
(16, '2024-05-12', '飲料', 100, '2', '1', '1', '學校', '2', 1),
(17, '2024-05-12', '晚餐', 1050, '2', '1', '1', '台北市', '3', 1),
(18, '2024-05-13', '早餐', 100, '2', '1', '1', '學校', '1', 1),
(19, '2024-05-15', '水電', 1000, '2', '2', '1', '', '1', 1),
(20, '2024-05-15', '管理費', 900, '2', '2', '1', '', '1', 1),
(21, '2024-05-15', '停車費', 100, '2', '3', '1', '', '3', 1),
(22, '2024-05-16', '捷運月費', 1200, '2', '3', '1', '', '1', 1),
(23, '2024-06-10', '早餐', 100, '2', '1', '1', '學校', '2', 1),
(25, '2024-06-11', '晚餐', 100, '2', '1', '1', '學校', '1', 1),
(27, '2024-06-12', '晚餐', 1050, '2', '1', '1', '台北市', '1', 2),
(28, '2024-06-13', '早餐', 100, '2', '1', '1', '學校', '1', 1),
(29, '2024-06-15', '水電', 1000, '2', '2', '2', '', '1', 1),
(30, '2024-06-15', '管理費', 900, '2', '2', '1', '', '1', 1),
(31, '2024-06-15', '停車費', 100, '2', '3', '1', '', '3', 1),
(32, '2024-06-16', '捷運月費贊助', 1200, '1', '3', '1', '', '1', 1),
(33, '2024-06-16', '捷運月費', 1200, '2', '3', '1', '', '1', 1),
(35, '2024-06-17', '發票兌獎', 10000000, '1', '2', '', '', '0', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `type`
--

CREATE TABLE `type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `type`
--

INSERT INTO `type` (`id`, `name`) VALUES
(1, '收入'),
(2, '支出');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `payers`
--
ALTER TABLE `payers`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `payers`
--
ALTER TABLE `payers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `place`
--
ALTER TABLE `place`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `records`
--
ALTER TABLE `records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=36;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `type`
--
ALTER TABLE `type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
