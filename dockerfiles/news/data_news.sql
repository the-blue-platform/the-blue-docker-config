/*
 Navicat MySQL Data Transfer

 Source Server         : Mini-COMMON
 Source Server Type    : MySQL
 Source Server Version : 100116
 Source Host           : localhost
 Source Database       : news

 Target Server Type    : MySQL
 Target Server Version : 100116
 File Encoding         : utf-8

 Date: 06/24/2017 21:07:24 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` varchar(64) NOT NULL,
  `supplier_id` varchar(32) NOT NULL,
  `title` varchar(512) NOT NULL,
  `content` longtext,
  `link` varchar(512) DEFAULT NULL,
  `action_code` varchar(1) DEFAULT 'I',
  `update_sign` int(1) DEFAULT '1',
  `publish_date` datetime NOT NULL,
  `registration_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `news_uk01` (`supplier_id`,`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
