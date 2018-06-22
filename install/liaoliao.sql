-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 年 09 月 04 日 07:10
-- 服务器版本: 5.6.12-log
-- PHP 版本: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- --------------------------------------------------------

--
-- 表的结构 `liaoliao_admin`
--

CREATE TABLE IF NOT EXISTS `liaoliao_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `liaoliao_master_pmb`
--

CREATE TABLE IF NOT EXISTS `liaoliao_master_pmb` (
  `num` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `createdDate` int(11) NOT NULL,
  `createdByUserNum` int(11) unsigned NOT NULL COMMENT '接收人',
  `updatedDate` int(11) NOT NULL,
  `updatedByUserNum` int(11) unsigned NOT NULL COMMENT '发送人',
  `message_read` tinyint(1) unsigned NOT NULL,
  `r_num` int(11) DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t_num` int(11) DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `liaoliao_posts`
--

CREATE TABLE IF NOT EXISTS `liaoliao_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `views` int(11) NOT NULL,
  `answers` int(11) NOT NULL,
  `tagid` int(11) NOT NULL,
  `newtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `liaoliao_replies`
--

CREATE TABLE IF NOT EXISTS `liaoliao_replies` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `ruserid` int(11) NOT NULL,
  `rcontent` text COLLATE utf8_unicode_ci NOT NULL,
  `pid` int(11) NOT NULL,
  `rtime` datetime NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `liaoliao_setting`
--

CREATE TABLE IF NOT EXISTS `liaoliao_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteurl` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sitetitle` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sitekeywords` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sitedescription` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `smtphost` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `smtpuser` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `smtppsw` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `smtpemail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `smtpsubject` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `smtpcontent` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `liaoliao_setting`
--

INSERT INTO `liaoliao_setting` (`id`, `siteurl`, `sitetitle`, `sitekeywords`, `sitedescription`, `smtphost`, `smtpuser`, `smtppsw`, `smtpemail`, `smtpsubject`, `smtpcontent`) VALUES
(1, '', '欢迎使用了了社区', '论坛,社区', '了了社区，原创PHP论坛，轻论坛', '', '', '', '', '了了社区用户激活邮件', '欢迎您的注册，请体验此社区的魅力');

-- --------------------------------------------------------

--
-- 表的结构 `liaoliao_slave_pmb`
--

CREATE TABLE IF NOT EXISTS `liaoliao_slave_pmb` (
  `num` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `createdDate` int(11) NOT NULL,
  `createdByUserNum` int(11) unsigned NOT NULL COMMENT '发送人',
  `updatedDate` int(11) NOT NULL,
  `updatedByUserNum` int(11) unsigned NOT NULL,
  `message_read` tinyint(1) unsigned NOT NULL,
  `r_num` int(11) DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t_num` int(11) DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `liaoliao_tags`
--

CREATE TABLE IF NOT EXISTS `liaoliao_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `liaoliao_user`
--

CREATE TABLE IF NOT EXISTS `liaoliao_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `msgmark` tinyint(1) NOT NULL COMMENT '消息标记',
  `status` tinyint(1) NOT NULL COMMENT '-1,系统用户，0未激活，1正常状态，2禁言',
  `code` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `whoami` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
