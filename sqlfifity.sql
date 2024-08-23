-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-08-16 02:43:52
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
-- 資料庫： `sqlfifity`
--

-- --------------------------------------------------------

--
-- 資料表結構 `course`
--

CREATE TABLE `course` (
  `cno` varchar(10) NOT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `tno` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `course`
--

INSERT INTO `course` (`cno`, `cname`, `tno`) VALUES
('c001', 'J2SE', 't002'),
('c002', 'Java Web', 't002'),
('c003', 'SSH', 't001'),
('c004', 'Oracle', 't001'),
('c005', 'SQL SERVER 2005', 't003'),
('c006', 'C#', 't003'),
('c007', 'JavaScript', 't002'),
('c008', 'DIV+CSS', 't001'),
('c009', 'PHP', 't003'),
('c010', 'EJB3.0', 't002');

-- --------------------------------------------------------

--
-- 資料表結構 `sc`
--

CREATE TABLE `sc` (
  `sno` varchar(10) NOT NULL,
  `cno` varchar(10) NOT NULL,
  `score` float(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `sc`
--

INSERT INTO `sc` (`sno`, `cno`, `score`) VALUES
('s001', 'c001', 78.90),
('s001', 'c002', 82.90),
('s001', 'c003', 59.00),
('s001', 'c007', 78.90),
('s001', 'c010', 78.90),
('s002', 'c001', 80.90),
('s002', 'c002', 72.90),
('s002', 'c004', 52.90),
('s002', 'c005', 92.90),
('s003', 'c001', 81.90),
('s003', 'c002', 82.90),
('s003', 'c004', 20.90),
('s004', 'c001', 50.90),
('s004', 'c004', 59.80),
('s005', 'c001', 59.90),
('s005', 'c004', 50.80),
('s006', 'c003', 99.80);

-- --------------------------------------------------------

--
-- 資料表結構 `student`
--

CREATE TABLE `student` (
  `sno` varchar(10) NOT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `sage` int(2) DEFAULT NULL,
  `ssex` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `student`
--

INSERT INTO `student` (`sno`, `sname`, `sage`, `ssex`) VALUES
('s001', '張三', 23, '男'),
('s002', '李四', 23, '男'),
('s003', '吳鵬', 25, '男'),
('s004', '琴沁', 20, '女'),
('s005', '王麗', 20, '女'),
('s006', '李波', 21, '男'),
('s007', '劉玉', 21, '男'),
('s008', '蕭蓉', 21, '女'),
('s009', '陳蕭曉', 23, '女'),
('s010', '陳美', 22, '女'),
('s011', '王麗', 24, '女'),
('s012', '蕭蓉', 20, '女');

-- --------------------------------------------------------

--
-- 資料表結構 `teacher`
--

CREATE TABLE `teacher` (
  `tno` varchar(10) NOT NULL,
  `tname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `teacher`
--

INSERT INTO `teacher` (`tno`, `tname`) VALUES
('t001', '劉陽'),
('t002', '諶燕'),
('t003', '胡明星');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`cno`,`tno`);

--
-- 資料表索引 `sc`
--
ALTER TABLE `sc`
  ADD PRIMARY KEY (`sno`,`cno`);

--
-- 資料表索引 `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sno`);

--
-- 資料表索引 `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
