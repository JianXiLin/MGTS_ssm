/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : mgts

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-12-23 10:22:33
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COMMENT='聊天记录';

-- ----------------------------
-- Records of chat_history
-- ----------------------------
INSERT INTO `chat_history` VALUES ('1', '1', null, '3', 'good', '1573916238678', '1573916238678');
INSERT INTO `chat_history` VALUES ('2', '1', null, '3', 'good001', '1573916238988', '1573916238988');
INSERT INTO `chat_history` VALUES ('3', '1', null, '3', 'ooooo', '1575555865259', '1575555865259');
INSERT INTO `chat_history` VALUES ('5', '1', null, '3', 'goods', '1575558987698', '1575558987698');
INSERT INTO `chat_history` VALUES ('6', '1', null, '3', 'gooods', '1575559002847', '1575559002847');
INSERT INTO `chat_history` VALUES ('7', '1', null, '3', 'gppds', '1575559295755', '1575559295755');
INSERT INTO `chat_history` VALUES ('8', '7', null, '24', '好看而且价格优惠', '1575876490729', '1575876490729');
INSERT INTO `chat_history` VALUES ('9', '1', null, '35', 'a\'a\'a', '1576478899880', '1576478899880');
INSERT INTO `chat_history` VALUES ('10', '1', null, '35', 'aaa', '1576478915917', '1576478915917');
INSERT INTO `chat_history` VALUES ('11', '1', null, '24', 'ssss', '1576482844561', '1576482844561');
INSERT INTO `chat_history` VALUES ('12', '4', null, '144', '买了，很好用，对头！', '1576500212004', '1576500212004');
INSERT INTO `chat_history` VALUES ('13', '4', null, '144', '买了，很好用，对头！', '1576500215642', '1576500215642');
INSERT INTO `chat_history` VALUES ('14', '4', null, '144', '买了，很好用，对头！', '1576500215969', '1576500215969');
INSERT INTO `chat_history` VALUES ('15', '4', null, '144', '买了，很好用，对头！', '1576500216586', '1576500216586');
INSERT INTO `chat_history` VALUES ('16', '5', null, '170', '没买过，就路过', '1576514098896', '1576514098896');
INSERT INTO `chat_history` VALUES ('17', '5', null, '170', '= = == = = ', '1576514123538', '1576514123538');
INSERT INTO `chat_history` VALUES ('18', '5', null, '169', '好贵，没钱买。还要留着买冰原', '1576514177438', '1576514177438');
INSERT INTO `chat_history` VALUES ('19', '5', null, '169', '可以白嫖否？', '1576514193501', '1576514193501');
INSERT INTO `chat_history` VALUES ('20', '5', null, '169', 'emmmmmmmmmm', '1576514210538', '1576514210538');
INSERT INTO `chat_history` VALUES ('21', '5', null, '169', 'bilibili？', '1576514290862', '1576514290862');
INSERT INTO `chat_history` VALUES ('22', '5', null, '169', '***************', '1576514299474', '1576514299474');
INSERT INTO `chat_history` VALUES ('23', '5', null, '169', '1834927605？？？', '1576514325213', '1576514325213');
INSERT INTO `chat_history` VALUES ('24', '5', null, '169', '&&&&&&&&&&&&&&…………………………………………%%%%%%￥￥￥￥￥￥####@@@！！！！！！（）（）（））））', '1576514393470', '1576514393470');
INSERT INTO `chat_history` VALUES ('25', '5', null, '169', '！@#￥%&……（）——+', '1576514424542', '1576514424542');
INSERT INTO `chat_history` VALUES ('26', '5', null, '169', '｛｝｛｝|“”：？》《》', '1576514438502', '1576514438502');
INSERT INTO `chat_history` VALUES ('27', '5', null, '169', '，。、；‘【】】【、==-·~】’', '1576514452616', '1576514452616');
INSERT INTO `chat_history` VALUES ('28', '5', null, '169', '(\'◇\'｀)', '1576514561954', '1576514561954');
INSERT INTO `chat_history` VALUES ('29', '5', null, '169', '(›´ω`‹ )', '1576514570281', '1576514570281');
INSERT INTO `chat_history` VALUES ('30', '5', null, '169', '(*´﹃｀*)', '1576514576068', '1576514576068');
INSERT INTO `chat_history` VALUES ('31', '5', null, '169', '(•ө•)♡', '1576514582907', '1576514582907');
INSERT INTO `chat_history` VALUES ('32', '5', null, '170', '(ง °Θ°)ว', '1576514619143', '1576514619143');
INSERT INTO `chat_history` VALUES ('33', '5', null, '170', '(º﹃º )', '1576514626136', '1576514626136');
INSERT INTO `chat_history` VALUES ('34', '5', null, '170', 'ԅ(¯﹃¯ԅ)', '1576514632381', '1576514632381');
INSERT INTO `chat_history` VALUES ('35', '5', null, '170', '(ง ˙ω˙)ว ', '1576514638092', '1576514638092');
INSERT INTO `chat_history` VALUES ('36', '5', null, '170', '|･ω･｀)', '1576514643441', '1576514643441');
INSERT INTO `chat_history` VALUES ('37', '5', null, '168', '_(:з」∠)_', '1576514658286', '1576514658286');
INSERT INTO `chat_history` VALUES ('38', '5', null, '168', '_(•̀ω•́ 」∠)_\r\n', '1576514668335', '1576514668335');
INSERT INTO `chat_history` VALUES ('39', '5', null, '168', '_(:3」∠❀)_', '1576514670975', '1576514670975');
INSERT INTO `chat_history` VALUES ('40', '5', null, '168', '(¦3[▓▓]', '1576514676030', '1576514676030');
INSERT INTO `chat_history` VALUES ('41', '5', null, '168', '.._:(´_`」 ∠):_ …', '1576514682317', '1576514682317');
INSERT INTO `chat_history` VALUES ('42', '5', null, '168', '(●°u°●)​ 」', '1576514735140', '1576514735140');
INSERT INTO `chat_history` VALUES ('43', '5', null, '168', '（x_x；）', '1576514742964', '1576514742964');
INSERT INTO `chat_history` VALUES ('44', '5', null, '167', '( ｰ̀εｰ́ )', '1576514757042', '1576514757042');
INSERT INTO `chat_history` VALUES ('45', '5', null, '167', '(｢･ω･)｢嘿', '1576514761782', '1576514761782');
INSERT INTO `chat_history` VALUES ('46', '5', null, '167', 'ｸﾞｯ!(๑•̀ㅂ•́)و✧', '1576514767114', '1576514767114');
INSERT INTO `chat_history` VALUES ('47', '5', null, '167', '(ง •̀_•́)ง\r\n', '1576514771653', '1576514771653');
INSERT INTO `chat_history` VALUES ('48', '5', null, '167', '(눈_눈)', '1576514777420', '1576514777420');
INSERT INTO `chat_history` VALUES ('49', '5', null, '167', '| ू•ૅω•́)ᵎᵎᵎ', '1576514781911', '1576514781911');
INSERT INTO `chat_history` VALUES ('50', '5', null, '167', '(ﾉ_ _)ﾉ\r\n', '1576514789617', '1576514789617');
INSERT INTO `chat_history` VALUES ('51', '5', null, '166', '(ง ˙o˙)ว', '1576514808449', '1576514808449');
INSERT INTO `chat_history` VALUES ('52', '5', null, '166', '( *・ω・)✄╰ひ╯', '1576514814529', '1576514814529');
INSERT INTO `chat_history` VALUES ('53', '5', null, '166', '٩( \'ω\' )و ', '1576514818423', '1576514818423');
INSERT INTO `chat_history` VALUES ('54', '5', null, '166', '(*´罒`*)', '1576514822963', '1576514822963');
INSERT INTO `chat_history` VALUES ('55', '5', null, '166', '(o^∀^o)\r\n', '1576514877041', '1576514877041');
INSERT INTO `chat_history` VALUES ('56', '5', null, '185', '(๑ゝω╹๑)', '1576516480349', '1576516480349');
INSERT INTO `chat_history` VALUES ('57', '5', null, '185', '好贵', '1576516494400', '1576516494400');
INSERT INTO `chat_history` VALUES ('58', '5', null, '185', 'ヽ(｡･ω･｡)ﾉ', '1576516499655', '1576516499655');
INSERT INTO `chat_history` VALUES ('59', '5', null, '185', '电瓶车比汽车贵系列', '1576516527683', '1576516527683');
INSERT INTO `chat_history` VALUES ('60', '5', null, '184', '(*∩ω∩)', '1576516538108', '1576516538108');
INSERT INTO `chat_history` VALUES ('61', '5', null, '184', '٩(๑òωó๑)۶', '1576516545380', '1576516545380');
INSERT INTO `chat_history` VALUES ('62', '5', null, '185', '总之很好，三轮车的车把手上面还自带手机充电器，对于快递小哥来说，这个设计非常人性化，此时此刻我只想用电影《我和我的祖国》里葛优饰演的张北京说的一句话来形容，牛掰格垃斯。', '1576516591249', '1576516591249');
INSERT INTO `chat_history` VALUES ('63', '5', null, '184', '车子收到了，很漂亮，是买给妈妈骑的，她不会骑两轮的车子，这四个轮子的车子她一骑就会，又不怕倒，妈妈很满意，谢谢卖家', '1576516623723', '1576516623723');
INSERT INTO `chat_history` VALUES ('64', '5', null, '183', '宝贝收到就迫不及待的试了一下，续航能力强，运行非常稳定，和描述的一样，满意。', '1576516646693', '1576516646693');
INSERT INTO `chat_history` VALUES ('65', '5', null, '183', '这车真霸气， 瞬间心里感觉很好，，19寸加宽防滑轮胎，平衡效果超好。我不会骑自行车的，上去就会骑，刚开始只敢慢慢的速度，骑了十几米后就个敢加速度了，一刹车，车头立刻抬起来，车就停下，真心不错。', '1576516653891', '1576516653891');
INSERT INTO `chat_history` VALUES ('66', '5', null, '183', '宝贝已收到，质量还是阔以的，玩了2天了还不错哟，上手比较快，有什么不懂的客服也一一解答了，唯一的不好就是太拉风，都是小哥哥小姐姐看着我，出去玩有点不好意思了！', '1576516665071', '1576516665071');
INSERT INTO `chat_history` VALUES ('67', '5', null, '183', '骑了有段时间了，各方面还行，不懂的老板也一一解答了，你能信老板是个50岁大叔么233333', '1576516676839', '1576516676839');
INSERT INTO `chat_history` VALUES ('68', '5', null, '183', '特别好的一个宝贝，很愉快的一次购物', '1576516682013', '1576516682013');
INSERT INTO `chat_history` VALUES ('69', '5', null, '182', '质量不错满意', '1576516713152', '1576516713152');
INSERT INTO `chat_history` VALUES ('70', '5', null, '182', '这辆车非常好，老人满意。', '1576516718790', '1576516718790');
INSERT INTO `chat_history` VALUES ('71', '5', null, '182', '符合我想要的，方便实用，质量挺好，卖家细心讲解，很满意', '1576516724120', '1576516724120');
INSERT INTO `chat_history` VALUES ('72', '5', null, '182', '结构很牢固，客服态度也好。问了好多都回答的很详细。老人走路不方便，有个这个超级好用', '1576516730479', '1576516730479');
INSERT INTO `chat_history` VALUES ('73', '5', null, '182', '收货有一段时间了，家里老人用着挺满意，第一次网购大件商品，超乎想象的好，价格也优惠，满意\r\n', '1576516743512', '1576516743512');
INSERT INTO `chat_history` VALUES ('74', '5', null, '182', '东西收到了，给奶奶买的，奶奶上了年纪腿脚不方便，好在控制器很简洁，操作很简单，7分钟不到就上手了，现在可以陪奶奶一起出门逛街啦，看到奶奶出门那么高兴我也很开心，祝店家生意兴隆。', '1576516751886', '1576516751886');
INSERT INTO `chat_history` VALUES ('75', '5', null, '182', '非常满意', '1576516758202', '1576516758202');
INSERT INTO `chat_history` VALUES ('76', '5', null, '182', '超级好用', '1576516765265', '1576516765265');
INSERT INTO `chat_history` VALUES ('77', '5', null, '182', '不错，很适合老人用', '1576516771542', '1576516771542');
INSERT INTO `chat_history` VALUES ('78', '5', null, '182', '轮椅很好，确认晚了。', '1576516777558', '1576516777558');
INSERT INTO `chat_history` VALUES ('79', '5', null, '182', '收到试了下，感觉不错，很好用。', '1576516783996', '1576516783996');
INSERT INTO `chat_history` VALUES ('80', '5', null, '181', '新车挺酷，很拉风，时常有人问哪里买到的，买的大马力，还不错，爬坡也很稳当，冲一次点12小时差不多可以用3天，上午下午各转一圈。', '1576516842391', '1576516842391');
INSERT INTO `chat_history` VALUES ('81', '5', null, '181', '开着挺好开的，很简单呢，质量真好，性价比也是真的很高，总得来说非常满意，动力很足，跑的也很快，满意', '1576516853437', '1576516853437');
INSERT INTO `chat_history` VALUES ('82', '5', null, '181', '非常不错，收到安装后感觉很牢固，安装方便，客服也非常好，运输中点察到的也补发了油漆。非常满意', '1576516943668', '1576516943668');
INSERT INTO `chat_history` VALUES ('83', '5', null, '185', '宝贝爱车收到啦，外观很漂亮性价比挺高的，实用性没的说', '1576516970159', '1576516970159');
INSERT INTO `chat_history` VALUES ('84', '5', null, '185', '小三轮车非常棒，是买来送给父母的，外观很漂亮而且马力很足，电瓶容量也完全够用，充一次电可以骑好几天，最关键的是安全稳定，父母年纪大了，平时出门赶集什么的代个步，既安全又方便快捷，简直是不二之选！', '1576516978411', '1576516978411');
INSERT INTO `chat_history` VALUES ('85', '5', null, '185', '给老妈买的，车架很硬朗结实，安全性很高，放进车库很方便的 很方便 ，全家都非常满意', '1576516989621', '1576516989621');
INSERT INTO `chat_history` VALUES ('86', '5', null, '185', '车子收到一个月了，也开了几次，噪音超级大，跟客服反应了好多次，一直跟我说是电机的声音，好几个朋友也是刚买的，就没有那么大的声音，都说我的有问题，太闹心了，也没有售后店，网上买还是不行', '1576517050147', '1576517050147');
INSERT INTO `chat_history` VALUES ('87', '5', null, '185', '折腾自己不说，也没优惠多少，想买的如果担心售后，还是实体店买吧', '1576517060889', '1576517060889');
INSERT INTO `chat_history` VALUES ('88', '6', null, '197', '可以讲价不', '1576638632705', '1576638632705');
INSERT INTO `chat_history` VALUES ('89', '6', null, '215', '这么贵，买来能干啥手机', '1576638662114', '1576638662114');
INSERT INTO `chat_history` VALUES ('90', '7', null, '226', '真好吃', '1576673740455', '1576673740455');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='收藏记录';

