/*
Navicat MySQL Data Transfer

Source Server         : news
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : veve

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2018-10-14 18:03:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_type`;
CREATE TABLE `tb_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_type
-- ----------------------------
INSERT INTO `tb_type` VALUES ('1', '普通用户');
INSERT INTO `tb_type` VALUES ('2', '高级用户');
INSERT INTO `tb_type` VALUES ('3', '管理员');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `birthday` date NOT NULL,
  `age` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_type_id` (`typeid`),
  CONSTRAINT `fk_user_type_id` FOREIGN KEY (`typeid`) REFERENCES `tb_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '张三', '1990-01-01', '28', '1');
INSERT INTO `tb_user` VALUES ('2', '李四', '1992-01-01', '26', '2');
INSERT INTO `tb_user` VALUES ('3', '王五', '1991-01-01', '27', '3');
INSERT INTO `tb_user` VALUES ('4', '赵刘', '1999-01-01', '19', '1');
INSERT INTO `tb_user` VALUES ('5', '刘信', '1990-01-01', '28', '1');
INSERT INTO `tb_user` VALUES ('11', '张三', '2018-10-08', '25', '2');
INSERT INTO `tb_user` VALUES ('12', '张三', '2018-10-08', '25', '2');
INSERT INTO `tb_user` VALUES ('13', '张三', '2018-10-08', '25', '2');
INSERT INTO `tb_user` VALUES ('14', '张三', '2018-10-08', '25', '2');
INSERT INTO `tb_user` VALUES ('15', '张三', '2018-10-08', '25', '2');
INSERT INTO `tb_user` VALUES ('16', '张三', '2018-10-08', '25', '2');
INSERT INTO `tb_user` VALUES ('17', '张三', '2018-10-08', '25', '2');
INSERT INTO `tb_user` VALUES ('18', '张三', '2018-10-08', '25', '2');
INSERT INTO `tb_user` VALUES ('19', '张三', '2018-10-08', '25', '2');
INSERT INTO `tb_user` VALUES ('21', '李1', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('22', '李2', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('23', '李3', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('24', '李4', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('25', '李5', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('26', '李6', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('27', '李7', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('28', '李8', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('29', '李9', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('61', '王1', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('62', '王2', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('63', '王3', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('64', '王4', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('65', '王5', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('66', '王6', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('67', '王7', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('68', '王8', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('69', '王9', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('110', '张三', '2018-10-08', '25', '2');
INSERT INTO `tb_user` VALUES ('210', '李10', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('211', '李11', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('212', '李12', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('213', '李13', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('214', '李14', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('215', '李15', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('216', '李16', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('217', '李17', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('218', '李18', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('219', '李19', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('220', '李20', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('221', '李21', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('222', '李22', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('223', '李23', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('224', '李24', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('225', '李25', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('226', '李26', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('227', '李27', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('228', '李28', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('229', '李29', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('230', '李30', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('231', '李31', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('232', '李32', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('233', '李33', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('234', '李34', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('235', '李35', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('236', '李36', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('237', '李37', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('238', '李38', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('239', '李39', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('240', '李40', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('241', '李41', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('242', '李42', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('243', '李43', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('244', '李44', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('245', '李45', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('246', '李46', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('247', '李47', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('248', '李48', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('249', '李49', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('250', '李50', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('251', '李51', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('252', '李52', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('253', '李53', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('254', '李54', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('255', '李55', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('256', '李56', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('257', '李57', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('258', '李58', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('259', '李59', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('260', '李60', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('261', '李61', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('262', '李62', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('263', '李63', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('264', '李64', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('265', '李65', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('266', '李66', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('267', '李67', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('268', '李68', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('269', '李69', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('270', '李70', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('271', '李71', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('272', '李72', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('273', '李73', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('274', '李74', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('275', '李75', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('276', '李76', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('277', '李77', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('278', '李78', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('279', '李79', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('280', '李80', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('281', '李81', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('282', '李82', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('283', '李83', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('284', '李84', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('285', '李85', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('286', '李86', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('287', '李87', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('288', '李88', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('289', '李89', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('290', '李90', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('291', '李91', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('292', '李92', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('293', '李93', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('294', '李94', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('295', '李95', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('296', '李96', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('297', '李97', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('298', '李98', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('299', '李99', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('301', '张三1', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('610', '王10', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('611', '王11', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('612', '王12', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('613', '王13', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('614', '王14', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('615', '王15', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('616', '王16', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('617', '王17', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('618', '王18', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('619', '王19', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('620', '王20', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('621', '王21', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('622', '王22', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('623', '王23', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('624', '王24', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('625', '王25', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('626', '王26', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('627', '王27', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('628', '王28', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('629', '王29', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('630', '王30', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('631', '王31', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('632', '王32', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('633', '王33', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('634', '王34', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('635', '王35', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('636', '王36', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('637', '王37', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('638', '王38', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('639', '王39', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('640', '王40', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('641', '王41', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('642', '王42', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('643', '王43', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('644', '王44', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('645', '王45', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('646', '王46', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('647', '王47', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('648', '王48', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('649', '王49', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('650', '王50', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('651', '王51', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('652', '王52', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('653', '王53', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('654', '王54', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('655', '王55', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('656', '王56', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('657', '王57', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('658', '王58', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('659', '王59', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('660', '王60', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('661', '王61', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('662', '王62', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('663', '王63', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('664', '王64', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('665', '王65', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('666', '王66', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('667', '王67', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('668', '王68', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('669', '王69', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('670', '王70', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('671', '王71', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('672', '王72', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('673', '王73', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('674', '王74', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('675', '王75', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('676', '王76', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('677', '王77', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('678', '王78', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('679', '王79', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('680', '王80', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('681', '王81', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('682', '王82', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('683', '王83', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('684', '王84', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('685', '王85', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('686', '王86', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('687', '王87', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('688', '王88', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('689', '王89', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('690', '王90', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('691', '王91', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('692', '王92', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('693', '王93', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('694', '王94', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('695', '王95', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('696', '王96', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('697', '王97', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('698', '王98', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('699', '王99', '2018-10-08', '25', '3');
INSERT INTO `tb_user` VALUES ('2100', '李100', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2101', '李101', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2102', '李102', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2103', '李103', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2104', '李104', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2105', '李105', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2106', '李106', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2107', '李107', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2108', '李108', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2109', '李109', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2110', '李110', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2111', '李111', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2112', '李112', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2113', '李113', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2114', '李114', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2115', '李115', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2116', '李116', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2117', '李117', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2118', '李118', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2119', '李119', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2120', '李120', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2121', '李121', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2122', '李122', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2123', '李123', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2124', '李124', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2125', '李125', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2126', '李126', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2127', '李127', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2128', '李128', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2129', '李129', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2130', '李130', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2131', '李131', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2132', '李132', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2133', '李133', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2134', '李134', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2135', '李135', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2136', '李136', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2137', '李137', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2138', '李138', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2139', '李139', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2140', '李140', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2141', '李141', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2142', '李142', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2143', '李143', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2144', '李144', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2145', '李145', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2146', '李146', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2147', '李147', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2148', '李148', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2149', '李149', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2150', '李150', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2151', '李151', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2152', '李152', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2153', '李153', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2154', '李154', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2155', '李155', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2156', '李156', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2157', '李157', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2158', '李158', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2159', '李159', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2160', '李160', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2161', '李161', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2162', '李162', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2163', '李163', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2164', '李164', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2165', '李165', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2166', '李166', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2167', '李167', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2168', '李168', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2169', '李169', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2170', '李170', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2171', '李171', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2172', '李172', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2173', '李173', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2174', '李174', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2175', '李175', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2176', '李176', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2177', '李177', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2178', '李178', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2179', '李179', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2180', '李180', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2181', '李181', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2182', '李182', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2183', '李183', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2184', '李184', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2185', '李185', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2186', '李186', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2187', '李187', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2188', '李188', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2189', '李189', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2190', '李190', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2191', '李191', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2192', '李192', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2193', '李193', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2194', '李194', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2195', '李195', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2196', '李196', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2197', '李197', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2198', '李198', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2199', '李199', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2200', '李200', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2201', '李201', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2202', '李202', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2203', '李203', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2204', '李204', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2205', '李205', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2206', '李206', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2207', '李207', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2208', '李208', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2209', '李209', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2210', '李210', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2211', '李211', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2212', '李212', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2213', '李213', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2214', '李214', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2215', '李215', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2216', '李216', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2217', '李217', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2218', '李218', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2219', '李219', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2220', '李220', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2221', '李221', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2222', '李222', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2223', '李223', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2224', '李224', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2225', '李225', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2226', '李226', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2227', '李227', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2228', '李228', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2229', '李229', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2230', '李230', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2231', '李231', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2232', '李232', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2233', '李233', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2234', '李234', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2235', '李235', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2236', '李236', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2237', '李237', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2238', '李238', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2239', '李239', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2240', '李240', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2241', '李241', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2242', '李242', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2243', '李243', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2244', '李244', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2245', '李245', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2246', '李246', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2247', '李247', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2248', '李248', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2249', '李249', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2250', '李250', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2251', '李251', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2252', '李252', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2253', '李253', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2254', '李254', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2255', '李255', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2256', '李256', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2257', '李257', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2258', '李258', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2259', '李259', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2260', '李260', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2261', '李261', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2262', '李262', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2263', '李263', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2264', '李264', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2265', '李265', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2266', '李266', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2267', '李267', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2268', '李268', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2269', '李269', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2270', '李270', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2271', '李271', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2272', '李272', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2273', '李273', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2274', '李274', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2275', '李275', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2276', '李276', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2277', '李277', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2278', '李278', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2279', '李279', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2280', '李280', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2281', '李281', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2282', '李282', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2283', '李283', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2284', '李284', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2285', '李285', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2286', '李286', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2287', '李287', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2288', '李288', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2289', '李289', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2290', '李290', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2291', '李291', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2292', '李292', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2293', '李293', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2294', '李294', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2295', '李295', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2296', '李296', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2297', '李297', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2298', '李298', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2299', '李299', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2300', '李300', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2301', '李301', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2302', '李302', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2303', '李303', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2304', '李304', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2305', '李305', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2306', '李306', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2307', '李307', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2308', '李308', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2309', '李309', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2310', '李310', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2311', '李311', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2312', '李312', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2313', '李313', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2314', '李314', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2315', '李315', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2316', '李316', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2317', '李317', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2318', '李318', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2319', '李319', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2320', '李320', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2321', '李321', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2322', '李322', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2323', '李323', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2324', '李324', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2325', '李325', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2326', '李326', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2327', '李327', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2328', '李328', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2329', '李329', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2330', '李330', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2331', '李331', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2332', '李332', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2333', '李333', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2334', '李334', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2335', '李335', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2336', '李336', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2337', '李337', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2338', '李338', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2339', '李339', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2340', '李340', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2341', '李341', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2342', '李342', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2343', '李343', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2344', '李344', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2345', '李345', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2346', '李346', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2347', '李347', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2348', '李348', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2349', '李349', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2350', '李350', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2351', '李351', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2352', '李352', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2353', '李353', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2354', '李354', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2355', '李355', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2356', '李356', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2357', '李357', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2358', '李358', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2359', '李359', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2360', '李360', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2361', '李361', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2362', '李362', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2363', '李363', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2364', '李364', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2365', '李365', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2366', '李366', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2367', '李367', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2368', '李368', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2369', '李369', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2370', '李370', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2371', '李371', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2372', '李372', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2373', '李373', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2374', '李374', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2375', '李375', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2376', '李376', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2377', '李377', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2378', '李378', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2379', '李379', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2380', '李380', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2381', '李381', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2382', '李382', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2383', '李383', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2384', '李384', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2385', '李385', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2386', '李386', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2387', '李387', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2388', '李388', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2389', '李389', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2390', '李390', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2391', '李391', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2392', '李392', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2393', '李393', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2394', '李394', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2395', '李395', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2396', '李396', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2397', '李397', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2398', '李398', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2399', '李399', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2400', '李400', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2401', '李401', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2402', '李402', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2403', '李403', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2404', '李404', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2405', '李405', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2406', '李406', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2407', '李407', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2408', '李408', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2409', '李409', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2410', '李410', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2411', '李411', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2412', '李412', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2413', '李413', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2414', '李414', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2415', '李415', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2416', '李416', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2417', '李417', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2418', '李418', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2419', '李419', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2420', '李420', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2421', '李421', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2422', '李422', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2423', '李423', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2424', '李424', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2425', '李425', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2426', '李426', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2427', '李427', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2428', '李428', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2429', '李429', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2430', '李430', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2431', '李431', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2432', '李432', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2433', '李433', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2434', '李434', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2435', '李435', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2436', '李436', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2437', '李437', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2438', '李438', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2439', '李439', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2440', '李440', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2441', '李441', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2442', '李442', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2443', '李443', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2444', '李444', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2445', '李445', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2446', '李446', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2447', '李447', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2448', '李448', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2449', '李449', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2450', '李450', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2451', '李451', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2452', '李452', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2453', '李453', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2454', '李454', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2455', '李455', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2456', '李456', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2457', '李457', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2458', '李458', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2459', '李459', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2460', '李460', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2461', '李461', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2462', '李462', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2463', '李463', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2464', '李464', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2465', '李465', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2466', '李466', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2467', '李467', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2468', '李468', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2469', '李469', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2470', '李470', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2471', '李471', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2472', '李472', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2473', '李473', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2474', '李474', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2475', '李475', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2476', '李476', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2477', '李477', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2478', '李478', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2479', '李479', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2480', '李480', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2481', '李481', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2482', '李482', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2483', '李483', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2484', '李484', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2485', '李485', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2486', '李486', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2487', '李487', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2488', '李488', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2489', '李489', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2490', '李490', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2491', '李491', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2492', '李492', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2493', '李493', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2494', '李494', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2495', '李495', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2496', '李496', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2497', '李497', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2498', '李498', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2499', '李499', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('2500', '李500', '2018-10-08', '25', '1');
INSERT INTO `tb_user` VALUES ('6100', '王100', '2018-10-08', '25', '3');

-- ----------------------------
-- Procedure structure for veve
-- ----------------------------
DROP PROCEDURE IF EXISTS `veve`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `veve`()
begin 
    DECLARE i INT DEFAULT 1; 
    WHILE (i <= 10) DO 
        INSERT INTO tb_user (id,name,birthday,age,typeid) VALUES (concat('1',i),"张三",'2018-10-08',25,2); 
        SET i = i + 1; 
    END WHILE; 
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for veve1
-- ----------------------------
DROP PROCEDURE IF EXISTS `veve1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `veve1`()
begin 
    DECLARE i INT DEFAULT 1; 
    WHILE (i <= 1) DO 
        INSERT INTO tb_user (id,name,birthday,age,typeid) VALUES (concat('30',i),concat('张三',i),'2018-10-08',25,1); 
        SET i = i + 1; 
    END WHILE; 
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for veve11
-- ----------------------------
DROP PROCEDURE IF EXISTS `veve11`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `veve11`()
begin 
    DECLARE i INT DEFAULT 1; 
    WHILE (i <= 100) DO 
        INSERT INTO tb_user (id,name,birthday,age,typeid) VALUES (concat('6',i),concat('王',i),'2018-10-08',25,3); 
        SET i = i + 1; 
    END WHILE; 
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for veve12
-- ----------------------------
DROP PROCEDURE IF EXISTS `veve12`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `veve12`()
begin 
    DECLARE i INT DEFAULT 1; 
    WHILE (i <= 500) DO 
        INSERT INTO tb_user (id,name,birthday,age,typeid) VALUES (concat('2',i),concat('李',i),'2018-10-08',25,1); 
        SET i = i + 1; 
    END WHILE; 
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for veve2
-- ----------------------------
DROP PROCEDURE IF EXISTS `veve2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `veve2`()
begin 
    DECLARE i INT DEFAULT 1; 
    WHILE (i <= 1000) DO 
        INSERT INTO tb_user (id,name,birthday,age,typeid) VALUES (concat('30',i),concat('张',i),'2018-10-08',25,1); 
        SET i = i + 1; 
    END WHILE; 
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for xunhuancharu
-- ----------------------------
DROP PROCEDURE IF EXISTS `xunhuancharu`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `xunhuancharu`()
begin 
    DECLARE i INT DEFAULT 1; 
    WHILE (i <= 10) DO 
        INSERT INTO tb_user (id,name,birthday,age,typeid) VALUES ('',"张三",'2018-10-08',25,2); 
        SET i = i + 1; 
    END WHILE; 
end
;;
DELIMITER ;
