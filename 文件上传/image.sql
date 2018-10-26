/*
Navicat MySQL Data Transfer

Source Server         : aiwanren
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : image

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2018-10-26 17:14:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for put
-- ----------------------------
DROP TABLE IF EXISTS `put`;
CREATE TABLE `put` (
  `id` varchar(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of put
-- ----------------------------