-- ----------------------------
-- Records of collection_history
-- ----------------------------
INSERT INTO `collection_history` VALUES ('1', '4', '1', '1575619096814', '1575619096814');
INSERT INTO `collection_history` VALUES ('12', '24', '7', '1575876689856', '1575876689856');
INSERT INTO `collection_history` VALUES ('13', '3', '6', '1575878989759', '1575878989759');
INSERT INTO `collection_history` VALUES ('15', '144', '1', '1576806961379', '1576806961379');

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
  `goods_picture` varchar(500) DEFAULT NULL COMMENT '物品图片\n',
  `goods_video` varchar(100) DEFAULT NULL COMMENT '物品视频',
  `trading_status` int(11) DEFAULT NULL COMMENT '物品交易状态(0,1)',
  `type` int(11) DEFAULT NULL COMMENT '物品类型id',
  `userId` varchar(100) DEFAULT NULL COMMENT '拥有者id',
  PRIMARY KEY (`id`),
  KEY `goods_g_type_id_fk` (`type`),
  CONSTRAINT `goods_g_type_id_fk` FOREIGN KEY (`type`) REFERENCES `g_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8 COMMENT='物品';

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('3', 'Head First Java（中文版）（JAVA经典畅销书 生动有趣 轻松学好JAVA）', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。', '30', '《PHP程序设计》', '1573916238678', '1575802539440', 'http://jianxilin.cn-bj.ufileos.com/80ae245a-9b4a-4f6e-bfe4-e34f852c4fce.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=6rWlgdgWnEpJqu6AfXONEbYCYfw%3D&Expires=1608180093', null, '0', '1', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('4', '美特斯邦威春秋男花纹时尚长袖衬衫723296', '品牌: Meters Bonwe/美特斯邦威\r\n尺码: S：165/88A 适用季节: 秋季', '130', '无', '1573916238678', '1575802635031', 'http://jianxilin.cn-bj.ufileos.com/81a51703-966b-4042-b8e3-6a66747335a2.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=VdeUdNzlXDjhs%2Fi%2BKAN9FbfnBjE%3D&Expires=1608182155', null, '0', '2', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('35', '自行车', '蓝色自行车', '100', '无', '1573916238678', '1575270825367', 'http://jianxilin.cn-bj.ufileos.com/fc72fdd1-d519-4d88-985a-afb93291c8fd.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=GyQKoBUutjgm5%2BPpB0yZuwvDdPY%3D&Expires=1608180094', null, '0', '3', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('45', '海绵宝宝挂件', '有趣的小挂件', '5', '无', '1573916238678', '1573916238678', 'http://jianxilin.cn-bj.ufileos.com/6429c376-983f-4260-abc4-a3b1c5fcdec2.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=TPHBEz8nH4PuGKHS3X89IPuQYd8%3D&Expires=1608180094', '0', '0', '4', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('69', '杏仁400g（罐装）', '南兴天虹美国笑口杏仁400g（罐装）', '35', '无', '1573916238678', '1573916238678', 'http://jianxilin.cn-bj.ufileos.com/a43531c7-716a-4fa6-94f0-2cba11146dc8.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=6%2BO8ow0E%2Bd9Efg1y25G0RJDNtaA%3D&Expires=1608180094', '0', '0', '5', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('85', '小风扇', '粉色小风扇', '8', '无', '1573916238678', '1573916238678', 'http://jianxilin.cn-bj.ufileos.com/8509e945-e070-4039-a519-be5436f1d068.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=4y7N%2FWm0f2QWfL0gw4wmCTP6En0%3D&Expires=1608180094', '0', '0', '6', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('91', '小米笔记本', '去年年底京东购买的笔记本，未过保，无损坏。', '3000', '无', '1573916238678', '1573916238678', 'http://jianxilin.cn-bj.ufileos.com/97266a64-4642-4036-86e5-14bdf6c3918f.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=Mnv71BE64ECd8AHG7bWOql6ridE%3D&Expires=1608180095', '0', '0', '7', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('113', '笔记册', '全新，未使用', '5', '无', '0000-00-00 00:00:00', '1573916238678', 'http://jianxilin.cn-bj.ufileos.com/d477a4db-6daf-4ff1-b095-0a396acb6e35.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=C%2BKDydoiBO5PFLiKoA4sQD6mJP8%3D&Expires=1608180075', '0', '0', '8', 'onYXl1eV5atvcTGk-Mj660Q3QsKA');
INSERT INTO `goods` VALUES ('140', '口才三绝正版全套 ', '全套书本很新', '29', '可以用书换书', '1576494976875', '1576494976875', 'http://jianxilin.cn-bj.ufileos.com/3b0b1671-332a-4f76-bc39-03d26449d4c2.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=V3WfEsVNryYPcFADYHP887KnJLU%3D&Expires=1608180076', null, '0', '1', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('141', 'Apple/苹果 iPhone XR 64G/128G 全网通4G智能手机双卡双待iphonexr', '证书编号：2018011606102550证书状态：有效产品名称：TD-LTE 数字移动电话机3C规格型号：A2108(电源适配器可选：A1443 输出：5.0VDC 1A)产品名称：Apple/苹果 iPhone XRApple型号: iPhone XR机身颜色: 红色 珊瑚色 白色 黑色 黄色 蓝色存储容量: 64GB 128GB', '5299', '现金交易', '1576495144458', '1576495144458', 'http://jianxilin.cn-bj.ufileos.com/ea6fbe71-a30b-4eed-9540-a52236a40476.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=KS4WMijioh691MRiWyd7WwPMqyc%3D&Expires=1608180076', null, '0', '7', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('142', '标准C语言基础教程', '书本刚用1年 ，还很新', '58', 'java书籍换', '1576495201363', '1576495201363', 'http://jianxilin.cn-bj.ufileos.com/1652283a-6e6c-496d-bce8-cfe081049379.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=PJWTjGdG6H9WqS8w8nfhluM1s04%3D&Expires=1608180076', null, '0', '1', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('143', '单片机c语言程序设计', '正版二手旧书包邮。本店所有书籍都是正版二手旧书', '15', '没有', '1576495326466', '1576495326466', 'http://jianxilin.cn-bj.ufileos.com/d50172fa-398a-4951-aec3-ca1336ef5f13.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=wkvFtWem84tb69GozNUsZSquPtU%3D&Expires=1608180077', null, '0', '1', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('144', '国行苹果11', '机身颜色: 红色 白色 黑色 黄色 绿色 紫色运行内存RAM: 4GB存储容量: 64GB 128GB 256GB', '5999', '现金交易', '1576495748321', '1576495748321', 'http://jianxilin.cn-bj.ufileos.com/989b0b00-d838-4b70-9f35-cf327f95448c.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=G44wBSoMGpx3yjPxrGluW8y1dM4%3D&Expires=1608182155', null, '0', '7', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('145', '尼康D7500 单反相机', '尺寸: 23.5mmx15.7mm电池类型: 锂电池单反级别: 中级单反画幅: APS-C画幅对焦点数: 51点感光元件类型: CMOS', '4399', '现金交易', '1576496291715', '1576496291715', 'http://jianxilin.cn-bj.ufileos.com/be9cb4a1-a34a-48b1-b102-719ed202a330.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=8YiQo8kWEU1cDbZ06Pl5WvtVLbc%3D&Expires=1608180077', null, '0', '7', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('146', '任天堂switch游戏机掌机', '产品名称：任天堂 Nintendo Switch品牌: Nintendo/任天堂任天堂型号: Nintendo Switch内存容量: 32GB颜色分类: 灰色手柄 红蓝手柄套餐: 单机标配', '2000', '现金交易', '1576496465240', '1576496465240', 'http://jianxilin.cn-bj.ufileos.com/7b9bbf5e-1d1d-43a8-8e8e-8087dc5c0dd1.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=xWlyJ3YzZaZrrJHX7qj8HK3fSzA%3D&Expires=1608180077', null, '0', '7', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('147', '海威特蓝牙耳机真无线双耳单入耳式', '功能: 支持音乐耳机材质: ABS', '299', '现金交易', '1576498874460', '1576498874460', 'http://jianxilin.cn-bj.ufileos.com/5c741c6e-80ec-4945-ac87-1834195f6f7e.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=Tk%2BH0VXNrMoXykozdcWxBFgpVBo%3D&Expires=1608180077', null, '0', '7', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('148', '理光全景相机720度theta临感vr看房sc房产中介V运动数码360摄像头', '品牌: Ricoh/理光存储介质: 闪存自带容量: 8GB电池类型: 锂电池接口类型: USB传输类型: Wi-Fi传输', '2400', '现金交易', '1576499097947', '1576499097947', 'http://jianxilin.cn-bj.ufileos.com/ed3ab810-a8f5-4240-a472-321ec94a8bda.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=6Qykm06k43L6CtXWW38FiL3UfCY%3D&Expires=1608180077', null, '0', '7', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('149', '罗技M330静音无线光电鼠标', '产品名称：Logitech/罗技 M330品牌: Logitech/罗技罗技无线型号: M330成色: 全新', '100', '现金交易', '1576499270576', '1576499270576', 'http://jianxilin.cn-bj.ufileos.com/6f70d73e-0f5c-4b13-b6fa-4da2ad37354f.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=JvqZCX4m3uLpEiN%2Bio9SnJwHvbQ%3D&Expires=1608180077', null, '0', '7', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('150', '小米路由器4C 300M无线路由器wifi', '产品名称：Xiaomi/小米 小米路由器4...型号: 小米路由器4C是否无线: 无线是否可拆: 不可拆', '55', '现金交易', '1576499380580', '1576499380580', 'http://jianxilin.cn-bj.ufileos.com/0a416e0f-40ba-4213-88a3-33547739f83f.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=Xp1q1bFaLiG%2FcfQiByS4NE7IZR4%3D&Expires=1608180077', null, '0', '7', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('151', '学生正姿练字用男女孩墨囊钢笔', '产品名称：HERO/英雄 359品牌: HERO/英雄型号: 359', '98', '现金', '1576499638810', '1576499638810', 'http://jianxilin.cn-bj.ufileos.com/2f88f413-a437-430f-b80f-dc92ca404ecb.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=Ml6yptgM9WVqGmdp83qEYtWeISk%3D&Expires=1608180078', null, '0', '8', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('152', '可存可取存钱罐大容量儿童网红防摔储蓄罐男孩女孩卡通可爱储钱罐', '品牌: 当珍材质: 搪胶\r\n货号: 萌兔萌熊储蓄罐', '25', '现金', '1576499775184', '1576499813966', 'http://jianxilin.cn-bj.ufileos.com/ccff9bff-04c8-4cc3-b4cf-3a0fb591f592.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=zuIDpUmMepm6EVuhpKy0krIiV%2Fk%3D&Expires=1608180079', null, '0', '8', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('153', '男士变色防蓝光辐射眼镜近视男潮大框平光镜黑框潮流眼睛电脑护眼', '品牌: MORAKOT/莫拉克颜色分类: 高端铝镁-黑框【0度防蓝光】', '139', '现金', '1576499992986', '1576499992986', 'http://jianxilin.cn-bj.ufileos.com/0dc16162-faea-4c7e-8f7a-c6cb5c37e06a.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=UqdrQEZrz5rH5rDwwLqloSmDiOo%3D&Expires=1608180079', null, '0', '8', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('154', 'LL荧光棒', 'ANNA\'S品牌 pl魔改升级版超高亮单色WOTA艺光绘应援棒包邮', '41', '', '1576505334076', '1576505334076', 'http://jianxilin.cn-bj.ufileos.com/6112ce5d-a2d9-4baf-b225-2c7b664bf21c.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=kjNNNp8idvdGGPrcUsqkk1E6o3w%3D&Expires=1608180079', null, '0', '4', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('155', '曙光女神', 'lol英雄。', '45', '45qb', '1576505506217', '1576505506217', 'http://jianxilin.cn-bj.ufileos.com/e501ae30-3a21-4aba-961c-95854dc0ff49.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=3K4v9JdZHBtviuO%2FP%2FK%2FuPzulMY%3D&Expires=1608180079', null, '0', '4', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('156', '广州·俄罗斯亚历山大红旗歌舞团2019年巡演', '活动日期 2019年12月20日-12月22日19:30-21:00（以演出现场为准）\r\n场馆地址 广东省 广州市 天河区 广州大剧院 歌剧厅\r\n入场说明 本活动为纸质票（顺丰到付），活动当天请携带收到的纸质门票，验票后入场（订单或订单截图无效），纸质票于11月20日开始开始寄出，最晚于2019年12月13日全部寄出；演出前一周下单的用户不发快递，凭购票预留信息到场馆票务中心前台兑换纸质票入场\r\n座位类型 一对一座位，按门票对应位置，有序对号入座，非选座项目随机出票\r\n儿童说明 1.2米以下儿童谢绝进场\r\n限购说明 不限购\r\n入场次数 单场票（ 单日单场次1次入场有效）\r\n退换说明 本项目不支持退换，如无法正常使用，还请自行处理，给您带来不便敬请谅解', '680', 'BML门票', '1576507590285', '1576507590285', 'http://jianxilin.cn-bj.ufileos.com/233dd943-64c3-4f5c-ab7b-d166a18671b4.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=REWySAzEyghGxexEcvP6aOrFYys%3D&Expires=1608180080', null, '0', '4', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('157', '广州·宝冢歌剧团OG《剑与爱的光芒-爱着拿破仑的女人们》', '活动日期 2019年12月31日-2020年1月2日19:30-21:50（具体以当天演出为准）\r\n场馆地址 广东省 广州市 天河区 广州大剧院 歌剧厅\r\n入场说明 本活动为纸质票（顺丰到付），活动当天请携带收到的纸质门票，验票后入场（订单或订单截图无效），演出前一周下单的用户不发快递，凭购票预留信息到场馆票务中心前台兑换纸质票入场\r\n座位类型 一对一座位，按门票对应位置，有序对号入座，非选座项目随机出票\r\n儿童说明 全部儿童凭全价票入场，一人一票，谢绝怀抱婴儿入场\r\n限购说明 不限购\r\n入场次数 单场票（ 单日单场次1次入场有效）\r\n退换说明 本项目不支持退换，如无法正常使用，还请自行处理，给您带来不便敬请谅解', '780', '初音手办', '1576507672008', '1576507672008', 'http://jianxilin.cn-bj.ufileos.com/f2ffd16f-6141-4c85-bba0-811268c6d098.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=TuNXEFX%2Bn64HP4%2FGqRm8Qqrbst4%3D&Expires=1608180080', null, '0', '4', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('158', '广州·第23届酷狗蘑菇 x 萤火虫动漫音乐嘉年华', '活动日期 2019/12/31-2020/1/2 9:00-17:00\r\n场馆地址 广东省 广州市 海珠区 保利世贸博览馆 保利世贸博览馆\r\n儿童说明 1.2米以下免费入场，1位成年人仅限携带1位1.2米以下儿童入场。如当天1位成人携带2位1.2米以下儿童入场，则从第二位儿童开始需要购票方可入场。\r\n入场次数 单场票，1次入场有效\r\n入场说明 现场凭购票二维码兑换纸质票入场（订单或订单截图无效）\r\n退换说明 本项目不支持退换，如无法正常使用，还请自行处理，给您带来不便敬请谅解\r\n限购说明 每个ID限购4张\r\n实名制 购票时需要输入购票人身份证信息，每笔订单对应一个证件号。入场请携带有效证件（身份证、通行证、护照、学生证）以备查验。', '65', '肯德基全家桶', '1576507860445', '1576561960314', 'http://jianxilin.cn-bj.ufileos.com/79e53738-52a0-4c17-b21c-f64c018c01cb.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=Li93v%2BvMe3RwhsfOGhP9wwKd5XI%3D&Expires=1608180081', null, '0', '4', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('159', '广州·35代假面骑士大集结', '活动日期 2019.11.29-2020.1.15 周一至周五12:00~21:00，周六至周日11:00~21:00（最后入场时间为20:30）；11.29入场时间为18:00\r\n场馆地址 广东省 广州市 天河区 东方宝泰购物广场 首层GF PO ZONE\r\n儿童说明 全部儿童凭全价票入场\r\n入场次数 单场票，1次入场有效\r\n入场说明 电子票，凭购票二维码验证入场（订单或订单截图无效）\r\n退换说明 本项目不支持退换，如无法正常使用，还请自行处理，给您带来不便敬请谅解', '68', '烤竹鼠一只', '1576507981593', '1576561892485', 'http://jianxilin.cn-bj.ufileos.com/0c89f757-77f3-4aaa-bea6-377366803085.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=GBWjC4c4aYQ%2FGWmJ5G0ZlStUs5s%3D&Expires=1608180081', null, '0', '4', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('160', '广州·戒猫研究所猫主题咖啡·酒馆', '活动日期 2019/8/21 - 2020/7/31 14:10-21:00\r\n场馆地址 广东省 广州市 天河区 戒猫研究所 戒猫研究所\r\n儿童说明 全部儿童凭全价票入场（14岁以下儿童请阅读详情注意事项）\r\n入场说明 电子票，凭购票二维码验证入场（订单或订单截图无效）\r\n退换说明 票品不支持退换票，如无法正常使用，还请自行处理，给您带来不便敬请谅解', '39', '麦当劳一顿', '1576509268285', '1576509268285', 'http://jianxilin.cn-bj.ufileos.com/23672ebd-57db-43f6-bd2c-4f34dad50621.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=OD2ESqqxJR9FSAZg%2BLIx3qXaN%2FA%3D&Expires=1608180081', null, '0', '4', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('161', '广州·第五届初物语动漫展“人类默示录”', '活动日期 2020年1月18日-1月19日 10:00-17:00\r\n场馆地址 广东省 广州市 海珠区 保利世贸博览馆 4+6号馆\r\n儿童说明 全部儿童凭全价票入场\r\n入场次数 单场票，1次入场有效\r\n入场说明 电子票，凭购票二维码验证入场（订单或订单截图无效）\r\n退换说明 本项目不支持退换，如无法正常使用，还请自行处理，给您带来不便敬请谅解', '65', '一顿饭钱', '1576510715194', '1576510715194', 'http://jianxilin.cn-bj.ufileos.com/a626856c-e053-43fb-abf0-9bc25230e8de.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=83rNjCnFZADHx6H55NMQrIb%2BmXk%3D&Expires=1608180081', null, '0', '4', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('162', '广州·2019鬼灭之刃only', '活动日期 2019.12.28 10:30-17:00\r\n场馆地址 广东省 广州市 番禺区 岭南电子商务产业园 综合楼2楼\r\n儿童说明 全部儿童凭全价票入场\r\n入场次数 单场票，多次入场有效\r\n入场说明 电子票，凭购票二维码验证入场（订单或订单截图无效）\r\n退换说明 本项目不支持退换，如无法正常使用，还请自行处理，给您带来不便敬请谅解', '60', '初物语门票', '1576512792984', '1576512792984', 'http://jianxilin.cn-bj.ufileos.com/ef7fddc2-7b71-4843-83e2-b198da076467.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=kUzrmtx0sJhKeuezW2Jgpse9hbI%3D&Expires=1608180081', null, '0', '4', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('163', '广州·2019-2020跨年倒计时“致爱情”情歌演唱会 爱是遇见，无法预见', '活动日期 2019年12月31日 19：00-21：00（第一场）22:00-24:00（第二场）\r\n场馆地址 广东省 广州市 天河区 广州中央车站 广州中央车站\r\n入场说明 本活动为电子票，凭购票二维码到活动现场扫码验证入场（订单或订单截图无效）\r\n座位类型 坐票，按照先到先坐的原则在各自区域内就坐\r\n限购说明 不限购\r\n儿童说明 全部儿童凭全价票入场\r\n入场次数 单场票（ 单日单场次1次入场有效）\r\n退换说明 本项目不支持退换，如无法正常使用，还请自行处理，给您带来不便敬请谅解', '180', '假面骑士门票', '1576512894783', '1576512894783', 'http://jianxilin.cn-bj.ufileos.com/5c7e9307-6a61-4b04-b802-0e61f6e67fab.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=g7KCAqUJgtD5I6XfO4nNRZRZ0cs%3D&Expires=1608180081', null, '0', '4', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('164', '广州·《意大利卢卡百合歌剧院交响乐团2020新年音乐会》', '活动日期 2019年12月23日 20:00 - 22:00（以演出现场为准）\r\n场馆地址 广东省 广州市 越秀区 星海音乐厅 交响乐演奏厅\r\n入场说明 本活动为纸质票，凭购票预留信息到活动现场聚橙换票处兑换纸质票入场（订单或订单截图无效）\r\n座位类型 一对一座位，按门票对应位置，有序对号入座，非选座项目随机出票\r\n儿童说明 全部儿童凭全价票入场\r\n限购说明 不限购\r\n入场次数 单场票（ 单日单场次1次入场有效）\r\n退换说明 本项目不支持退换，如无法正常使用，还请自行处理，给您带来不便敬请谅解', '280', '倒计时门票。', '1576513012442', '1576513012442', 'http://jianxilin.cn-bj.ufileos.com/049ff492-94af-4d17-8390-838ca102021c.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=Dmp1wDlF3bttG3jXDdeoR8yW3So%3D&Expires=1608180082', null, '0', '4', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('165', '广州·半宅空间ACG主题聚会体验店', '活动日期 10:00-23:00\r\n场馆地址 广东省 广州市 海珠区 半宅空间 半宅空间\r\n儿童说明 12岁及以下儿童谢绝入场，12岁以上儿童全价票入场\r\n入场次数 单场票，1次入场有效\r\n入场说明 电子票，凭购票二维码验证入场（订单或订单截图无效）\r\n退换说明 本项目不支持退换，如无法正常使用，还请自行处理，给您带来不便敬请谅解', '45', '猫屎咖啡', '1576513188989', '1576513188989', 'http://jianxilin.cn-bj.ufileos.com/ec32d504-d546-4a6c-8de6-5c8590463c5a.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=pTeMAhiINcsXKupqp6KlO92mODI%3D&Expires=1608180082', null, '0', '4', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('166', '仁光社LUMICA大闪光ARC日本超高亮化学荧光棒30支/盒WOTA艺打CALL', '品牌名称：SNAEN/斯纳恩\r\n产品参数：\r\n\r\n品牌: SNAEN/斯纳恩型号: 大闪光arc颜色分类: 橙色 红色 黄色 绿色 蓝色 白色 ', '257', '65只RB', '1576513337689', '1576513337689', 'http://jianxilin.cn-bj.ufileos.com/2a361495-20f3-40b5-9c3c-cc9b6f5be6f7.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=BJdQ0YEtI8iUu13ZEJUorHb5ayQ%3D&Expires=1608180083', null, '0', '4', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('167', '【虹光堂】独家定制RB 7寸超高亮化学荧光棒演唱会应援WOTA盒装', '庆祝RB问世2周年热销5W支！回馈客户永久降价！！！\r\n1支4元降为3.5元\r\n1包（25支）=80元\r\n1盒（50支）=150元', '150', 'ARC80支', '1576513610940', '1576513610940', 'http://jianxilin.cn-bj.ufileos.com/8338d088-a8c1-46fd-b9c2-736bb7c4607c.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=CFMxV9kJIS0tUx8CbYzrjbcx2UM%3D&Expires=1608180083', null, '0', '4', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('168', '现货 任天堂Switch NS游戏 健身环大冒险 Ring fit Adventure中文', '游戏类型: SPG体育游戏软件形式: 其他 完全版 标准版（盒装） 特典版 黄金版游戏系列: 健身环大冒险适用对象: 其他/other语种分类: 简体中文 繁体中文上市时间: 2019-10-18', '748', '钱', '1576513796555', '1576513796555', 'http://jianxilin.cn-bj.ufileos.com/34fd7018-eb9b-40ca-8bf1-9ef8d9b105c1.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=dDdzMJiriSjgOU8h2sLgvAUbEto%3D&Expires=1608180084', null, '0', '4', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('169', 'NS switch任天堂游戏卡带 塞尔达传说荒野之息 中文版 现货', '产品参数：\r\n\r\n游戏类型: ACT动作游戏软件形式: 其他 典藏版 完全版 标准版（盒装） 终极版 豪华版 黄金版生产企业: 任天堂游戏系列: 塞尔达适用对象: 其他/other语种分类: 简体中文游戏审批备案号: 004A54', '330', '钱', '1576513868806', '1576513868806', 'http://jianxilin.cn-bj.ufileos.com/67255dfe-9d82-4319-8681-024cc01d7068.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=qVas8I7u%2B1Exs4VHkt55nznyHhU%3D&Expires=1608180084', null, '0', '4', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('170', '【百草味-手撕面包1kg】全麦蛋糕早餐营养食品 休闲零食小吃整箱', '品牌名称：BE＆CHEERY/百草味\r\n产品参数：\r\n\r\n生产许可证编号：SC12442011202449产品标准号：GB/T 20981厂名：武汉海之最食品有限公司厂址：武汉市东西湖区三店吴北路517号信诚达工业园5栋(10)厂家联系方式：400-8810-118配料表：见包装储藏方法：阴凉干燥处、避免阳光直射保质期：180 天食品添加剂：见包装品牌: BE＆CHEERY/百草味系列: 手撕面包1kg口味: 手撕面包-1 kg 全麦面包-1 kg产地: 中国大陆省份: 湖北省包装方式: 包装糕点种类: 手撕面包净含量: 1000g', '30', '麦当劳巨无霸套餐', '1576514027268', '1576514027268', 'http://jianxilin.cn-bj.ufileos.com/22f5c5c5-f645-4599-b8b6-c2c3cbb0ee9d.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=lsFTQM5X6cev9uhZEk3rKEJ6gH0%3D&Expires=1608180084', null, '0', '4', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('171', 'DBH滑板初学者青少年成人儿童男女生刷街四轮公路双翘专业滑板车', '品牌名称：dbh\r\n产品参数：\r\n\r\n品牌: dbh隆峰: TREFLIP套装货号: TREFLIP套装滑板类型: 双翘板适用对象: 男 女上市时间: 2018年夏季是否商场同款: 否颜色分类: 蓝象 银龙 享受黑 席彬 春季款 银兔 坚', '400', '自行车', '1576515045284', '1576515045284', 'http://jianxilin.cn-bj.ufileos.com/ba145914-d5c9-480a-a49b-f86bcd2ab5ef.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=S3FACBcyQumYJ6VrHsyi4yIw3Yc%3D&Expires=1608180085', null, '0', '3', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('172', '小巴士成人电动三轮车老年新款家用小型电瓶车带棚接送孩子代步车', '品牌名称：Minibusev\r\n产品参数：\r\n\r\n证书编号：2018011102040194证书状态：有效产品名称：电动正三轮摩托车3C规格型号：LP2000DZK-5A型号: A9品牌: Minibusev颜色分类: 裸车500W（不含电池、充电器、电池盒）【红色/白色】 标配500W（48V20A超威电池）续航80里 |【白色】 标配请联系客服另加600元最高功率: 500W(含)-1000W(不含)电压: 48V核载人数: 多人适用人群: 成人最高时速: 25km/h(含)-30km/h(不含)续航里程: 35km(含)-45km(不含)用途: 其他', '3480', '跨国飞机票', '1576515171451', '1576515171451', 'http://jianxilin.cn-bj.ufileos.com/7e8b9e14-3627-43f6-bcfd-252bc71c5489.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=oVqJb%2FJwG%2B%2FztCVaEm1HOVP0Gi0%3D&Expires=1608180086', null, '0', '3', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('173', '大陆合电动滑板车代步神器超轻便携折叠迷你小型电瓶成年上班男女', '产品参数：\r\n\r\n型号: DLH-6品牌: 大陆合颜色分类: 【体验闪耀黑】续航约5km/无座椅/无赠品 【轻享闪耀黑】续航约10-20km/铝合金车身/12期免息 【轻享闪耀黑】续航约20-30km/铝合金车身/12期免息 【轻享闪耀黑】续航约30-40km/铝合金车身/12期免息 【轻享珍珠白】续航约30-40km/铝合金车身/12期免息 【轻享闪耀黑】续航约40-50km/铝合金车身/12期免息 【轻享珍珠白】续航约40-50km/铝合金车身/12期免息 【轻享闪耀黑】续航约50-70km/铝合金车身/12期免息 默认发闪耀黑,如需其他颜色请联系客服电压: 36V是否可折叠: 可折叠款式: 两轮适用人群: 通用最高时速: 18km/h以上续航里程: 25km(含)-35km(不含)', '1799', '滑板', '1576515248153', '1576515248153', 'http://jianxilin.cn-bj.ufileos.com/bc36d1dd-52d5-4fda-ae25-b44cf9229439.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=dZRgAJac6nZz%2BFMgi6%2FTmzpkTW0%3D&Expires=1608180086', null, '0', '3', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('174', '雅迪电动车豪战精致版电瓶车成人男女电动轻便摩托车', '品牌名称：Yadea/雅迪\r\n产品参数：\r\n\r\n证书编号：2019011102180012证书状态：有效产品名称：电动两轮轻便摩托车3C规格型号：YD800DQT-4D产品名称：Yadea/雅迪 豪战-精致版品牌: Yadea/雅迪型号: 豪战-精致版产地: 中国大陆适用性别: 通用颜色分类: 黑色 白色. 橙色 红色电压: 60V最高时速: 50km/h(不含）-70km/h（含）尺寸: 1690x670x1000mm最大功率: 0.8KW', '3299', '二手奥拓', '1576515387503', '1576515387503', 'http://jianxilin.cn-bj.ufileos.com/9733d011-8e60-4aff-88c7-48e73f41f2ff.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=8diVnN08xJFqrJhcipeRvhfp%2Byg%3D&Expires=1608180086', null, '0', '3', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('175', 'FIIDO亲子电动车迷你成人女代步接送电瓶车 小型折叠锂电池滑板车', '产品参数：\r\n\r\n型号: Q1品牌: FIIDO颜色分类: 青春折叠版 象牙白40KM 7.8Ah 青春折叠版 时尚红40KM 7.8Ah 青春折叠版 草木绿40KM 7.8Ah 豪华折叠版 象牙白55KM 10.4Ah 豪华折叠版 时尚红55KM 10.4Ah 豪华折叠版 草木绿55KM 10.4Ah 旗舰折叠版 象牙白70KM 三星电芯14Ah 旗舰折叠版 时尚红70KM 三星电芯14Ah 旗舰折叠版 草木绿70KM 三星电芯14Ah电压: 36V款式: 两轮适用人群: 成人最高时速: 18km/h以上续航里程: 25km(含)-35km(不含)', '2499', 'MS一台', '1576515461985', '1576515461985', 'http://jianxilin.cn-bj.ufileos.com/ef16d4fd-3fc6-4bf1-93ef-99c3b4384e1f.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=3L9KAEF8lwxuE4h1WderYt2ypB0%3D&Expires=1608180086', null, '0', '3', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('176', '电动滑板车成年电动折叠车越野11寸小型电动代步车迷你电动电瓶车', '产品参数：\r\n\r\n型号: ZB-03品牌: 帕芙络颜色分类: 48V/1000W/11寸真空胎/防水/一体车身/45-55KM 48V/1000W/11寸真空胎/防水/一体车身/55-65KM 48V/1000W/11寸真空胎/防水/一体车身/75-85KM 48V/1000W/11寸真空胎/防水/一体车身/85-100KM电压: 48V是否可折叠: 可折叠款式: 两轮适用人群: 成人最高时速: 18km/h以上续航里程: 25km(含)-35km(不含)', '3499', '微信零钱', '1576515539674', '1576515539674', 'http://jianxilin.cn-bj.ufileos.com/a1c964c1-1776-458d-a63b-21f737e8ad2c.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=CVfNdGpADLy9JoUDB1e847QHchw%3D&Expires=1608180087', null, '0', '3', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('177', '骏杰halei普哈雷宽胎电动车电瓶车成人城市代步滑板车休闲车2000w', '品牌名称：骏杰动感\r\n产品参数：\r\n\r\n品牌: 骏杰动感型号: 17年x8款最高时速: 18km/h以上款式: 两轮续航里程: 25km(含)-35km(不含)适用人群: 成人电压: 60V颜色分类: 哈雷电动车自配电池（可选颜', '520', '支付宝余额', '1576515595383', '1576515595383', 'http://jianxilin.cn-bj.ufileos.com/a04eaeda-80b1-4777-ad8a-07c042ed08ec.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=GHyttQOAlLP7X8WSDPCdPw0S0S0%3D&Expires=1608180088', null, '0', '3', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('178', '炫豪电动四轮车家用成人汽车新能源轿车全封闭代步电瓶车接送孩子', '品牌名称：XEUANHWOL/炫豪\r\n产品参数：\r\n\r\n型号: 新H2品牌: XEUANHWOL/炫豪颜色分类: 裸车（不含电池） 银行卡限额10000 套餐一60V58A干电池颜色可选 套餐二60V80A干电池颜色可选 套餐三60V100A干电池颜色可选 套餐四60V40A锂电池颜色可选 套餐五60V50A锂电池颜色可选 套餐六60V60A锂电池颜色可选最高功率: 1000W(含)-1500W(不含)电压: 60V核载人数: 4人适用人群: 成人最高时速: 40km/h以下续航里程: 65km及以上用途: 其他', '12380', '建设银行交易', '1576515702477', '1576515702477', 'http://jianxilin.cn-bj.ufileos.com/6f79d8a4-b4a9-4265-86eb-fc3121ae357d.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=XnA9HEwyEhtz0U0rq9lGGkFF%2FG4%3D&Expires=1608180088', null, '0', '3', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('179', '艾思维高速版电动独轮车平衡车代步体感车漂移扭扭车电瓶滑板车', '品牌名称：Icewheel/艾思维\r\n产品参数：\r\n\r\n型号: W系列独轮车品牌: Icewheel/艾思维电池类型: 锂离子电池颜色分类: V2特别版黑色送礼包(续航30公里+时速约18km) W2黑色送礼包(续航40KM+蓝牙音响+USB充电)时速约18km W3黑色送礼包(续航60KM+蓝牙音响+USB充电)时速约18km W2H黑色送礼包(续航40KM+蓝牙音响)时速约30km W3H黑色送礼包(续航60KM+蓝牙音响)时速约30km载重量: 100kg(含)-150kg(不含)最高功率: 500W(含)-1000W(不含)电压: 60V上市时间: 2014年秋季机身重量: 10kg(含)-15kg(含)充电时间: 3小时(含)-4小时(含)款式: 独轮车适用人群: 通用最高时速: 15km/h(含)-20km/h(不含)续航里程: 55km(含)-65km(不含)爬坡能力: 25°(含)-30°(不含)是否有扶杆: 没扶杆', '980', '农业银行交易', '1576515768746', '1576515768746', 'http://jianxilin.cn-bj.ufileos.com/780c0d9b-fb38-441d-98a4-5335fb31565c.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=psPxTWvPdlbWjn5XtHFkNu5JONE%3D&Expires=1608180089', null, '0', '3', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('180', '正步电动行李箱折叠电动车自行车成人迷你男女士小型锂电池电瓶车', '品牌名称：ZB/正步\r\n产品参数：\r\n\r\n型号: 行李电动车品牌: ZB/正步颜色分类: 箱包车避震款/时尚银/25-30公里90WH+158WH 箱包车避震款/宝石蓝/25-30公里90WH+158WH 箱包车避震款/黑色/25-30公里90WH+158WH 箱包车避震款/时尚银/30-45公里90WH+360WH 箱包车避震款/宝石蓝/30-45公里90WH+360WH 箱包车避震款/黑色/30-45公里90WH+360WH 箱包车避震款/时尚银/70-80公里90WH+648WH 箱包车避震款/宝石蓝/70-80公里90WH+648WH 箱包车避震款/黑色/70-80公里90WH+648WH电压: 36V是否可折叠: 可折叠款式: 两轮适用人群: 成人最高时速: 18km/h以上续航里程: 25km(含)-35km(不含)', '3288', '有内鬼，停止交易', '1576515821736', '1576515821736', 'http://jianxilin.cn-bj.ufileos.com/02a00a56-b49f-4ba1-ae2e-046751afbb8e.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=4rv0Ci12ergQLIVfAM6GCVFG9jo%3D&Expires=1608180089', null, '0', '3', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('181', '威之群电动车老年人代步车电动四轮带蓬双人座椅残疾人电瓶车4032', '品牌名称：Wisking/威之群\r\n产品参数：\r\n\r\n型号: 4032品牌: Wisking/威之群颜色分类: 红色半蓬 银色半蓬 挡风棚款 不带棚款 限额分批付款，私拍无效最高功率: 1000W(含)-1500W(不含)电压: 24V核载人数: 单人适用人群: 成人最高时速: 40km/h以下续航里程: 65km及以上用途: 其他', '16000', '无内鬼，继续交易。瑞士银行资金交易', '1576516004347', '1576516004347', 'http://jianxilin.cn-bj.ufileos.com/53ef8474-09ec-4453-a822-9ed64269ce6d.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=%2B6hfas%2F5HJyc5jj7%2F1iPSC%2BU0jw%3D&Expires=1608180090', null, '0', '3', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('182', 'wisking威之群老年残疾人电动轮椅代步车智能自动轻便折叠1023-16', '品牌名称：Wisking/威之群\r\n产品参数：\r\n\r\n型号: WISKING1023-16品牌: Wisking/威之群材质: 铝合金产地: 上海颜色分类: 蓝色靠背 红色靠背生产企业: 上海威之群机电制品有限公司执行标准号: 沪械注准20182190345附加功能: 防后滑增值服务: 无适用人群: 不限疾病: 下肢残疾 偏瘫 截瘫 摔伤 骨折牵引 骨质增生 骨质疏松症症状: 无法站立注册证号: 沪械注准20182190345选购热点: 可折电动 轻便折叠医疗器械产品名称: 电动轮椅车轮椅种类: 电动轮椅', '3880', '工商银行交易', '1576516086258', '1576516086258', 'http://jianxilin.cn-bj.ufileos.com/4cd3e2d9-3b61-42ea-9ece-7919a2d348cd.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=ywhYa55g6xE4m53RjUsuGfk5CVk%3D&Expires=1608180090', null, '0', '3', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('183', '电动独轮平衡车越野宽轮智能体感车成人代步电动摩托车思维电瓶车', '品牌名称：珍妮\r\n产品参数：\r\n\r\n型号: 190510品牌: 珍妮电池类型: 锂离子电池颜色分类: 红色 折叠把 蓝色 折叠把 充电器 银白色 折叠把 黑色 折叠把载重量: 150kg(含)-200kg(不含)最高功率: 1000W(含)-1500W(不含)电压: 60V上市时间: 2018年春季机身重量: 20kg及以上充电时间: 3小时(含)-4小时(含)款式: 独轮车适用人群: 成人最高时速: 25km/h(含)-30km/h(不含)续航里程: 45km(含)-55km(不含)爬坡能力: 20°(含)-25°(不含)是否有扶杆: 有扶杆', '6999', '中国银行', '1576516176982', '1576516176982', 'http://jianxilin.cn-bj.ufileos.com/28a6e7aa-bb7d-4583-b43c-41313aea5a81.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=v9S3UoRvstcVi3zbLFDuUwnljek%3D&Expires=1608180091', null, '0', '3', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('184', '爱霏特四轮电动代步电瓶车老年休闲代步接送孩子安全四轮减震老人', '品牌名称：ifeeter/爱霏特\r\n产品参数：\r\n\r\n型号: AFT-S4品牌: ifeeter/爱霏特颜色分类: 墨玉黑/锂电版 宝石蓝/铅酸版 雪域白/铅酸版 加州红/铅酸版 宝石蓝/锂电版 雪域白/锂电版 加州红/锂电版 墨玉黑/铅酸版最高功率: 1000W(含)-1500W(不含)电压: 48V 60V 72V及以上核载人数: 2人适用人群: 成人最高时速: 40km/h以下续航里程: 55km(含)-65km(不含)用途: 其他', '4280', '浦发银行', '1576516279147', '1576516279147', 'http://jianxilin.cn-bj.ufileos.com/80610707-8377-473f-96b9-6076d10d45c4.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=%2F%2FAAnSCEMgnTN%2BkzINHVbmDew1o%3D&Expires=1608180091', null, '0', '3', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('185', '电动三轮车电瓶车快递车物流车全国可上牌3C电动三轮车国标1.8米', '品牌名称：KungFu Loong/功夫龙\r\n产品参数：\r\n\r\n证书编号：2014011102734192证书状态：有效申请人名称：常州市喜力车业有限公司制造商名称：常州市喜力车业有限公司产品名称：电动正三轮摩托车3C产品型号：CL1800DZH3C规格型号：CL1800DZH型号: TDR-ZS001品牌: KungFu Loong/功夫龙颜色分类: 车厢1.5X1X1米电机1200W全国可上牌）无电池无充电器 车厢1.5X1X1米电机1200W含60V32AH电池可上牌） 车厢1.5X1X1米电机1200W含60V71AH电池可上牌） 车厢1.8X1.2X1.1米电机1200W可上牌）无电池无充电器 车厢1.8X1.2X1.1米电机1200W含60V32AH电池可上牌）', '8000', '东莞发展银行', '1576516407916', '1576516449158', 'http://jianxilin.cn-bj.ufileos.com/e198de46-56da-4c1f-bb94-534f348fbb61.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=QgAxkRIo3dlWJ6sifve9hxmDEWQ%3D&Expires=1608180092', null, '0', '3', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA');
INSERT INTO `goods` VALUES ('186', 'Java编程思想', '初学者专用书', '45', '没有', '1576560640872', '1576560640872', 'http://jianxilin.cn-bj.ufileos.com/c6528b39-64ef-48ed-81bb-893e29040c9a.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=CfUFQ9Wh9r%2FTl%2FrwG3hmQFdW1tI%3D&Expires=1608180092', null, '0', '1', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('187', '算法第4版 算法领域经典参考书', '计算机算法经典讲解', '80', '用c语言书换', '1576560780272', '1576560780272', 'http://jianxilin.cn-bj.ufileos.com/71d6d830-b26a-4eb7-97e2-b2c6a96bb1ef.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=roF1MgSEwI02uWOISN1wyTAqBg4%3D&Expires=1608180092', null, '0', '1', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('188', '疯狂java讲义', '本书是《疯狂Java讲义》的第5版，第5版保持了前4版系统、全面、讲解浅显、细致的特性', '50', '以钱交易', '1576560952075', '1576560952075', 'http://jianxilin.cn-bj.ufileos.com/153fec0e-67db-4440-bdef-7494f200f3e5.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=uuuXe9c88rfhCzkbLw62ZYYhEn0%3D&Expires=1608180092', null, '0', '1', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('189', '利用Python进行数据分析', '阅读本书可以获得一份关于在Python下操作、处理、清洗、规整数据集的完整说明', '24', '同类型书本交互', '1576561044717', '1576561044717', 'http://jianxilin.cn-bj.ufileos.com/8892a042-70c8-4d72-8994-6784e41597fc.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=WSSkD2qjInYEKn6m7y30yBAaAdE%3D&Expires=1608180092', null, '0', '1', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('190', 'Python游戏编程入门教程', ' 零基础学游戏设计 游戏开发实战', '53', '喜欢的人运费自理', '1576561163660', '1576561163660', 'http://jianxilin.cn-bj.ufileos.com/2f254c3f-726d-4601-8624-9326206c014d.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=Zr%2FjSjls7hAVfBPRr%2B2ONlPg9E0%3D&Expires=1608180093', null, '0', '1', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('191', '实战Python网络爬虫 ', '分布式爬虫 Scrapy框架网络数据采集抓取处理分析书籍教程', '12', '没有', '1576561235360', '1576561235360', 'http://jianxilin.cn-bj.ufileos.com/2be09f7b-8792-4166-8469-f3309ebe88c2.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=qsVZicHnYYMyqYiwi8TG7F%2B4B20%3D&Expires=1608180093', null, '0', '1', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('192', '紫薇斗数全书', '九成新：要求保存较好', '10', '看的懂得人再送', '1576561355880', '1576561355880', 'http://jianxilin.cn-bj.ufileos.com/cbe99fa3-9b49-46ea-9d9f-14d4b11b1370.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=B6OFj%2Br5yFw%2F7frud0P8Yz1bst8%3D&Expires=1608180093', null, '0', '1', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('193', '仿真使用Arena软件', '仿真使用arena软件（原书第3版）（附cd-rom光盘一张）', '30', '聊的来得交换', '1576561443105', '1576561443105', 'http://jianxilin.cn-bj.ufileos.com/ed3f95eb-8ef7-41b4-8bd6-4a04f29981f8.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=B3EtIlBhomn%2BPq31%2BtG74hU5H%2Fw%3D&Expires=1608180093', null, '0', '1', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('194', '认知风格与学习策略', '认知风格与学习策略——创智学习基础教育改革丛书，九成新', '16', '没有', '1576561519282', '1576561519282', 'http://jianxilin.cn-bj.ufileos.com/c9f5ee08-5627-43aa-aa37-03ee851bebba.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=iAnbDcSUh1dzZrrU7gxzOSUSUXU%3D&Expires=1608180093', null, '0', '1', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('195', '毛泽东选集 第五卷', '书籍保留得很完整', '32', '运费自出，马上寄货', '1576561620022', '1576561620022', 'http://jianxilin.cn-bj.ufileos.com/50091701-90af-4c20-8e76-e2dd1fadf3b3.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=bAzrcE02WwGdM4%2BxA2H8%2BIg6tcY%3D&Expires=1608180093', null, '0', '1', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('196', '习近平谈治国理政 第一二卷 习近平七年知青岁月 党政', '书籍八九成新左右 为二手书 旧书 难免会有笔记 或者小脏 划痕 折痕外观破损之类的哦 介意的勿拍', '18', '没有', '1576561708059', '1576637291858', 'http://jianxilin.cn-bj.ufileos.com/91418312-bbac-4839-b6b3-8899a45917f1.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=BFYF4zfwfFID03kGifPKLPWMDO4%3D&Expires=1608173289', null, '0', '1', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('197', '80-90年代生活用品 老菜盘', '两个，有磕碰，尺寸14cm左右', '16', '只限金钱交易', '1576561896888', '1576637312601', 'http://jianxilin.cn-bj.ufileos.com/00c624f4-5637-405a-982b-6961380b22b0.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=nZ1allrQDuCyg9%2BfoBZkv3e9Cbg%3D&Expires=1608173311', null, '0', '2', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('202', '制折叠晾衣挂 70-80年代生活日用品旧衣架', '70-80年代铁制晾衣挂，尺寸：约 50 厘米。旧，有灰垢、变形、污渍等问题', '8', '旧物品交换', '1576637572038', '1576637572038', 'http://jianxilin.cn-bj.ufileos.com/55d69dd8-ce0f-4130-a52a-5832cae78504.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=nB5f7%2BuunyvhiqzEnOvva9UHHlA%3D&Expires=1608173570', null, '0', '2', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('203', '60，70年代老生活 日用品 影视道具 老漏勺 老笊篱 金鸡牌 熟铝', '六七十年代的老漏勺，全铝制品，包老.老金鸡牌的，不是现代仿品，中号的。完美主义者请谨慎购买', '20.5', '没有', '1576637638486', '1576637638486', 'http://jianxilin.cn-bj.ufileos.com/56bcebc3-efa9-4941-bcd8-bbff23933427.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=Fb1dZ17VwHDLNlCyR5Sm4BV1mHg%3D&Expires=1608173637', null, '0', '2', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('204', '民俗老物件老水瓢老葫芦舀子老生活用品民间舀水器取水器', '老水瓢', '66.66', '只限金钱交易', '1576637707224', '1576637707224', 'http://jianxilin.cn-bj.ufileos.com/e0ca6ffa-1950-4f27-b69d-d4ee1b6fec0b.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=z1Cp7sPOscNuFkmyYjuFAtF8LI0%3D&Expires=1608173706', null, '0', '2', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('205', '70年代老被面老床单老生活用品老布料文革老花布被面', '纯棉斜纹 尺寸180*140厘米左右【产品特点】凤凰牡丹图案，天坛再现乡土风味，民族国粹。', '45.5', '没有', '1576637784980', '1576637784980', 'http://jianxilin.cn-bj.ufileos.com/3e22a183-eac8-4fbe-84d4-73ff74a4025a.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=08a7qMVcTw3qVLyXTioOaQCb%2FrM%3D&Expires=1608173754', null, '0', '2', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('206', '老物件生活用品文革题材茶壶老物件', '品相: 十品', '50', '水壶交换', '1576637849259', '1576637849259', 'http://jianxilin.cn-bj.ufileos.com/d0f24578-71e0-46c7-a166-92cda9e5c06f.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=wkg%2FEFhnTIXvxCWHEgcs8w6MxqM%3D&Expires=1608173848', null, '0', '2', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('207', '古兵器生活用品汉烟袋锅', '沉重厚重粗大防身好用储蓄文雅的冷兵器', '720', '没有', '1576637964349', '1576638050995', 'http://jianxilin.cn-bj.ufileos.com/f5ec5b16-8592-4249-a394-dc2da0b1e607.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=Z6%2F7ol2gyOpb0MjiJ7up03rQ1cU%3D&Expires=1608173937', null, '0', '2', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('208', '竹纹银柠檬榨汁器', '重量：47.35克 . 尺寸约：62.8*78.1mm', '580', '银器交换', '1576638034572', '1576638034572', 'http://jianxilin.cn-bj.ufileos.com/d87cab49-71be-4c55-b1d1-5cdd146fb7bf.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=ujeOFNn5rRdZHFnWyzd67bFQo5o%3D&Expires=1608174033', null, '0', '2', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('209', '老饭盒 老铝制饭盒', '五六十年代的老饭盒，全铝制品，包老，大连产，金杯牌。不是现代仿品。表面有些磨痕，凹痕比较严重了，非常厚实，可以正常使用', '20', '交流满意的可以换', '1576638140237', '1576638140237', 'http://jianxilin.cn-bj.ufileos.com/f99cf6d0-6eeb-43dc-9f34-94284a0f94ea.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=rgiXMp%2BIeOKU4RGd1pGxHYW6pPI%3D&Expires=1608174139', null, '0', '2', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('210', '金属老式蚊帐钩子', '蚊帐或者窗帘可用', '2.5', '小件物品交换', '1576638190958', '1576638190958', 'http://jianxilin.cn-bj.ufileos.com/c9e585eb-5a90-4249-8668-9a95da01be07.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=ukjw4JhaqAA%2FsFSldeAPk4DZk1I%3D&Expires=1608174190', null, '0', '2', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('211', '手工实木原木生活家居', '家居定做家具把大自然搬进家里定做家居', '20000', '金钱交易', '1576638269107', '1576638269107', 'http://jianxilin.cn-bj.ufileos.com/2d7edddd-27a5-447c-9a3a-7204336a8237.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=vqFVwt7OyWq06poFaYwbSWDFI3Q%3D&Expires=1608174268', null, '0', '2', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('212', '80年代老搪瓷盘', '双喜鸳鸯荷花图案。包老，盘面有三处比较轻微的磕碰，有些掉漆，表面有些正常使用后留下的划痕。有些磨损的痕迹。整体比较新的', '25', '没有', '1576638331206', '1576638331206', 'http://jianxilin.cn-bj.ufileos.com/ca7e8a5d-376a-419c-833d-203c84c1a923.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=9DdNX5tgFZGuD2HOLDhLsNP4PuE%3D&Expires=1608174329', null, '0', '2', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('213', '小夹子', '二手夹子 影视道具 电影道具 装饰陈设', '1', '不包邮，喜欢就交易', '1576638415432', '1576638415432', 'http://jianxilin.cn-bj.ufileos.com/79da4870-0f52-4480-984f-d2f590972a0e.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=qQ1x5J26JA3z%2BTX4PCL1UhouxWA%3D&Expires=1608174414', null, '0', '2', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('214', '老温度计', '东风牌的，包老，很有时代特点。温度计上的装饰画是羽毛制作的，温度计可以正常使用。由于年代久远，表面磨损了，流苏也有些脏', '20', '只限价格交易', '1576638497328', '1576638497328', 'http://jianxilin.cn-bj.ufileos.com/bf6682e7-6466-4615-82b7-4de25a427eb1.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=DWoDJq5SfJQn5%2FqO37QybsCH%2BGI%3D&Expires=1608174495', null, '0', '2', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('215', '小灵通 ', '手机(摩托罗拉移动电话)', '230', '不讲价，不议价', '1576638564010', '1576638564010', 'http://jianxilin.cn-bj.ufileos.com/149453c1-c09d-4ad2-8345-cb20e1d02133.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=qAnc3C41UtrYG49C23ztZNGc%2BmI%3D&Expires=1608174563', null, '0', '2', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg');
INSERT INTO `goods` VALUES ('216', 'VR相机裸眼3D折叠全景相机 5.7K防抖智能摄像', '产品名称：Insta360 EVO品牌: Insta360型号: evo储存介质: miniSD卡像素: 1800万传感器尺寸: 1/2.3英寸电池类型: 锂电池有效像素: 1600-2000万显示屏尺寸: 无显示屏', '2900', '现金', '1576640703193', '1576640703193', 'http://jianxilin.cn-bj.ufileos.com/639b9cc7-2566-41e0-9fb3-7c57499c83ea.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=lvYFfSycKj%2BiafO3z6bMk7gy4oQ%3D&Expires=1608176700', null, '0', '7', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('217', '恺利时挂钟2019新款客厅夜光LED数码万年历壁挂日历电子时钟表', '品牌: 恺利时外壳材质: 边框：铝合金 后壳：PVC风格: 简约形状: 长方形', '318', '现金', '1576640842370', '1576640842370', 'http://jianxilin.cn-bj.ufileos.com/f1566ab9-39bc-40cb-8199-541bef06f4a8.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=3CoC9TEoQva3QyT%2BE3OThhpZ7JM%3D&Expires=1608176834', null, '0', '7', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('218', '音乐音频耳放数码播放器', '产品名称：数码播放器', '799', '现金', '1576641100640', '1576641100640', 'http://jianxilin.cn-bj.ufileos.com/d55cbb7d-844c-4c5b-9d97-233c7adb505d.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=PMC2hT53%2Br6wUObKR7T8DlMZkYs%3D&Expires=1608177096', null, '0', '7', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('219', '迷你录音器机便携式手坏数码智能', '产品名称：数码播放器 存储类型: 闪存内存容量: 4GB 8GB 16GB 32GB', '299', '现金', '1576641226639', '1576641226639', 'http://jianxilin.cn-bj.ufileos.com/67845ff6-15a8-4a85-a72d-bddad6e49cd2.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=5pyHfOnLy%2FqG6zB75TTyK3BeO3I%3D&Expires=1608177224', null, '0', '7', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('220', '颈椎按摩器小米护颈仪办公室颈部按摩仪神器', '品牌: USK 按摩头个数: 4个', '419', '现金', '1576641377863', '1576641377863', 'http://jianxilin.cn-bj.ufileos.com/0d12603a-8af0-4794-bb8b-32f68c590700.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=gcbICU43WjQGtuaCdVkwQD7%2BD3A%3D&Expires=1608177376', null, '0', '7', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('221', 'Anker 安克Nano18W苹果PD快充iPhone安卓iPad便携迷你充电器头', '产品名称：充电器3C规格型号：型A2716 ：输入：100-240V～ 0.6A 50-60Hz；输出：5VDC 3A /9VDC...品牌: ANKER', '189', '现金', '1576641484561', '1576641484561', 'http://jianxilin.cn-bj.ufileos.com/06717696-f6a5-4eb3-9130-94f8c1aeabd3.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=qHh5VK3E9oRpsq3afuiWTXFyv1g%3D&Expires=1608177483', null, '0', '7', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('222', '超长待机大容量数码录笔音语音转文字', '型号: B300存储类型: 闪存内存容量: 8GB 16GB 32GB 64GB 128GB', '308', '现金', '1576641669880', '1576641669880', 'http://jianxilin.cn-bj.ufileos.com/002383ef-8bb6-4b9e-9f1f-7a9f88239555.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=KCkYdno2GUvjnB7nJ%2FILocvXFcc%3D&Expires=1608177663', null, '0', '8', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('223', '创意复古典文艺红木书签中国风礼物黑檀木质金属书签', '品牌: 子曰型号: 10321材质: 木', '19', '现金', '1576641807692', '1576641807692', 'http://jianxilin.cn-bj.ufileos.com/b9ff0741-2292-4450-83a3-c2e14c5b4ded.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=0zj6FA3A5QGGXRBH4xQtc8GnSrw%3D&Expires=1608177806', null, '0', '8', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('224', '国画装裱画框实木宣纸卡纸相框挂墙简约书法字画裱画框', '品牌: 岱岳材质: 实木风格: 中式', '198', '现金', '1576642030602', '1576642030602', 'http://jianxilin.cn-bj.ufileos.com/99dcd87c-e692-4a2d-998f-c8c7cc4758a1.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=GJqLv7x9R3tU5DqgbZ34Iaas3Yg%3D&Expires=1608178028', null, '0', '8', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('225', '笔记本电脑多功能魔力清洁泥键盘除尘软胶汽车数码', '清洁软胶', '12', '现金', '1576642234599', '1576642234599', 'http://jianxilin.cn-bj.ufileos.com/091b7c1c-99d9-4088-a65a-6d4e5aafb6cb.png?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=aiyx69BUkVcKjNjXqqcTDOgvpfA%3D&Expires=1608178233', null, '0', '8', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE');
INSERT INTO `goods` VALUES ('226', 'Ye！土豆', '土豆烤鸡比萨味，休闲必备食品', '3', '现金', '1576673691929', '1576673691929', 'https://i.loli.net/2019/12/01/ceqX8UaxnidDurT.png', null, '0', '5', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('227', '雪花煎卷', '米老头食品，营养儿童早餐', '6', '现金', '1576679703945', '1576679703945', 'https://i.loli.net/2019/12/01/ceqX8UaxnidDurT.png', null, '0', '5', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('228', '碧根果', '80后独立小包装碧根果，干过坚果炒货', '1', '现金', '1576679815950', '1576679815950', 'http://jianxilin.cn-bj.ufileos.com/ebf0f153-54cb-4709-9e10-08bd2d08f5b1.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=LTDrY%2BaGLV9cZmJZECujyT%2BObpE%3D&Expires=1608215814', null, '0', '5', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('229', '酸角糕', '云南特产猫哆哩', '10', '现金', '1576679909814', '1576679909814', 'http://jianxilin.cn-bj.ufileos.com/c705c1e0-2826-49df-81ff-f7c5999f5202.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=fiXDgBnD9jdJp8bG9Bu%2FsrY0X%2Fk%3D&Expires=1608215908', null, '0', '5', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('230', '奶糖', '金丝猴奶糖原味，糖果喜糖甜食', '22', '现金', '1576680027126', '1576680027126', 'http://jianxilin.cn-bj.ufileos.com/5bf8c2ee-66d6-4716-9397-bc62579de801.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=KSKGaOnh1GACV56X%2BNkOITzMjyI%3D&Expires=1608216025', null, '0', '5', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('231', '喜之郎果冻', '散装水果味，无果肉，多味混称', '18', '现金', '1576680127920', '1576680127920', 'http://jianxilin.cn-bj.ufileos.com/52d2190a-2d70-47bf-8eea-a5bc6aa5b7df.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=CqswudsMkgHZOYye0V6yN68mf3s%3D&Expires=1608216126', null, '0', '5', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('232', '津田鸡味圈', '经典怀旧零食，好吃而不肥腻', '33', '现金', '1576680256559', '1576680256559', 'http://jianxilin.cn-bj.ufileos.com/e5ea0702-cb9b-412e-9913-c65d3e5f75d8.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=dV4Kv6L%2FpV1ScOOENWrlWbptpF4%3D&Expires=1608216253', null, '0', '5', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('233', '润成鸡蛋干', '四川成都特产小吃，独立小包装', '31', '现金', '1576680407050', '1576680407050', 'http://jianxilin.cn-bj.ufileos.com/f3d567dc-9ae2-4306-a3d3-411bdd17550a.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=dWqTLK78q394Mb9yZaknwXOQ1uw%3D&Expires=1608216398', null, '0', '5', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('234', '奥利奥夹心饼干', '产品包装：450克家庭装，150克单卷装', '6', '现金', '1576680627706', '1576680627706', 'http://jianxilin.cn-bj.ufileos.com/36138dee-4639-490e-bea5-f2b79e7665b6.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=%2BfXfkDJP%2B%2BWsM26II9mZA5szM4Q%3D&Expires=1608216624', null, '0', '5', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('235', '米多奇雪饼', '香米饼，易脆好吃', '25', '现金', '1576680758397', '1576680758397', 'http://jianxilin.cn-bj.ufileos.com/478ef3f9-54e1-43e7-83ba-17538c5e43e5.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=OuDd82dbwbw4ue2tx0VwDL2Vbt8%3D&Expires=1608216757', null, '0', '5', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('236', '薯片', '可比克薯片60g番茄烧烤原味香辣味', '5', '现金', '1576680855018', '1576680855018', 'http://jianxilin.cn-bj.ufileos.com/937982e0-7460-4642-970c-24f886fbf98a.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=XPsZeFQYFJpnkJ1hP97JdB66t7E%3D&Expires=1608216851', null, '0', '5', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('237', '仙贝饼干', '旺仔旺旺仙贝52g，米饼膨化食品', '12', '现金', '1576681023438', '1576681023438', 'http://jianxilin.cn-bj.ufileos.com/4c6b51ce-e025-4edb-881a-b3f127bf38da.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=IQ%2B3FeQmZ6%2Bp%2BEGPjNegUJCU3hM%3D&Expires=1608217021', null, '0', '5', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('238', '辣条', '卫龙，休闲必备物品，116g 1包装', '2', '现金', '1576681162395', '1576681162395', 'http://jianxilin.cn-bj.ufileos.com/81eb58e7-ae59-43d7-b1a9-b2eb34a27a26.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=eiKWptSWniYm9HGezREMHpqtSwg%3D&Expires=1608217160', null, '0', '5', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('239', '香逗卷', '江南一绝祖明山椒味香逗卷100g豆腐卷豆制品', '8', '现金', '1576682737536', '1576682737536', 'http://jianxilin.cn-bj.ufileos.com/8b278442-32da-4843-9584-53095cc305a2.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=K1qoC9Cf20rn8qoiX3DvFqSki%2FQ%3D&Expires=1608218734', null, '0', '5', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('240', '麻辣鱼味卷', '倍儿香，麻辣鱼味卷不是辣条油炸，普通型', '2', '现金', '1576683031473', '1576683031473', 'http://jianxilin.cn-bj.ufileos.com/12eacf5b-4c7b-43fb-95e2-17c2fbf2e2d9.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=63G%2FXUg2q66MYF4hayNwAd3oHdg%3D&Expires=1608219029', null, '0', '5', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('241', '乐事薯片', '清新芥香味，好吃不油腻', '4', '现金', '1576684361248', '1576684361248', 'http://jianxilin.cn-bj.ufileos.com/e6cd3a05-cede-41d5-9277-bbb5019ee236.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=Wc4s%2Fzv9jtMeCvlhij%2Brq5fKKPc%3D&Expires=1608220359', null, '0', '5', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('242', '焦糖瓜子', '洽洽葵花籽焦糖瓜子108克，山核桃味', '5', '现金', '1576684479423', '1576684479423', 'http://jianxilin.cn-bj.ufileos.com/2615ed26-4e1b-44ba-883e-dc6244d4d5cd.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=42y2nEGeCaUoLi8uc6gYX8c3Ot8%3D&Expires=1608220477', null, '0', '5', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('243', '厨具收纳小工具', '卓品佳创意居用品', '88', '现金', '1576684693546', '1576684693546', 'http://jianxilin.cn-bj.ufileos.com/9ea957f9-a5c4-4d5e-8fc4-4a4f3c1c183b.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=ZJEV%2BDDpzrZELdS2snO42GE7g5Q%3D&Expires=1608220692', null, '0', '6', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('244', '肥皂香皂盒', '新奇特创意家居居家生活实用小工具用品', '12', '无', '1576684817370', '1576684817370', 'http://jianxilin.cn-bj.ufileos.com/257ad26a-3fc0-4165-9835-784239c951dd.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=wmBE8tdRwld9lCDbvu2msnGM4zk%3D&Expires=1608220815', null, '0', '6', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('245', '沐浴球', '易操作，并且耐用', '8', '现金', '1576684908957', '1576684908957', 'http://jianxilin.cn-bj.ufileos.com/f31ebb12-44a2-4b41-9517-b9a0da3a791c.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=%2FFrXamU1B7meDqRSqiCLRQ76JhQ%3D&Expires=1608220907', null, '0', '6', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('246', '密封夹', '懒人实用绑线器密封夹', '2', '无', '1576684999879', '1576684999879', 'http://jianxilin.cn-bj.ufileos.com/43d0f564-574a-459c-b741-73e1b144b55e.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=mQKmBY6EY6MmfdKXK0H8iPjbb0I%3D&Expires=1608220998', null, '0', '6', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('247', '手机架', '手机支架创意实用，义乌家居百货', '3', '现金', '1576685088887', '1576685088887', 'http://jianxilin.cn-bj.ufileos.com/455a1baa-0e54-4c55-a10c-2a12789252ad.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=FEvPkpp0InaPw1BR4%2FMdnineAdo%3D&Expires=1608221087', null, '0', '6', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('248', '小凳子', '新款简约竹木圆形小凳子，矮脚儿童实木凳', '16', '现金', '1576685193709', '1576685193709', 'http://jianxilin.cn-bj.ufileos.com/5819118f-fba2-48ff-a75c-323d5863a366.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=IyI%2BwdfESsp7%2BGIDEF4QOcZ0OHI%3D&Expires=1608221192', null, '0', '6', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('249', '雨伞', '卡通手绘', '25', '现金', '1576685286384', '1576685286384', 'http://jianxilin.cn-bj.ufileos.com/7b7cee57-b706-45ca-882e-e495053efb20.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=0csE6VJanBPiLLu0NDEyjC3Q%2BrQ%3D&Expires=1608221284', null, '0', '6', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('250', '喷壶', '蒙氏教具蒙生蒙台梭利，迷你塑料喷壶，清洁玻璃喷壶', '7', '现金', '1576685410638', '1576685410638', 'http://jianxilin.cn-bj.ufileos.com/1f841405-022b-4d97-b330-7972e66b7daa.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=7oC5TFm5YJorM%2BpMsJipTdnvJo4%3D&Expires=1608221408', null, '0', '6', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('251', '收纳袋', '秋季原创设计手工帆布精美笔袋化妆笔收纳袋', '7', '无', '1576685510525', '1576685510525', 'http://jianxilin.cn-bj.ufileos.com/3a55d9ae-cb89-4a9a-8c63-c4271f7d7780.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=PpI9eMBr8c3QINBBfi22ooDcX9k%3D&Expires=1608221509', null, '0', '6', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('252', '笔袋', '卡通简约笔袋动物头像牛津布笔袋  大容量', '12', '同等价格都可以', '1576685609200', '1576685609200', 'http://jianxilin.cn-bj.ufileos.com/84be5929-3ff7-4465-9427-52fd036e1323.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=EIW1q1mUNcZvGjEexv4zqy7lMgk%3D&Expires=1608221607', null, '0', '6', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('253', '洗脸盆', '欧式家用塑料洗脸面盘，大号pp材料学生用盘', '6', '无', '1576685719818', '1576685719818', 'http://jianxilin.cn-bj.ufileos.com/4a5bd46e-176a-4295-a607-f86058780fa6.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=fM1TgZtrm0a10RhDzhyRT5OCqS0%3D&Expires=1608221718', null, '0', '6', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('254', '摆件', '精致日常用品店1212万年历日装饰摆件', '6', '现金', '1576685810308', '1576685810308', 'http://jianxilin.cn-bj.ufileos.com/ff924739-6c35-45ba-8fa6-210df39b5389.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=4JlzxALoNWiw2IXHtLmrOAUFvVs%3D&Expires=1608221808', null, '0', '6', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('255', '绘图工具套装袋', '专业建筑机械制图包大学生', '33', '现金', '1576685924706', '1576685924706', 'http://jianxilin.cn-bj.ufileos.com/81e183d6-0633-4177-baa4-194511f48cec.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=My5ybzwDg9infmcTNUEJi%2B5LbgM%3D&Expires=1608221923', null, '0', '6', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('256', '眼睛盒', '干物妹小埋眼睛盒二次元卡通动漫周边眼睛盒', '12', '同等价格或差点都行', '1576686146106', '1576686146106', 'http://jianxilin.cn-bj.ufileos.com/c1f61b8b-1f5f-4c08-8bc8-897319fe65a7.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=dbUcTfb439Kxq82lAKMiUJEXATU%3D&Expires=1608222144', null, '0', '6', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('257', '洗漱杯', '情侣日常洗漱杯，印卡通或文字', '18', '现金', '1576686287777', '1576686287777', 'http://jianxilin.cn-bj.ufileos.com/42c8632e-a216-482b-bafa-7ca814560f3b.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=9JNkxncNQW%2BOEuTmXCop%2B4%2BnVeA%3D&Expires=1608222286', null, '0', '6', 'onYXl1bqr-IfVlUISDKY5iN_noxc');
INSERT INTO `goods` VALUES ('258', '吹风机', '飞科吹风机大功率电吹风，负离子冷热风学生电吹风筒', '66', '现金', '1576686438769', '1576686438769', 'http://jianxilin.cn-bj.ufileos.com/0343c8a5-29da-4a8b-9fa4-57bdde32a93a.jpg?UCloudPublicKey=TOKEN_152b173f-2e65-4002-9331-20faf78469d2&Signature=YMaxp%2FEpojBWLPE1R46Kw6NARWU%3D&Expires=1608222437', null, '0', '6', 'onYXl1bqr-IfVlUISDKY5iN_noxc');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='物品标签';

-- ----------------------------
-- Records of g_labels
-- ----------------------------
INSERT INTO `g_labels` VALUES ('1', '3', '1');
INSERT INTO `g_labels` VALUES ('2', '144', '1');
INSERT INTO `g_labels` VALUES ('3', '186', '1');
INSERT INTO `g_labels` VALUES ('4', '157', '1');
INSERT INTO `g_labels` VALUES ('5', '241', '1');
INSERT INTO `g_labels` VALUES ('6', '4', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '。x', 'onYXl1eV5atvcTGk-Mj660Q3QsKA', '02c24f84-381c-4935-a823-60d853e809a9', 'http://thirdwx.qlogo.cn/mmopen/vi_32/ygUe1BziaHLxHrUCuWdOFuTVUUo9WBgnLBNicTlueMWNygtXhtosWKMKl9FLe3zurA2GMK4zzTCIoZytS0vibTuKA/132', '1571497558148', '1577000721111', '广州', '广东', '1', '中国');
INSERT INTO `user` VALUES ('2', '测试账号', 'a', 'a', 'http://thirdwx.qlogo.cn/mmopen/vi_32/ygUe1BziaHLxHrUCuWdOFuTVUUo9WBgnLBNicTlueMWNygtXhtosWKMKl9FLe3zurA2GMK4zzTCIoZytS0vibTuKA/132', '1', '1', '无', '无', '0', '无');
INSERT INTO `user` VALUES ('3', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2');
INSERT INTO `user` VALUES ('4', 'await', 'onYXl1ZUiFgcT6bC4kT6KN0dvVEE', 'ccfd0f8c-a5d9-46e3-9070-b69bb673455c', 'http://thirdwx.qlogo.cn/mmopen/vi_32/V4OoicJJze5pd2Qx3lYiaeSdy6adjtogYOl6UlEBK9fMibicE5YfpekxaAP2ffsx2CoMVpObv6LX6DCP9wpcqlWjqg/132', '1575271674356', '1576640418370', '', '', '1', '比利时');
INSERT INTO `user` VALUES ('5', '墨语言', 'onYXl1SoLZNNDnNJ14UcF3ilkwPA', '1d542e08-4f73-4af0-9d05-56b408042912', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKICicDV8ribbQz0IDTXibUOAs4EotZwe7icPn743zVXXELLUsCdPtVoH3q5OUa6bicb9k8lyogF3zA88g/132', '1575367124660', '1576561799497', '惠州', '广东', '1', '中国');
INSERT INTO `user` VALUES ('6', '居居猪猪', 'onYXl1S8Ef19t6i7IzSGCzIHP2pg', 'd4921d7e-c4e7-4186-8ce8-f81b8aaf8442', 'http://thirdwx.qlogo.cn/mmopen/vi_32/akOpIUicrGTfwpuAgYd7XzDGLvKwibm5X7Go785q1AKryX0DoXhGfhkDViaGUic0iaksc7hM5voVqacVFz3hcnMCPZw/132', '1575537335311', '1576637153771', '中山', '广东', '2', '中国');
INSERT INTO `user` VALUES ('7', 'ぃ 啰嗦爹 こ', 'onYXl1bqr-IfVlUISDKY5iN_noxc', 'b6580410-09af-4072-8916-675cd9aa2e6c', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIiabyX3QicibiaduhCHU2fE5KActobKnnhpicgJzL0A76CoHt5YdF4DhcibibbI8QCs4owwqq9ricbtJtQ9Q/132', '1575876409511', '1576673244402', '广州', '广东', '1', '中国');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='用户的额外信息';

-- ----------------------------
-- Records of user_other_info
-- ----------------------------
INSERT INTO `user_other_info` VALUES ('2', '4', 'wxid_sfawf15151fwf', '1999548484', '415145841');
INSERT INTO `user_other_info` VALUES ('3', '2', 'asfasfwfwf', '', '151521521');
INSERT INTO `user_other_info` VALUES ('4', '3', 'pokokomo', '1016630136', '1536131');
INSERT INTO `user_other_info` VALUES ('5', '5', '少时诵诗书', '11386009', '3211231234567');
INSERT INTO `user_other_info` VALUES ('6', '1', 'wxid_ciunnikik', '15707680000', '548968151515');
INSERT INTO `user_other_info` VALUES ('7', '7', '少时诵诗书', '11386009', '3211231234567');
INSERT INTO `user_other_info` VALUES ('8', '6', 'ljh5278', '182008912', '1164421105');
