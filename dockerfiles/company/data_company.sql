/*
 Navicat MySQL Data Transfer

 Source Server         : Mini-COMMON
 Source Server Type    : MySQL
 Source Server Version : 100116
 Source Host           : localhost
 Source Database       : company

 Target Server Type    : MySQL
 Target Server Version : 100116
 File Encoding         : utf-8

 Date: 06/24/2017 18:31:21 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `company_auto_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `supplier_id` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `company_name_english` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `company_name_local` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `address_registered` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `address_country` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `tel_number` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `web_url` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `short_description` text COLLATE utf8_bin,
  `action_code` varchar(1) COLLATE utf8_bin DEFAULT 'I',
  `update_sign` int(1) DEFAULT '1',
  `publish_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `registration_timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`company_auto_id`),
  KEY `company_idx01` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=443157 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

SET FOREIGN_KEY_CHECKS = 1;
