-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-06-23 05:08:37
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bamaphone`
--

-- --------------------------------------------------------

--
-- 表的结构 `bmphone_index`
--

CREATE TABLE `bmphone_index` (
  `picid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `titles` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `feileiname` varchar(25) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bmphone_index`
--

INSERT INTO `bmphone_index` (`picid`, `lid`, `titles`, `price`, `feileiname`, `pic`) VALUES
(1, 1, '八马茶业 安溪铁观音茶叶 浓香型乌龙茶小浓香1号礼盒装250克', '138.00', 'bkcl', '../../../assets/image/img/2/right_pro/dhp/main01.jpg'),
(2, 1, '八马茶业 安溪铁观音茶叶 浓香型乌龙茶小浓香1号礼盒装250克', '138.00', 'bkcl', '../../../assets/image/img/2/right_pro/lxyc/main02.jpg'),
(3, 1, '八马茶业 安溪铁观音茶叶 浓香型乌龙茶小浓香1号礼盒装250克', '138.00', 'bkcl', '../../../assets/image/img/2/right_pro/ycjd/main03.jpg'),
(4, 1, '八马茶业 安溪铁观音茶叶 浓香型乌龙茶小浓香1号礼盒装250克', '138.00', 'bkcl', '../../../assets/image/img/2/right_pro/dhp/main04.jpg'),
(5, 2, '八马茶业 原厂大红袍乌龙茶礼盒装盒装250克', '168.00', 'szz', '../../../assets/image/img/1/right_pro/mxcl/main01.jpg'),
(6, 2, '八马茶业 原厂大红袍乌龙茶礼盒装盒装250克', '168.00', 'szz', '../../../assets/image/img/1/right_pro/qxcl/main02.jpg'),
(7, 2, '八马茶业 原厂大红袍乌龙茶礼盒装盒装250克', '168.00', 'szz', '../../../assets/image/img/1/right_pro/sxlq/main03.jpg'),
(8, 2, '八马茶业 原厂大红袍乌龙茶礼盒装盒装250克', '168.00', 'szz', '../../../assets/image/img/1/right_pro/sxlq/main04.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `bm_cart`
--

CREATE TABLE `bm_cart` (
  `cart_productid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `titles` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `lcount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bm_cart`
--

INSERT INTO `bm_cart` (`cart_productid`, `lid`, `uid`, `titles`, `price`, `pic`, `lcount`) VALUES
(1, 2, 1, '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', '420.00', '../img/1/right_pro/qxcl/main01.jpg', 1),
(2, 5, 1, '买1送1】八马茶业 私享浓情 安溪铁观音 浓香型 乌龙茶 茶叶礼盒装252g', '120.00', '../img/1/right_pro/qxcl/main01.jpg', 1);

-- --------------------------------------------------------

--
-- 表的结构 `bm_details_pics`
--

