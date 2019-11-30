/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : mgts

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-11-30 12:36:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chat_history
-- ----------------------------
DROP TABLE IF EXISTS `chat_history`;
CREATE TABLE `chat_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sender	id` int(10) NOT NULL,
  `receiverid	id` int(10) NOT NULL,
  `goodsid` int(10) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `gmt_create` bigint(19) DEFAULT NULL,
  `gmt_update` bigint(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='????';

-- ----------------------------
-- Records of chat_history
-- ----------------------------

-- ----------------------------
-- Table structure for collection_history
-- ----------------------------
DROP TABLE IF EXISTS `collection_history`;
CREATE TABLE `collection_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `goodsid` int(10) NOT NULL,
  `user	id` int(10) NOT NULL,
  `gmt_create` bigint(19) DEFAULT NULL,
  `gmt_update` bigint(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='????';

-- ----------------------------
-- Records of collection_history
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `describe` varchar(500) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `trans_conditions` varchar(500) DEFAULT NULL,
  `gmt_create` mediumtext,
  `gmt_update` mediumtext,
  `goods_picture` varchar(100) DEFAULT NULL,
  `goods_video` varchar(100) DEFAULT NULL,
  `trading_status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `userId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_g_type_id_fk` (`type`),
  CONSTRAINT `goods_g_type_id_fk` FOREIGN KEY (`type`) REFERENCES `g_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'book01', 'book01', '50', 'otherBook', '0', '0', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('2', 'lifeGood01', 'lifeGood01', '100', '无', '0', '0', 'https://i.loli.net/2019/11/26/pBDugwJqyRWfcZL.jpg', '0', '0', '2', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('3', 'Head First Java（中文版）（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '50.50', '《PHP程序设计》', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('4', '美特斯邦威春秋男花纹时尚长袖衬衫723296', '品牌: Meters Bonwe/美特斯邦威\r\n尺码: S：165/88A 适用季节: 秋季', '130', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/pBDugwJqyRWfcZL.jpg', '0', '0', '2', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('5', 'Head First Java_1（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '50.50', '《PHP程序设计》', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('6', 'Head First Java_2（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '50.50', '《PHP程序设计》', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('7', 'Head First Java_3（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '50.50', '《PHP程序设计》', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('8', 'Head First Java_4（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '50.50', '《PHP程序设计》', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('9', 'Head First Java_5（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '50.50', '《PHP程序设计》', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('10', 'Head First Java_6（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '50.50', '《PHP程序设计》', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('11', 'Head First Java_7（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '50.50', '《PHP程序设计》', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('12', 'Head First Java_8（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '50.50', '《PHP程序设计》', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('13', 'Head First Java_9（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '50.50', '《PHP程序设计》', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('14', 'Head First Java_10（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '50.50', '《PHP程序设计》', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('15', 'Head First Java_11（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '50.50', '《PHP程序设计》', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('16', 'Head First Java_12（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '50.50', '《PHP程序设计》', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('17', 'Head First Java_13（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '50.50', '《PHP程序设计》', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('18', 'Head First Java_14（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '50.50', '《PHP程序设计》', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('19', 'Head First Java_15（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '50.50', '《PHP程序设计》', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('20', 'Head First Java_16（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '50.50', '《PHP程序设计》', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('21', 'Head First Java_17（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '50.50', '《PHP程序设计》', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('22', 'Head First Java_18（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '50.50', '《PHP程序设计》', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('23', 'Head First Java_19（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '50.50', '《PHP程序设计》', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/N1LQXYfsgMoxFTn.jpg', '0', '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('24', '美特斯邦威春秋男花纹时尚长袖衬衫_01', '品牌: Meters Bonwe/美特斯邦威\r\n尺码: S：165/88A 适用季节: 秋季', '130', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/pBDugwJqyRWfcZL.jpg', '0', '0', '2', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('25', '美特斯邦威春秋男花纹时尚长袖衬衫_02', '品牌: Meters Bonwe/美特斯邦威\r\n尺码: S：165/88A 适用季节: 秋季', '130', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/pBDugwJqyRWfcZL.jpg', '0', '0', '2', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('26', '美特斯邦威春秋男花纹时尚长袖衬衫_06', '品牌: Meters Bonwe/美特斯邦威\r\n尺码: S：165/88A 适用季节: 秋季', '130', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/pBDugwJqyRWfcZL.jpg', '0', '0', '2', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('27', '美特斯邦威春秋男花纹时尚长袖衬衫_04', '品牌: Meters Bonwe/美特斯邦威\r\n尺码: S：165/88A 适用季节: 秋季', '130', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/pBDugwJqyRWfcZL.jpg', '0', '0', '2', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('28', '美特斯邦威春秋男花纹时尚长袖衬衫_05', '品牌: Meters Bonwe/美特斯邦威\r\n尺码: S：165/88A 适用季节: 秋季', '130', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/pBDugwJqyRWfcZL.jpg', '0', '0', '2', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('29', '美特斯邦威春秋男花纹时尚长袖衬衫_05', '品牌: Meters Bonwe/美特斯邦威\r\n尺码: S：165/88A 适用季节: 秋季', '130', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/pBDugwJqyRWfcZL.jpg', '0', '0', '2', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('30', '美特斯邦威春秋男花纹时尚长袖衬衫_06', '品牌: Meters Bonwe/美特斯邦威\r\n尺码: S：165/88A 适用季节: 秋季', '130', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/pBDugwJqyRWfcZL.jpg', '0', '0', '2', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('31', '美特斯邦威春秋男花纹时尚长袖衬衫_07', '品牌: Meters Bonwe/美特斯邦威\r\n尺码: S：165/88A 适用季节: 秋季', '130', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/pBDugwJqyRWfcZL.jpg', '0', '0', '2', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('32', '美特斯邦威春秋男花纹时尚长袖衬衫_08', '品牌: Meters Bonwe/美特斯邦威\r\n尺码: S：165/88A 适用季节: 秋季', '130', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/pBDugwJqyRWfcZL.jpg', '0', '0', '2', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('33', '美特斯邦威春秋男花纹时尚长袖衬衫_09', '品牌: Meters Bonwe/美特斯邦威\r\n尺码: S：165/88A 适用季节: 秋季', '130', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/pBDugwJqyRWfcZL.jpg', '0', '0', '2', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('34', '美特斯邦威春秋男花纹时尚长袖衬衫_10', '品牌: Meters Bonwe/美特斯邦威\r\n尺码: S：165/88A 适用季节: 秋季', '130', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/26/pBDugwJqyRWfcZL.jpg', '0', '0', '2', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('35', '自行车', '蓝色自行车', '100', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/n6hYKiE8MeoRBFp.png', '0', '0', '3', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('36', '自行车', '蓝色自行车', '100', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/n6hYKiE8MeoRBFp.png', '0', '0', '3', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('37', '自行车', '蓝色自行车', '100', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/n6hYKiE8MeoRBFp.png', '0', '0', '3', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('38', '自行车', '蓝色自行车', '100', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/n6hYKiE8MeoRBFp.png', '0', '0', '3', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('39', '自行车', '蓝色自行车', '100', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/n6hYKiE8MeoRBFp.png', '0', '0', '3', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('40', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('41', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('42', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('43', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('44', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('45', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('46', '自行车', '蓝色自行车', '100', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/n6hYKiE8MeoRBFp.png', '0', '0', '3', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('47', '自行车', '蓝色自行车', '100', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/n6hYKiE8MeoRBFp.png', '0', '0', '3', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('48', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('49', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('50', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('51', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('52', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('53', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '30', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('54', '自行车', '蓝色自行车', '100', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/n6hYKiE8MeoRBFp.png', '0', '0', '3', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('55', '自行车', '蓝色自行车', '100', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/n6hYKiE8MeoRBFp.png', '0', '0', '3', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('56', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('57', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('58', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('59', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('60', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('61', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('62', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('63', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('64', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('65', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('66', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('67', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('68', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('69', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('70', '自行车', '蓝色自行车', '100', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/n6hYKiE8MeoRBFp.png', '0', '0', '3', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('71', '自行车', '蓝色自行车', '100', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/n6hYKiE8MeoRBFp.png', '0', '0', '3', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('72', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('73', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('74', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('75', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('76', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('77', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('78', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('79', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('80', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('81', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('82', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('83', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('84', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('85', '小风扇', '粉色小风扇', '8', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/dS9IaQfpDW5Zo4j.png', '0', '0', '6', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('86', '小风扇', '粉色小风扇', '8', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/dS9IaQfpDW5Zo4j.png', '0', '0', '6', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('87', '小风扇', '粉色小风扇', '8', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/dS9IaQfpDW5Zo4j.png', '0', '0', '6', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('88', '小风扇', '粉色小风扇', '8', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/dS9IaQfpDW5Zo4j.png', '0', '0', '6', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('89', '小风扇', '粉色小风扇', '8', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/dS9IaQfpDW5Zo4j.png', '0', '0', '6', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('90', '小风扇', '粉色小风扇', '8', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/dS9IaQfpDW5Zo4j.png', '0', '0', '6', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('91', '小米笔记本', '去年年底京东购买的笔记本，未过保，无损坏。', '3000', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/Ln79cERkaFTmeil.png', '0', '0', '7', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('92', '自行车', '蓝色自行车', '100', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/n6hYKiE8MeoRBFp.png', '0', '0', '3', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('93', '自行车', '蓝色自行车', '100', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/n6hYKiE8MeoRBFp.png', '0', '0', '3', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('94', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('95', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('96', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('97', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('98', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/utgqAEOWainNeKj.png', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('99', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('100', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('101', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('102', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('103', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('104', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('105', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('106', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/ANLXgyYo82uEaOd.png', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('107', '小风扇', '粉色小风扇', '8', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/dS9IaQfpDW5Zo4j.png', '0', '0', '6', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('108', '小风扇', '粉色小风扇', '8', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/dS9IaQfpDW5Zo4j.png', '0', '0', '6', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('109', '小风扇', '粉色小风扇', '8', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/dS9IaQfpDW5Zo4j.png', '0', '0', '6', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('110', '小风扇', '粉色小风扇', '8', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/dS9IaQfpDW5Zo4j.png', '0', '0', '6', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('111', '小风扇', '粉色小风扇', '8', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/dS9IaQfpDW5Zo4j.png', '0', '0', '6', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('112', '小米笔记本', '去年年底京东购买的笔记本，未过保，无损坏。', '3000', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/Ln79cERkaFTmeil.png', '0', '0', '7', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('113', '笔记册', '全新，未使用', '5', '无', '1573916238678', '1573916238678', 'https://i.loli.net/2019/11/29/oSfsF2twWY18MD6.png', '0', '0', '8', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');

-- ----------------------------
-- Table structure for g_labels
-- ----------------------------
DROP TABLE IF EXISTS `g_labels`;
CREATE TABLE `g_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `is_hot` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_goodsId_goods_id` (`goods_id`),
  CONSTRAINT `fk_goodsId_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_labels
-- ----------------------------
INSERT INTO `g_labels` VALUES ('1', '3', '1');
INSERT INTO `g_labels` VALUES ('2', '24', '1');
INSERT INTO `g_labels` VALUES ('3', '98', '1');
INSERT INTO `g_labels` VALUES ('4', '4', '0');
INSERT INTO `g_labels` VALUES ('5', '6', '0');
INSERT INTO `g_labels` VALUES ('6', '6', '0');
INSERT INTO `g_labels` VALUES ('7', '7', '0');
INSERT INTO `g_labels` VALUES ('8', '8', '0');
INSERT INTO `g_labels` VALUES ('9', '9', '0');
INSERT INTO `g_labels` VALUES ('10', '15', '0');
INSERT INTO `g_labels` VALUES ('11', '41', '1');
INSERT INTO `g_labels` VALUES ('12', '61', '1');
INSERT INTO `g_labels` VALUES ('13', '5', '1');

-- ----------------------------
-- Table structure for g_type
-- ----------------------------
DROP TABLE IF EXISTS `g_type`;
CREATE TABLE `g_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_type
-- ----------------------------
INSERT INTO `g_type` VALUES ('1', '图书教材');
INSERT INTO `g_type` VALUES ('2', '生活用品');
INSERT INTO `g_type` VALUES ('3', '交通工具');
INSERT INTO `g_type` VALUES ('4', '票卷小物');
INSERT INTO `g_type` VALUES ('5', '休闲食品');
INSERT INTO `g_type` VALUES ('6', '实用工具');
INSERT INTO `g_type` VALUES ('7', '闲置数码');
INSERT INTO `g_type` VALUES ('8', '其它物品');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `col` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('17', 'test-02_0', '未知');

-- ----------------------------
-- Table structure for transaction_history
-- ----------------------------
DROP TABLE IF EXISTS `transaction_history`;
CREATE TABLE `transaction_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sellerId` int(10) DEFAULT NULL,
  `buyerId` int(10) DEFAULT NULL,
  `goodsid` int(10) NOT NULL,
  `gmt_create` bigint(19) DEFAULT NULL COMMENT '????',
  `gmt_update` bigint(19) DEFAULT NULL COMMENT '????',
  `trans_mode` varchar(10) DEFAULT NULL COMMENT '????',
  `trans_status` int(10) DEFAULT NULL COMMENT '????',
  `gmt_trans` bigint(19) DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='???????????';

-- ----------------------------
-- Records of transaction_history
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `account_id` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `avater_url` varchar(300) NOT NULL,
  `gmt_create` bigint(19) NOT NULL,
  `gmt_update` bigint(19) NOT NULL,
  `city` varchar(20) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='???';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '。x', 'onYXl1eV5atvcTGk-Mj660Q3QsKA', 'aecf0ae4-f2fc-40a3-9f42-b37144fe4c96', 'http://thirdwx.qlogo.cn/mmopen/vi_32/ygUe1BziaHLxHrUCuWdOFuTVUUo9WBgnLBNicTlueMWNygtXhtosWKMKl9FLe3zurA2GMK4zzTCIoZytS0vibTuKA/132', '1571497558148', '1574947269833', '广州', '广东', '1', '中国');
