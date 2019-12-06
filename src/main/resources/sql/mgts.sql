/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : mgts

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-12-06 17:15:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chat_history
-- ----------------------------
DROP TABLE IF EXISTS `chat_history`;
CREATE TABLE `chat_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) NOT NULL COMMENT '商家id\n',
  `receiver_id` int(10) DEFAULT NULL COMMENT '买家id',
  `goods_id` int(10) DEFAULT NULL COMMENT '物品id',
  `content` varchar(100) DEFAULT NULL COMMENT '聊天的内容',
  `gmt_create` bigint(19) DEFAULT NULL COMMENT '创建时间',
  `gmt_update` bigint(19) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='聊天记录';

-- ----------------------------
-- Records of chat_history
-- ----------------------------
INSERT INTO `chat_history` VALUES ('1', '1', null, '3', 'good', '1573916238678', '1573916238678');
INSERT INTO `chat_history` VALUES ('2', '1', null, '3', 'good001', '1573916238988', '1573916238988');
INSERT INTO `chat_history` VALUES ('3', '1', null, '3', 'ooooo', '1575555865259', '1575555865259');
INSERT INTO `chat_history` VALUES ('5', '1', null, '3', 'goods', '1575558987698', '1575558987698');
INSERT INTO `chat_history` VALUES ('6', '1', null, '3', 'gooods', '1575559002847', '1575559002847');
INSERT INTO `chat_history` VALUES ('7', '1', null, '3', 'gppds', '1575559295755', '1575559295755');

-- ----------------------------
-- Table structure for collection_history
-- ----------------------------
DROP TABLE IF EXISTS `collection_history`;
CREATE TABLE `collection_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `gmt_create` bigint(19) DEFAULT NULL,
  `gmt_update` bigint(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='收藏记录';

-- ----------------------------
-- Records of collection_history
-- ----------------------------
INSERT INTO `collection_history` VALUES ('1', '4', '1', '1575619096814', '1575619096814');
INSERT INTO `collection_history` VALUES ('7', '127', '1', '1575623149615', '1575623149615');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(50) DEFAULT NULL COMMENT '物品名称\n',
  `goods_describe` varchar(500) DEFAULT NULL COMMENT '物品描述',
  `price` varchar(100) DEFAULT NULL COMMENT '价格\n',
  `trans_conditions` varchar(500) DEFAULT NULL COMMENT '易物条件',
  `gmt_create` mediumtext COMMENT '创建时间',
  `gmt_update` mediumtext COMMENT '更新时间\n',
  `goods_picture` varchar(100) DEFAULT NULL COMMENT '物品图片\n',
  `goods_video` varchar(100) DEFAULT NULL COMMENT '物品视频',
  `trading_status` int(11) DEFAULT NULL COMMENT '物品交易状态(0,1)',
  `type` int(11) DEFAULT NULL COMMENT '物品类型id',
  `userId` varchar(100) DEFAULT NULL COMMENT '拥有者id',
  PRIMARY KEY (`id`),
  KEY `goods_g_type_id_fk` (`type`),
  CONSTRAINT `goods_g_type_id_fk` FOREIGN KEY (`type`) REFERENCES `g_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8 COMMENT='物品';

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
INSERT INTO `goods` VALUES ('35', '自行车', '蓝色自行车', '100', '无', '1573916238678', '1575270825367', 'https://i.loli.net/2019/12/02/9edgQ5m2w8VNIST.jpg', null, '0', '3', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
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
INSERT INTO `goods` VALUES ('98', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1575537135195', 'https://i.loli.net/2019/12/01/ceqX8UaxnidDurT.png', null, '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
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
INSERT INTO `goods` VALUES ('118', 'a', '描述', '15', '条件', '1575118108258', '1575118108258', 'https://i.loli.net/2019/11/30/xocZBvRQrPtzCje.jpg', null, '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('119', 'test', '', '15', '', '1575120816349', '1575120816349', 'https://i.loli.net/2019/12/01/ceqX8UaxnidDurT.png', null, '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('120', 'a', 'test', '15', '', '1575129208818', '1575129208818', 'https://i.loli.net/2019/12/01/ceqX8UaxnidDurT.png', null, '0', '3', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('121', '忑', 'https://i.loli.net/2019/11/30/xE4D3yzUuSeZoWb.png', '15', '无', '1575129364199', '1575129364199', 'https://i.loli.net/2019/12/01/ceqX8UaxnidDurT.png', null, '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('122', 'test01', 'https://i.loli.net/2019/11/30/xE4D3yzUuSeZoWb.png', '15', '', '1575129447532', '1575129447532', 'https://i.loli.net/2019/12/01/ceqX8UaxnidDurT.png', null, '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('123', '2', '9', '8', '', '1575129524719', '1575129524719', 'https://i.loli.net/2019/12/01/ceqX8UaxnidDurT.png', null, '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('124', 'test02', 'wu ', '10000', '866', '1575132776988', '1575132776988', 'https://i.loli.net/2019/12/01/ceqX8UaxnidDurT.png', null, '0', '7', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('125', 'test03', 'wu ', '155', '莫得', '1575132986064', '1575132986064', 'https://i.loli.net/2019/12/01/ceqX8UaxnidDurT.png', null, '0', '3', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('126', 'test02', 'w', '155', 'w', '1575133907475', '1575133907475', 'https://i.loli.net/2019/12/01/ceqX8UaxnidDurT.png', null, '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('127', '测试物品01', '测--------------------------------', '1555', '易', '1575168528223', '1575178493717', 'https://i.loli.net/2019/12/01/PLmDCAqTWQR67Ie.jpg', null, '0', '4', 'a');
INSERT INTO `goods` VALUES ('128', '测试物品01', '                                测--------------------------------\r\n                            ', '1555', '                                易\r\n                            ', '1575171303629', '1575171303629', 'https://i.loli.net/2019/12/01/JH1lmTMbX4OaKIe.jpg', null, '0', '1', 'a');
INSERT INTO `goods` VALUES ('129', '测试物品01', '测--------------------------------\r\n                            ', '1555', '易\r\n                            ', '1575171992712', '1575171992712', 'https://i.loli.net/2019/12/01/jDVA4Z3YlMdXtOq.png', null, '0', '1', 'a');
INSERT INTO `goods` VALUES ('130', '测试物品01', '测--------------------------------\r\n                            ', '1555', '易\r\n                            ', '1575172206956', '1575172206956', 'https://i.loli.net/2019/12/01/JH1lmTMbX4OaKIe.jpg', null, '0', '4', 'a');
INSERT INTO `goods` VALUES ('131', '测试物品01', '修改测试\r\n                            ', '1555', '易\r\n                            ', '1575172619936', '1575172619936', 'https://i.loli.net/2019/12/01/jDVA4Z3YlMdXtOq.png', null, '0', '4', 'a');
INSERT INTO `goods` VALUES ('132', '修改信息', '测--------再次修改\r\n                            ', '155599', '易修改\r\n                            ', '1575172714713', '1575178453548', 'https://i.loli.net/2019/12/01/PLmDCAqTWQR67Ie.jpg', null, '0', '2', 'a');
INSERT INTO `goods` VALUES ('133', '测试物品01', '测------------------修改\r\n                            \r\n                            ', '1555', '易\r\n                            \r\n                            ', '1575172945092', '1575172945092', 'https://i.loli.net/2019/12/01/jDVA4Z3YlMdXtOq.png', null, '0', '4', 'a');
INSERT INTO `goods` VALUES ('134', 'test', '一', '199999', '易', '1575271446940', '1575271446940', 'https://i.loli.net/2019/12/02/wCYEK4nBkv9LVtM.png', null, '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('135', 'test03', '11', '1999999', '515', '1575271542912', '1575271542912', 'https://i.loli.net/2019/12/01/ceqX8UaxnidDurT.png', null, '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('136', '1', 'saga', '15', '84', '1575291307808', '1575291307808', 'https://i.loli.net/2019/12/02/ZUs3M1qagTwzVKO.jpg', null, '0', '5', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('137', 'sadsa ', 'adsaedas', '21315412', 'awewqwe', '1575367466095', '1575367592679', 'https://i.loli.net/2019/12/01/ceqX8UaxnidDurT.png', null, '0', '8', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');

-- ----------------------------
-- Table structure for g_labels
-- ----------------------------
DROP TABLE IF EXISTS `g_labels`;
CREATE TABLE `g_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `is_hot` int(1) NOT NULL COMMENT '热门物品',
  PRIMARY KEY (`id`),
  KEY `fk_goodsId_goods_id` (`goods_id`),
  CONSTRAINT `fk_goodsId_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='物品标签';

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='物品类型';

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
-- Table structure for transaction_history
-- ----------------------------
DROP TABLE IF EXISTS `transaction_history`;
CREATE TABLE `transaction_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sellerId` int(10) DEFAULT NULL,
  `buyerId` int(10) DEFAULT NULL,
  `goodsid` int(10) NOT NULL,
  `gmt_create` bigint(19) DEFAULT NULL COMMENT '创建时间',
  `gmt_update` bigint(19) DEFAULT NULL COMMENT '修改时间',
  `trans_mode` varchar(10) DEFAULT NULL COMMENT '交易方式',
  `trans_status` int(10) DEFAULT NULL COMMENT '交易状态',
  `gmt_trans` bigint(19) DEFAULT NULL COMMENT '交易时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易记录';

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
  `account_id` varchar(100) NOT NULL COMMENT 'wechat的唯一标识',
  `token` varchar(100) NOT NULL COMMENT '浏览器登录标识',
  `avater_url` varchar(300) NOT NULL COMMENT '头像',
  `gmt_create` bigint(19) NOT NULL COMMENT '创建时间',
  `gmt_update` bigint(19) NOT NULL COMMENT '修改时间',
  `city` varchar(20) DEFAULT NULL COMMENT '城市',
  `province` varchar(20) DEFAULT NULL COMMENT '省份',
  `sex` int(11) DEFAULT NULL COMMENT '性别(0,1)',
  `country` varchar(20) DEFAULT NULL COMMENT '国家',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '。x', 'onYXl1eV5atvcTGk-Mj660Q3QsKA', 'acdb8ccf-53e3-4c35-b7b2-01b2307f57ee', 'http://thirdwx.qlogo.cn/mmopen/vi_32/ygUe1BziaHLxHrUCuWdOFuTVUUo9WBgnLBNicTlueMWNygtXhtosWKMKl9FLe3zurA2GMK4zzTCIoZytS0vibTuKA/132', '1571497558148', '1575623511421', '广州', '广东', '1', '中国');
INSERT INTO `user` VALUES ('2', '测试账号', 'a', 'a', 'http://thirdwx.qlogo.cn/mmopen/vi_32/ygUe1BziaHLxHrUCuWdOFuTVUUo9WBgnLBNicTlueMWNygtXhtosWKMKl9FLe3zurA2GMK4zzTCIoZytS0vibTuKA/132', '1', '1', '无', '无', '0', '无');
INSERT INTO `user` VALUES ('3', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2');
INSERT INTO `user` VALUES ('4', 'await', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE', '5f4b1ac8-25c6-4ab1-961b-32deccce77c4', 'http://thirdwx.qlogo.cn/mmopen/vi_32/V4OoicJJze5pd2Qx3lYiaeSdy6adjtogYOl6UlEBK9fMibicE5YfpekxaAP2ffsx2CoMVpObv6LX6DCP9wpcqlWjqg/132', '1575271674356', '1575291264216', '', '', '1', '比利时');
INSERT INTO `user` VALUES ('5', '墨语言', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA', '0b041739-481d-475d-9266-c6bc2e48c09d', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKICicDV8ribbQz0IDTXibUOAs4EotZwe7icPn743zVXXELLUsCdPtVoH3q5OUa6bicb9k8lyogF3zA88g/132', '1575367124660', '1575442355063', '惠州', '广东', '1', '中国');
INSERT INTO `user` VALUES ('6', '居居猪猪', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg', 'dd032a4e-3a26-4f36-9e04-2a347a6ad8bb', 'http://thirdwx.qlogo.cn/mmopen/vi_32/akOpIUicrGTfwpuAgYd7XzDGLvKwibm5X7Go785q1AKryX0DoXhGfhkDViaGUic0iaksc7hM5voVqacVFz3hcnMCPZw/132', '1575537335311', '1575537335311', '中山', '广东', '2', '中国');

-- ----------------------------
-- Table structure for user_other_info
-- ----------------------------
DROP TABLE IF EXISTS `user_other_info`;
CREATE TABLE `user_other_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `wechat` varchar(255) DEFAULT NULL COMMENT '微信号',
  `phone_number` varchar(100) DEFAULT NULL COMMENT '电话号码',
  `qq` varchar(100) DEFAULT NULL COMMENT 'QQ号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='用户的额外信息';

-- ----------------------------
-- Records of user_other_info
-- ----------------------------
INSERT INTO `user_other_info` VALUES ('2', '4', 'wxid_sfawf15151fwf', '1999548484', '415145841');
INSERT INTO `user_other_info` VALUES ('3', '2', 'asfasfwfwf', '', '151521521');
INSERT INTO `user_other_info` VALUES ('4', '3', 'pokokomo', '1016630136', '1536131');
INSERT INTO `user_other_info` VALUES ('5', '5', 'wxid_whrhrhrhc', '4185145145', '');
INSERT INTO `user_other_info` VALUES ('6', '1', 'wxid_ciunnikik', '1576846181', '54896815');