CREATE TABLE `bm_details_pics` (
  `dtl_psid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `psrc` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bm_details_pics`
--

INSERT INTO `bm_details_pics` (`dtl_psid`, `lid`, `psrc`) VALUES
(1, 1, 'assets/image/img/1/right_pro/xlx/01.jpg'),
(2, 1, 'assets/image/img/1/right_pro/xlx/02.jpg'),
(3, 1, 'assets/image/img/1/right_pro/xlx/03.jpg'),
(4, 1, 'assets/image/img/1/right_pro/xlx/04.jpg'),
(5, 1, 'assets/image/img/1/right_pro/xlx/05.jpg'),
(6, 1, 'assets/image/img/1/right_pro/xlx/06.jpg'),
(7, 1, 'assets/image/img/1/right_pro/xlx/07.jpg'),
(8, 1, 'assets/image/img/1/right_pro/xlx/08.jpg'),
(9, 1, 'assets/image/img/1/right_pro/xlx/09.jpg'),
(10, 2, 'assets/image/img/1/right_pro/xlx/10.jpg'),
(11, 2, 'assets/image/img/1/right_pro/xlx/11.jpg'),
(12, 2, 'assets/image/img/1/right_pro/xlx/12.jpg'),
(13, 2, 'assets/image/img/1/right_pro/xlx/13.jpg'),
(14, 2, 'assets/image/img/1/right_pro/xlx/14.jpg'),
(15, 2, 'assets/image/img/1/right_pro/xlx/15.jpg'),
(16, 5, 'assets/image/img/1/right_pro/xlx/16.jpg'),
(17, 5, 'assets/image/img/1/right_pro/xlx/17.jpg'),
(18, 5, 'assets/image/img/1/right_pro/xlx/18.jpg'),
(19, 5, 'assets/image/img/1/right_pro/xlx/19.jpg'),
(20, 5, 'assets/image/img/1/right_pro/xlx/20.jpg'),
(21, 2, 'assets/image/img/1/right_pro/qxcl/01.jpg'),
(22, 2, 'assets/image/img/1/right_pro/qxcl/02.jpg'),
(23, 2, 'assets/image/img/1/right_pro/qxcl/03.jpg'),
(24, 2, 'assets/image/img/1/right_pro/qxcl/04.jpg'),
(25, 2, 'assets/image/img/1/right_pro/qxcl/05.jpg'),
(26, 2, 'assets/image/img/1/right_pro/qxcl/06.jpg'),
(27, 2, 'assets/image/img/1/right_pro/qxcl/07.jpg'),
(28, 2, 'assets/image/img/1/right_pro/qxcl/08.jpg'),
(29, 2, 'assets/image/img/1/right_pro/qxcl/09.jpg'),
(30, 3, 'assets/image/img/1/right_pro/mxcl/01.jpg'),
(31, 3, 'assets/image/img/1/right_pro/mxcl/02.jpg'),
(32, 3, 'assets/image/img/1/right_pro/mxcl/03.jpg'),
(33, 3, 'assets/image/img/1/right_pro/mxcl/04.jpg'),
(34, 3, 'assets/image/img/1/right_pro/mxcl/05.jpg'),
(35, 6, 'assets/image/img/1/right_pro/mxcl/06.jpg'),
(36, 6, 'assets/image/img/1/right_pro/mxcl/07.jpg'),
(37, 6, 'assets/image/img/1/right_pro/mxcl/08.jpg'),
(38, 6, 'assets/image/img/1/right_pro/mxcl/09.jpg'),
(39, 6, 'assets/image/img/1/right_pro/mxcl/10.jpg'),
(40, 6, 'assets/image/img/1/right_pro/mxcl/11.jpg'),
(41, 6, 'assets/image/img/1/right_pro/mxcl/12.jpg'),
(42, 6, 'assets/image/img/1/right_pro/mxcl/13.jpg'),
(43, 7, 'assets/image/img/1/right_pro/sxyy/01.jpg'),
(44, 7, 'assets/image/img/1/right_pro/sxyy/02.jpg'),
(45, 7, 'assets/image/img/1/right_pro/sxyy/03.jpg'),
(46, 7, 'assets/image/img/1/right_pro/sxyy/04.jpg'),
(47, 7, 'assets/image/img/1/right_pro/sxyy/05.jpg'),
(48, 7, 'assets/image/img/1/right_pro/sxyy/06.jpg'),
(49, 8, 'assets/image/img/1/right_pro/sxyy/07.jpg'),
(50, 8, 'assets/image/img/1/right_pro/sxyy/08.jpg'),
(51, 8, 'assets/image/img/1/right_pro/sxyy/09.jpg'),
(52, 9, 'assets/image/img/1/right_pro/sxyy/10.jpg'),
(53, 10, 'assets/image/img/1/right_pro/sxyy/11.jpg'),
(54, 10, 'assets/image/img/1/right_pro/sxyy/12.jpg'),
(55, 10, 'assets/image/img/1/right_pro/sxyy/13.jpg'),
(56, 10, 'assets/image/img/1/right_pro/sxyy/14.jpg'),
(57, 11, 'assets/image/img/1/right_pro/sxyy/15.jpg'),
(58, 11, 'assets/image/img/1/right_pro/sxyy/16.jpg'),
(59, 12, 'assets/image/img/1/right_pro/sxyy/17.jpg'),
(60, 12, 'assets/image/img/1/right_pro/sxyy/18.jpg'),
(61, 12, 'assets/image/img/1/right_pro/sxyy/19.jpg'),
(62, 12, 'assets/image/img/1/right_pro/sxyy/20.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `bm_main_pics`
--

CREATE TABLE `bm_main_pics` (
  `pid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `sm` varchar(128) DEFAULT NULL,
  `md` varchar(128) DEFAULT NULL,
  `lg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bm_main_pics`
--

INSERT INTO `bm_main_pics` (`pid`, `lid`, `sm`, `md`, `lg`) VALUES
(1, 1, 'assets/image/img/1/right_pro/xlx/main00.jpg', 'assets/image/img/1/right_pro/xlx/main00.jpg', 'assets/image/img/1/right_pro/xlx/main00.jpg'),
(2, 1, 'assets/image/img/1/right_pro/xlx/main01.jpg', 'assets/image/img/1/right_pro/xlx/main01.jpg', 'assets/image/img/1/right_pro/xlx/main01.jpg'),
(3, 1, 'assets/image/img/1/right_pro/xlx/main02.jpg', 'assets/image/img/1/right_pro/xlx/main02.jpg', 'assets/image/img/1/right_pro/xlx/main02.jpg'),
(4, 1, 'assets/image/img/1/right_pro/xlx/main03.jpg', 'assets/image/img/1/right_pro/xlx/main03.jpg', 'assets/image/img/1/right_pro/xlx/main03.jpg'),
(5, 2, 'assets/image/img/1/right_pro/qxcl/main01.jpg', 'assets/image/img/1/right_pro/qxcl/main01.jpg', 'assets/image/img/1/right_pro/qxcl/main01.jpg'),
(6, 2, 'assets/image/img/1/right_pro/qxcl/main02.jpg', 'assets/image/img/1/right_pro/qxcl/main02.jpg', 'assets/image/img/1/right_pro/qxcl/main02.jpg'),
(7, 2, 'assets/image/img/1/right_pro/qxcl/main03.jpg', 'assets/image/img/1/right_pro/qxcl/main03.jpg', 'assets/image/img/1/right_pro/qxcl/main03.jpg'),
(8, 2, 'assets/image/img/1/right_pro/qxcl/main04.jpg', 'assets/image/img/1/right_pro/qxcl/main04.jpg', 'assets/image/img/1/right_pro/qxcl/main04.jpg'),
(9, 2, 'assets/image/img/1/right_pro/qxcl/main05.jpg', 'assets/image/img/1/right_pro/qxcl/main05.jpg', 'assets/image/img/1/right_pro/qxcl/main05.jpg'),
(10, 3, 'assets/image/img/1/right_pro/mxcl/main01.jpg', 'assets/image/img/1/right_pro/mxcl/main01.jpg', 'assets/image/img/1/right_pro/mxcl/main01.jpg'),
(11, 3, 'assets/image/img/1/right_pro/mxcl/main02.jpg', 'assets/image/img/1/right_pro/mxcl/main02.jpg', 'assets/image/img/1/right_pro/mxcl/main02.jpg'),
(12, 3, 'assets/image/img/1/right_pro/mxcl/main03.jpg', 'assets/image/img/1/right_pro/mxcl/main03.jpg', 'assets/image/img/1/right_pro/mxcl/main03.jpg'),
(13, 3, 'assets/image/img/1/right_pro/mxcl/main04.jpg', 'assets/image/img/1/right_pro/mxcl/main04.jpg', 'assets/image/img/1/right_pro/mxcl/main04.jpg'),
(14, 4, 'assets/image/img/1/right_pro/sxyy/main01.jpg', 'assets/image/img/1/right_pro/sxyy/main01.jpg', 'assets/image/img/1/right_pro/sxyy/main01.jpg'),
(15, 4, 'assets/image/img/1/right_pro/sxyy/main02.jpg', 'assets/image/img/1/right_pro/sxyy/main02.jpg', 'assets/image/img/1/right_pro/sxyy/main02.jpg'),
(16, 4, 'assets/image/img/1/right_pro/sxyy/main03.jpg', 'assets/image/img/1/right_pro/sxyy/main03.jpg', 'assets/image/img/1/right_pro/sxyy/main03.jpg'),
(17, 4, 'assets/image/img/1/right_pro/sxyy/main04.jpg', 'assets/image/img/1/right_pro/sxyy/main04.jpg', 'assets/image/img/1/right_pro/sxyy/main04.jpg'),
(18, 4, 'assets/image/img/1/right_pro/sxyy/main05.jpg', 'assets/image/img/1/right_pro/sxyy/main05.jpg', 'assets/image/img/1/right_pro/sxyy/main05.jpg'),
(19, 5, 'assets/image/img/1/right_pro/sxlq/main01.jpg', 'assets/image/img/1/right_pro/sxlq/main01.jpg', 'assets/image/img/1/right_pro/sxlq/main01.jpg'),
(20, 5, 'assets/image/img/1/right_pro/sxlq/main02.jpg', 'assets/image/img/1/right_pro/sxlq/main02.jpg', 'assets/image/img/1/right_pro/sxlq/main02.jpg'),
(21, 5, 'assets/image/img/1/right_pro/sxlq/main03.jpg', 'assets/image/img/1/right_pro/sxlq/main03.jpg', 'assets/image/img/1/right_pro/sxlq/main03.jpg'),
(22, 5, 'assets/image/img/1/right_pro/sxlq/main04.jpg', 'assets/image/img/1/right_pro/sxlq/main04.jpg', 'assets/image/img/1/right_pro/sxlq/main04.jpg'),
(23, 5, 'assets/image/img/1/right_pro/sxlq/main05.jpg', 'assets/image/img/1/right_pro/sxlq/main05.jpg', 'assets/image/img/1/right_pro/sxlq/main05.jpg'),
(24, 6, 'assets/image/img/1/right_pro/tjlr/main01.jpg', 'assets/image/img/1/right_pro/tjlr/main01.jpg', 'assets/image/img/1/right_pro/tjlr/main01.jpg'),
(25, 6, 'assets/image/img/1/right_pro/tjlr/main02.jpg', 'assets/image/img/1/right_pro/tjlr/main02.jpg', 'assets/image/img/1/right_pro/tjlr/main02.jpg'),
(26, 6, 'assets/image/img/1/right_pro/tjlr/main03.jpg', 'assets/image/img/1/right_pro/tjlr/main03.jpg', 'assets/image/img/1/right_pro/tjlr/main03.jpg'),
(27, 6, 'assets/image/img/1/right_pro/tjlr/main04.jpg', 'assets/image/img/1/right_pro/tjlr/main04.jpg', 'assets/image/img/1/right_pro/tjlr/main04.jpg'),
(28, 6, 'assets/image/img/1/right_pro/tjlr/main05.jpg', 'assets/image/img/1/right_pro/tjlr/main05.jpg', 'assets/image/img/1/right_pro/tjlr/main05.jpg'),
(29, 7, 'assets/image/img/2/right_pro/dhp/main01.jpg', 'assets/image/img/2/right_pro/dhp/main01.jpg', 'assets/image/img/2/right_pro/dhp/main01.jpg'),
(30, 7, 'assets/image/img/2/right_pro/dhp/main02.jpg', 'assets/image/img/2/right_pro/dhp/main02.jpg', 'assets/image/img/2/right_pro/dhp/main02.jpg'),
(31, 7, 'assets/image/img/2/right_pro/dhp/main03.jpg', 'assets/image/img/2/right_pro/dhp/main03.jpg', 'assets/image/img/2/right_pro/dhp/main03.jpg'),
(32, 7, 'assets/image/img/2/right_pro/dhp/main04.jpg', 'assets/image/img/2/right_pro/dhp/main04.jpg', 'assets/image/img/2/right_pro/dhp/main04.jpg'),
(33, 7, 'assets/image/img/2/right_pro/dhp/main05.jpg', 'assets/image/img/2/right_pro/dhp/main05.jpg', 'assets/image/img/2/right_pro/dhp/main05.jpg'),
(34, 8, 'assets/image/img/2/right_pro/kldhp/main01.jpg', 'assets/image/img/2/right_pro/kldhp/main01.jpg', 'assets/image/img/2/right_pro/kldhp/main01.jpg'),
(35, 8, 'assets/image/img/2/right_pro/kldhp/main02.jpg', 'assets/image/img/2/right_pro/kldhp/main02.jpg', 'assets/image/img/2/right_pro/kldhp/main02.jpg'),
(36, 8, 'assets/image/img/2/right_pro/kldhp/main03.jpg', 'assets/image/img/2/right_pro/kldhp/main03.jpg', 'assets/image/img/2/right_pro/kldhp/main03.jpg'),
(37, 8, 'assets/image/img/2/right_pro/kldhp/main04.jpg', 'assets/image/img/2/right_pro/kldhp/main04.jpg', 'assets/image/img/2/right_pro/kldhp/main04.jpg'),
(38, 8, 'assets/image/img/2/right_pro/kldhp/main05.jpg', 'assets/image/img/2/right_pro/kldhp/main05.jpg', 'assets/image/img/2/right_pro/kldhp/main05.jpg'),
(39, 9, 'assets/image/img/2/right_pro/lxyc/main01.jpg', 'assets/image/img/2/right_pro/lxyc/main01.jpg', 'assets/image/img/2/right_pro/lxyc/main01.jpg'),
(40, 9, 'assets/image/img/2/right_pro/lxyc/main02.jpg', 'assets/image/img/2/right_pro/lxyc/main02.jpg', 'assets/image/img/2/right_pro/lxyc/main02.jpg'),
(41, 9, 'assets/image/img/2/right_pro/lxyc/main03.jpg', 'assets/image/img/2/right_pro/lxyc/main03.jpg', 'assets/image/img/2/right_pro/lxyc/main03.jpg'),
(42, 9, 'assets/image/img/2/right_pro/lxyc/main04.jpg', 'assets/image/img/2/right_pro/lxyc/main04.jpg', 'assets/image/img/2/right_pro/lxyc/main04.jpg'),
(43, 9, 'assets/image/img/2/right_pro/lxyc/main05.jpg', 'assets/image/img/2/right_pro/lxyc/main05.jpg', 'assets/image/img/2/right_pro/lxyc/main05.jpg'),
(44, 10, 'assets/image/img/2/right_pro/ycjd/main01.jpg', 'assets/image/img/2/right_pro/ycjd/main01.jpg', 'assets/image/img/2/right_pro/ycjd/main01.jpg'),
(45, 10, 'assets/image/img/2/right_pro/ycjd/main02.jpg', 'assets/image/img/2/right_pro/ycjd/main02.jpg', 'assets/image/img/2/right_pro/ycjd/main02.jpg'),
(46, 10, 'assets/image/img/2/right_pro/ycjd/main03.jpg', 'assets/image/img/2/right_pro/ycjd/main03.jpg', 'assets/image/img/2/right_pro/ycjd/main03.jpg'),
(47, 10, 'assets/image/img/2/right_pro/ycjd/main04.jpg', 'assets/image/img/2/right_pro/ycjd/main04.jpg', 'assets/image/img/2/right_pro/ycjd/main04.jpg'),
(48, 10, 'assets/image/img/2/right_pro/ycjd/main05.jpg', 'assets/image/img/2/right_pro/ycjd/main05.jpg', 'assets/image/img/2/right_pro/ycjd/main05.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `bm_product_details`
--

CREATE TABLE `bm_product_details` (
  `lid` int(11) NOT NULL,
  `lname` varchar(32) DEFAULT NULL,
  `titles` varchar(128) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `cname` varchar(11) DEFAULT NULL,
  `egtitle` varchar(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `smpic` varchar(128) DEFAULT NULL,
  `lcount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bm_product_details`
--

INSERT INTO `bm_product_details` (`lid`, `lname`, `titles`, `cid`, `cname`, `egtitle`, `price`, `smpic`, `lcount`) VALUES
(1, 'xlx', '【买2送苦荞茶H0348】八马茶业 安溪铁观音茶叶 浓香型乌龙茶小浓香1号礼盒装250克', 1, '铁观音', 'wlc', '600.00', 'assets/image/img/1/right_pro/xlx/main00.jpg', 222),
(2, 'qxcl', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', 1, '铁观音', 'wlc', '420.00', 'assets/image/img/1/right_pro/qxcl/main01.jpg', 222),
(3, 'mxcl', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 1, '铁观音', 'wlc', '80.00', 'assets/image/img/1/right_pro/mxcl/main01.jpg', 222),
(4, 'sxyy', '【买1送1】八马茶叶 2019春茶私享雅韵安溪铁观音茶叶清香型乌龙茶兰花香新茶252g/盒', 1, '铁观音', 'wlc', '99.00', 'assets/image/img/1/right_pro/sxyy/main01.jpg', 222),
(5, 'sxlq', '【买1送1】八马茶业 私享浓情 安溪铁观音 浓香型 乌龙茶 茶叶礼盒装252g', 1, '铁观音', 'wlc', '120.00', 'assets/image/img/1/right_pro/sxlq/main01.jpg', 222),
(6, 'tjlr', '八马茶业 铁观音茶叶 清香型特级安溪乌龙茶新茶茶叶礼盒250克', 1, '铁观音', 'wlc', '300.00', 'assets/image/img/1/right_pro/tjlr/main01.jpg', 222),
(7, 'dhp', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', 2, '大红袍', 'hc', '200.00', 'assets/image/img/1/right_pro/tjlr/main01.jpg', 222),
(8, 'kldhp', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 2, '大红袍', 'hc', '100.00', 'assets/image/img/1/right_pro/tjlr/main04.jpg', 222),
(9, 'lxyc', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', 2, '大红袍', 'hc', '200.00', 'assets/image/img/1/right_pro/tjlr/main01.jpg', 222),
(10, 'ycjd', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 2, '大红袍', 'hc', '100.00', 'assets/image/img/1/right_pro/tjlr/main02.jpg', 222),
(11, 'yghx', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', 2, '大红袍', 'hc', '200.00', 'assets/image/img/1/right_pro/tjlr/main03.jpg', 222),
(12, 'zwyc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 2, '大红袍', 'hc', '100.00', 'assets/image/img/1/right_pro/tjlr/main04.jpg', 222),
(13, 'hczp', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', 3, '红茶', 'lc', '200.00', 'assets/image/img/1/right_pro/tjlr/main02.jpg', 222),
(14, 'jjmgz', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 3, '红茶', 'lc', '100.00', 'assets/image/img/1/right_pro/tjlr/main03.jpg', 222),
(15, 'jjmlh', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', 2, '红茶', 'lc', '200.00', 'assets/image/img/1/right_pro/tjlr/main04.jpg', 222),
(16, 'qmhc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 3, '红茶', 'lc', '100.00', 'assets/image/img/1/right_pro/tjlr/main02.jpg', 222),
(17, 'zsxzgz', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', 2, '红茶', 'lc', '200.00', 'assets/image/img/1/right_pro/tjlr/main03.jpg', 222),
(18, 'zsxzlh', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 3, '红茶', 'lc', '100.00', 'assets/image/img/1/right_pro/tjlr/main04.jpg', 222),
(19, 'bls', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 4, '普洱', 'heic', '400.00', 'assets/image/img/1/right_pro/tjlr/main03.jpg', 222),
(20, 'pelsc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 4, '普洱', 'heic', '400.00', 'assets/image/img/1/right_pro/tjlr/main04.jpg', 222),
(21, 'pesc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 4, '普洱', 'heic', '400.00', 'assets/image/img/1/right_pro/tjlr/main01.jpg', 222),
(22, 'spe', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 4, '普洱', 'heic', '400.00', 'assets/image/img/1/right_pro/tjlr/main04.jpg', 222),
(23, 'xxg', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 4, '普洱', 'heic', '400.00', 'assets/image/img/1/right_pro/tjlr/main03.jpg', 222),
(24, 'zxpe', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 4, '普洱', 'heic', '400.00', 'assets/image/img/1/right_pro/tjlr/main04.jpg', 222),
(25, 'ajbc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 5, '绿茶', 'bc', '300.00', 'assets/image/img/1/right_pro/tjlr/main03.jpg', 222),
(26, 'lc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 5, '绿茶', 'bc', '300.00', 'assets/image/img/1/right_pro/tjlr/main04.jpg', 222),
(27, 'ljlc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 5, '绿茶', 'bc', '300.00', 'assets/image/img/1/right_pro/tjlr/main01.jpg', 222),
(28, 'xhlj', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 5, '绿茶', 'bc', '300.00', 'assets/image/img/1/right_pro/tjlr/main02.jpg', 222),
(29, 'xhljh', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 5, '绿茶', 'bc', '300.00', 'assets/image/img/1/right_pro/tjlr/main03.jpg', 222),
(30, 'zjlj', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 5, '绿茶', 'bc', '300.00', 'assets/image/img/1/right_pro/tjlr/main04.jpg', 222),
(31, 'blz', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 6, '花茶', 'huac', '200.00', 'assets/image/img/1/right_pro/tjlr/main03.jpg', 222),
(32, 'jhc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 6, '花茶', 'huac', '200.00', 'assets/image/img/1/right_pro/tjlr/main02.jpg', 222),
(33, 'mghc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 6, '花茶', 'huac', '200.00', 'assets/image/img/1/right_pro/tjlr/main01.jpg', 222),
(34, 'mldp', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 6, '花茶', 'huac', '200.00', 'assets/image/img/1/right_pro/tjlr/main02.jpg', 222),
(35, 'mlhc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 6, '花茶', 'huac', '200.00', 'assets/image/img/1/right_pro/tjlr/main03.jpg', 222),
(36, 'tjdp', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', 6, '花茶', 'huac', '200.00', 'assets/image/img/1/right_pro/tjlr/main04.jpg', 222);

-- --------------------------------------------------------

--
-- 表的结构 `bm_user`
--

CREATE TABLE `bm_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upawd` varchar(128) DEFAULT NULL,
  `phone` int(2500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bm_user`
--

INSERT INTO `bm_user` (`uid`, `uname`, `upawd`, `phone`) VALUES
(1, 'dingding', '123456', 13968853090),
(2, 'sdsds', '123456', 2147483647),
(3, 'fsdfsf', '123456', 2147483647),
(4, 'tom', '123456', 2147483647),
(5, 'wang', '123456', 2147483647),
(6, 'dodo', '123456', 2147483647);

-- --------------------------------------------------------

--
-- 表的结构 `fenleilist`
--

CREATE TABLE `fenleilist` (
  `list_productid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `egtitle` varchar(128) DEFAULT NULL,
  `titles` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fenleilist`
--

INSERT INTO `fenleilist` (`list_productid`, `lid`, `egtitle`, `titles`, `pic`) VALUES
(1, 1, 'wlc', '铁观音', '../../../assets/image/img/1/right_pro/mxcl/main01.jpg'),
(2, 2, 'wlc', '大红袍', '../../../assets/image/img/1/right_pro/qxcl/main01.jpg'),
(3, 3, 'wlc', '肉桂', '../../../assets/image/img/1/right_pro/sxlq/main01.jpg'),
(4, 4, 'wlc', '水仙', '../../../assets/image/img/1/right_pro/sxyy/main01.jpg'),
(5, 5, 'wlc', '凤凰单枞', '../../../assets/image/img/1/right_pro/tjlr/main01.jpg'),
(6, 6, 'wlc', '无奈', '../../../assets/image/img/1/right_pro/xlx/main01.jpg'),
(7, 7, 'hc', '正山小种', '../../../assets/image/img/2/right_pro/ycjd/main01.jpg'),
(8, 8, 'hc', '金骏眉', '../../../assets/image/img/2/right_pro/ycjd/main02.jpg'),
(9, 9, 'hc', '滇红', '../../../assets/image/img/2/right_pro/ycjd/main03.jpg'),
(10, 10, 'hc', '祁门红茶', '../../../assets/image/img/2/right_pro/ycjd/main04.jpg'),
(11, 5, 'hc', '凤凰单枞', '../../../assets/image/img/2/right_pro/ycjd/main05.jpg'),
(12, 7, 'lc', '正山小种', '../../../assets/image/img/2/right_pro/dhp/main01.jpg'),
(13, 8, 'lc', '金骏眉', '../../../assets/image/img/2/right_pro/lxyc/main03.jpg'),
(14, 9, 'lc', '滇红', '../../../assets/image/img/2/right_pro/ycjd/main03.jpg'),
(15, 10, 'lc', '祁门红茶', '../../../assets/image/img/2/right_pro/zwyc/main02.jpg'),
(16, 5, 'lc', '凤凰单枞', '../../../assets/image/img/2/right_pro/dhp/main01.jpg'),
(17, 9, 'bc', '滇红', '../../../assets/image/img/2/right_pro/zwyc/main01.jpg'),
(18, 10, 'bc', '祁门红茶', '../../../assets/image/img/2/right_pro/zwyc/main02.jpg'),
(19, 5, 'bc', '凤凰单枞', '../../../assets/image/img/2/right_pro/zwyc/main03.jpg'),
(20, 5, 'huac', '凤凰单枞', '../../../assets/image/img/2/right_pro/zwyc/main02.jpg'),
(21, 5, 'csp', '凤凰单枞', '../../../assets/image/img/2/right_pro/zwyc/main03.jpg'),
(22, 5, 'cj', '凤凰单枞', '../../../assets/image/img/2/right_pro/dhp/main01.jpg'),
(23, 5, 'heij', '凤凰单枞', '../../../assets/image/img/2/right_pro/dhp/main01.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bmphone_index`
--
ALTER TABLE `bmphone_index`
  ADD PRIMARY KEY (`picid`);

--
-- Indexes for table `bm_cart`
--
ALTER TABLE `bm_cart`
  ADD PRIMARY KEY (`cart_productid`);

--
-- Indexes for table `bm_details_pics`
--
ALTER TABLE `bm_details_pics`
  ADD PRIMARY KEY (`dtl_psid`);

--
-- Indexes for table `bm_main_pics`
--
ALTER TABLE `bm_main_pics`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `bm_product_details`
--
ALTER TABLE `bm_product_details`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `bm_user`
--
ALTER TABLE `bm_user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `fenleilist`
--
ALTER TABLE `fenleilist`
  ADD PRIMARY KEY (`list_productid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `bmphone_index`
--
ALTER TABLE `bmphone_index`
  MODIFY `picid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `bm_cart`
--
ALTER TABLE `bm_cart`
  MODIFY `cart_productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `bm_details_pics`
--
ALTER TABLE `bm_details_pics`
  MODIFY `dtl_psid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- 使用表AUTO_INCREMENT `bm_main_pics`
--
ALTER TABLE `bm_main_pics`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- 使用表AUTO_INCREMENT `bm_product_details`
--
ALTER TABLE `bm_product_details`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 使用表AUTO_INCREMENT `bm_user`
--
ALTER TABLE `bm_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `fenleilist`
--
ALTER TABLE `fenleilist`
  MODIFY `list_productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
