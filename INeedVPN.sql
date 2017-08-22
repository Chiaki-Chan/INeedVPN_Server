/*
Navicat MySQL Data Transfer

Source Server         : INeedVPN
Source Server Version : 50552
Source Host           : database.ineedvpn.net:3306
Source Database       : INeedVPN

Target Server Type    : MYSQL
Target Server Version : 50552
File Encoding         : 65001

Date: 2017-08-22 11:15:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(55) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for application
-- ----------------------------
DROP TABLE IF EXISTS `application`;
CREATE TABLE `application` (
  `Id` int(255) NOT NULL AUTO_INCREMENT,
  `Tel` varchar(11) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Make` int(11) NOT NULL DEFAULT '0',
  `PreviousTel` varchar(11) DEFAULT NULL,
  `NewPass` varchar(111) DEFAULT NULL,
  `Sended` int(1) NOT NULL DEFAULT '0',
  `CreateTime` varchar(16) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for invite_code
-- ----------------------------
DROP TABLE IF EXISTS `invite_code`;
CREATE TABLE `invite_code` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `code` varchar(128) NOT NULL,
  `user` int(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for ss_node
-- ----------------------------
DROP TABLE IF EXISTS `ss_node`;
CREATE TABLE `ss_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_name` varchar(128) NOT NULL,
  `node_type` int(3) NOT NULL,
  `node_server` varchar(128) NOT NULL,
  `node_method` varchar(64) NOT NULL,
  `node_info` varchar(128) NOT NULL,
  `node_status` varchar(128) NOT NULL,
  `node_order` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ss_reset_pwd
-- ----------------------------
DROP TABLE IF EXISTS `ss_reset_pwd`;
CREATE TABLE `ss_reset_pwd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `init_time` int(11) NOT NULL,
  `expire_time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `uni_char` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for ss_user_admin
-- ----------------------------
DROP TABLE IF EXISTS `ss_user_admin`;
CREATE TABLE `ss_user_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(128) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `pass` varchar(64) NOT NULL,
  `passwd` varchar(16) NOT NULL,
  `t` int(11) NOT NULL DEFAULT '0',
  `u` bigint(20) DEFAULT '0',
  `d` bigint(20) DEFAULT '0',
  `plan` varchar(2) CHARACTER SET utf8mb4 DEFAULT NULL,
  `transfer_enable` bigint(20) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `switch` tinyint(4) NOT NULL DEFAULT '1',
  `enable` tinyint(4) NOT NULL DEFAULT '1',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `last_get_gift_time` int(11) NOT NULL DEFAULT '0',
  `last_check_in_time` int(11) NOT NULL DEFAULT '0',
  `last_rest_pass_time` int(11) NOT NULL DEFAULT '0',
  `reg_date` datetime DEFAULT NULL,
  `invite_num` int(8) DEFAULT '0',
  `money` decimal(12,2) DEFAULT '0.00',
  `ref_by` int(11) NOT NULL DEFAULT '0',
  `Invite` int(11) NOT NULL DEFAULT '0',
  `Invited` int(11) NOT NULL DEFAULT '0',
  `tel` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;
