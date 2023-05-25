/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50146
Source Host           : localhost:3306
Source Database       : second

Target Server Type    : MYSQL
Target Server Version : 50146
File Encoding         : 65001

Date: 2019-03-04 19:16:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `qq_message`
-- ----------------------------
DROP TABLE IF EXISTS `qq_message`;
CREATE TABLE `qq_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `qid` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `zan` int(11) DEFAULT '0',
  `note` varchar(500) DEFAULT NULL,
  `ndate` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `fusername` varchar(50) DEFAULT NULL,
  `attach` varchar(200) DEFAULT NULL,
  `attachname` varchar(200) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qq_message
-- ----------------------------
INSERT INTO `qq_message` VALUES ('16', '97', '97', null, '1', null, '不错', '2019-03-03 22:47:46', 'bozai', 'bozai', null, null, 'photo1.jpg');
INSERT INTO `qq_message` VALUES ('17', '100', '97', null, '1', null, '在吗,这里可以发消息聊天', '2019-03-03 09:05:38', 'wangbo', 'bozai', null, null, 'photo4.jpg');
INSERT INTO `qq_message` VALUES ('22', '124', '100', null, '1', null, '在？', '2019-03-04 18:43:14', 'yangmi', 'wangbo', null, null, '8a52a523-060d-4a1f-a59c-490cba4e85a7.jpg');
INSERT INTO `qq_message` VALUES ('23', '125', '124', null, '1', null, '小幂在吗', '2019-03-04 19:07:40', 'linzhiling', 'yangmi', null, null, '3f987448-b54e-4ecf-a21f-9c36d63cf123.jpg');

-- ----------------------------
-- Table structure for `qq_yzmessage`
-- ----------------------------
DROP TABLE IF EXISTS `qq_yzmessage`;
CREATE TABLE `qq_yzmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ndate` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `fuser` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qq_yzmessage
-- ----------------------------
INSERT INTO `qq_yzmessage` VALUES ('1', '2019-03-03 16:09:01', '已同意', '97', '100', 'wangbo', 'photo4.jpg');
INSERT INTO `qq_yzmessage` VALUES ('2', '2019-03-03 16:43:10', '已同意', '97', '101', 'bozai5', 'photo3.jpg');
INSERT INTO `qq_yzmessage` VALUES ('3', '2019-03-03 16:48:30', '待同意', '98', '97', 'bozai', 'photo1.jpg');

-- ----------------------------
-- Table structure for `wct_bill`
-- ----------------------------
DROP TABLE IF EXISTS `wct_bill`;
CREATE TABLE `wct_bill` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gids` varchar(100) DEFAULT NULL,
  `pirce` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `shop` varchar(100) DEFAULT NULL,
  `bill` varchar(2000) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `ndate` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `way` varchar(50) DEFAULT NULL,
  `gnames` varchar(500) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `state` int(1) DEFAULT NULL,
  `statecn` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `cuidan` varchar(255) DEFAULT NULL,
  `fnote` varchar(500) DEFAULT NULL,
  `paytype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_bill
-- ----------------------------
INSERT INTO `wct_bill` VALUES ('22', '40', null, 'yangmi', '124', 'yangmi', null, null, '2019-03-04', '29', '', '化妆品收纳盒', '124', null, '未付款', '13111111111', '上海市闸北区西藏北路', '', null, null, null, null);
INSERT INTO `wct_bill` VALUES ('23', '41', null, 'yangmi', '124', 'wangbo', null, null, '2019-03-04', '98', null, '雅诗兰黛粉底', '100', null, '已付款', '13111111111', '上海市闸北区西藏北路', '11', null, null, null, null);
INSERT INTO `wct_bill` VALUES ('24', '41', null, 'yangmi', '124', 'wangbo', null, null, '2019-03-04', '98', null, '雅诗兰黛粉底', '100', null, '未付款', '13111111111', '上海市闸北区西藏北路', '11', null, null, null, null);
INSERT INTO `wct_bill` VALUES ('25', '36', null, 'linzhiling', '125', 'yangmi', null, null, '2019-03-04', '386', null, '全新雅诗兰黛眼霜', '124', null, '已发货', '13666666666', '台湾', '支持一下', null, null, null, null);

-- ----------------------------
-- Table structure for `wct_dingzuo`
-- ----------------------------
DROP TABLE IF EXISTS `wct_dingzuo`;
CREATE TABLE `wct_dingzuo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `openid` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `renshu` varchar(20) DEFAULT NULL,
  `xingming` varchar(200) DEFAULT NULL,
  `shouji` varchar(200) DEFAULT NULL,
  `shijian` varchar(200) DEFAULT NULL,
  `todate` varchar(200) DEFAULT NULL,
  `beizhu` varchar(600) DEFAULT NULL,
  `shopid` varchar(200) DEFAULT NULL,
  `shopname` varchar(200) DEFAULT NULL,
  `ndate` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_dingzuo
-- ----------------------------

-- ----------------------------
-- Table structure for `wct_good`
-- ----------------------------
DROP TABLE IF EXISTS `wct_good`;
CREATE TABLE `wct_good` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gname` varchar(100) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `jifen` varchar(10) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `count` varchar(10) DEFAULT '0',
  `typeid` varchar(10) DEFAULT NULL,
  `xiaoliang` int(10) DEFAULT '0',
  `ownid` varchar(10) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `shop` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `ntime` bigint(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `stype` varchar(50) DEFAULT NULL,
  `statecn` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_good
-- ----------------------------
INSERT INTO `wct_good` VALUES ('36', '全新雅诗兰黛眼霜', '386', null, '自用全新雅诗兰黛眼霜（尚未开封）', null, '60f035ac-dacd-4fb3-b841-8c439786bb62.jpg', null, null, null, null, '124', 'yangmi', null, '124', 'yangmi', '1551692646731', '9', null, '已交易');
INSERT INTO `wct_good` VALUES ('37', '全新雅诗兰黛粉底液', '298', null, '自用全新雅诗兰黛粉底液（尚未开封）', null, '1d0454fe-7cac-4a83-9707-869ed8524ee9.jpg', null, '28', null, null, '124', 'yangmi', null, '124', 'yangmi', '1551692694858', '9', null, '待交易');
INSERT INTO `wct_good` VALUES ('38', '自用九成新电竞椅', '198', null, '自用九成新电竞椅', null, '22c43197-07b8-4e6c-9c6e-834c9efbde0d.jpg', null, '25', null, null, '124', 'yangmi', null, '124', 'yangmi', '1551692753081', '9', null, '待交易');
INSERT INTO `wct_good` VALUES ('39', '自用恋爱秘籍', '38', null, '自用恋爱秘籍，一书得手，撩妹撩小哥哥手到擒来。', null, '7d119ebb-3671-4beb-a334-38d60cea0149.jpg', null, '27', null, null, '124', 'yangmi', null, '124', 'yangmi', '1551692830215', '9', null, '待交易');
INSERT INTO `wct_good` VALUES ('40', '化妆品收纳盒', '29', null, '自用九成新化妆品收纳盒', null, '20fbaae9-4bee-492f-8eb7-3bfc52076016.jpg', null, '28', null, null, '124', 'yangmi', null, '124', 'yangmi', '1551692884642', '9', null, '待交易');
INSERT INTO `wct_good` VALUES ('41', '雅诗兰黛粉底', '98', null, '自用雅诗兰黛粉底（未拆封）', null, 'a0ca1304-210f-43c8-b3c0-4546c1508dbf.jpg', null, '28', null, null, '100', 'wangbo', null, '100', 'wangbo', '1551696338842', '9', null, '已交易');
INSERT INTO `wct_good` VALUES ('43', '测试商品', '998', null, '测试商品介绍一番', null, 'f5945112-f611-4025-bdab-e92da442f8a8.jpg', null, '29', null, null, '125', 'linzhiling', null, '125', 'linzhiling', '1551697516132', '9', null, '待交易');

-- ----------------------------
-- Table structure for `wct_notice`
-- ----------------------------
DROP TABLE IF EXISTS `wct_notice`;
CREATE TABLE `wct_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `ndate` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_notice
-- ----------------------------
INSERT INTO `wct_notice` VALUES ('2', '这里是通知标题', '管理员可以发布一些通知给用户看', '2019-03-03 21:22:46', null, null);
INSERT INTO `wct_notice` VALUES ('5', '测试通知', '这里是通知内容', '2019-03-03 18:59:27', null, null);
INSERT INTO `wct_notice` VALUES ('6', '发布一则消息招收代理有想法的联系我', '发布一则消息招收代理有想法的联系我Tel:13777777777', '2019-03-04 19:00:01', null, null);

-- ----------------------------
-- Table structure for `wct_posts`
-- ----------------------------
DROP TABLE IF EXISTS `wct_posts`;
CREATE TABLE `wct_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `ndate` varchar(50) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_posts
-- ----------------------------
INSERT INTO `wct_posts` VALUES ('8', '出一个1.2M的席梦思床垫', '1.2M九成新席梦思床垫', '124', 'yangmi', '2019-03-04 17:55:50', '59fd6aa8-e47a-45c6-bffc-53d6277513bd.jpg', '出售');
INSERT INTO `wct_posts` VALUES ('10', '顺便发布一个代理消息', '招收校园代理', '125', 'linzhiling', '2019-03-04 19:10:11', '77df28fd-b1d5-4245-a25e-da7ce80dc7fe.jpg', '其他');

-- ----------------------------
-- Table structure for `wct_replay`
-- ----------------------------
DROP TABLE IF EXISTS `wct_replay`;
CREATE TABLE `wct_replay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(10) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `ndate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_replay
-- ----------------------------
INSERT INTO `wct_replay` VALUES ('42', '26', '你好', '59', 'admin', '2019-03-03 20:34:33');
INSERT INTO `wct_replay` VALUES ('43', '26', '呵呵呵', '59', 'admin', '2019-03-03 20:35:09');
INSERT INTO `wct_replay` VALUES ('44', '16', '这里可以相互交流', '111', '波仔', '2019-03-03 08:54:48');
INSERT INTO `wct_replay` VALUES ('45', '26', '这里可以卖家沟通', '113', '小凤', '2019-03-03 09:17:33');
INSERT INTO `wct_replay` VALUES ('46', '1', '可以相互回复交流', '113', '小凤', '2019-03-03 09:20:42');
INSERT INTO `wct_replay` VALUES ('47', '26', '发信息留言', '113', '小凤', '2019-03-03 18:58:33');
INSERT INTO `wct_replay` VALUES ('48', '16', '可以大家讨论', '113', '小凤', '2019-03-03 18:58:42');
INSERT INTO `wct_replay` VALUES ('52', '11', '不错', '97', 'bozai', '2019-03-03 16:23:03');
INSERT INTO `wct_replay` VALUES ('59', '41', '1', '124', 'yangmi', '2019-03-04 18:47:55');
INSERT INTO `wct_replay` VALUES ('60', '8', '11', '124', 'yangmi', '2019-03-04 18:51:21');
INSERT INTO `wct_replay` VALUES ('61', '43', '新品上市都来看看', '125', 'linzhiling', '2019-03-04 19:07:09');
INSERT INTO `wct_replay` VALUES ('62', '36', '听不错', '125', 'linzhiling', '2019-03-04 19:08:29');
INSERT INTO `wct_replay` VALUES ('63', '10', '我来我来', '125', 'linzhiling', '2019-03-04 19:10:30');

-- ----------------------------
-- Table structure for `wct_shop`
-- ----------------------------
DROP TABLE IF EXISTS `wct_shop`;
CREATE TABLE `wct_shop` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sname` varchar(100) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `ownid` varchar(10) DEFAULT NULL,
  `passwd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_shop
-- ----------------------------
INSERT INTO `wct_shop` VALUES ('26', '重庆', null, null, null, null, null, null, null, null);
INSERT INTO `wct_shop` VALUES ('27', '深圳', null, null, null, null, null, null, '59', null);
INSERT INTO `wct_shop` VALUES ('28', '成都', null, null, null, null, null, null, '59', null);

-- ----------------------------
-- Table structure for `wct_type`
-- ----------------------------
DROP TABLE IF EXISTS `wct_type`;
CREATE TABLE `wct_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `ownid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_type
-- ----------------------------
INSERT INTO `wct_type` VALUES ('25', '桌椅', null);
INSERT INTO `wct_type` VALUES ('27', '书籍', null);
INSERT INTO `wct_type` VALUES ('28', '化妆品', null);
INSERT INTO `wct_type` VALUES ('29', '测试类别', null);

-- ----------------------------
-- Table structure for `wct_user`
-- ----------------------------
DROP TABLE IF EXISTS `wct_user`;
CREATE TABLE `wct_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `passwd` varchar(50) DEFAULT NULL,
  `roletype` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `wechat` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `birth` varchar(20) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `latitude` varchar(200) DEFAULT NULL,
  `longitude` varchar(200) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `fids` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_user
-- ----------------------------
INSERT INTO `wct_user` VALUES ('59', 'admin', 'admin', '1', '', '6栋120', '15123385885', '543548596', '', null, '2019-03-03', null, null, '39.91500043', '116.40400029999999', null, '100');
INSERT INTO `wct_user` VALUES ('124', 'yangmi', '1122', '2', '', '上海市闸北区西藏北路', '13111111111', '', '', '女', '2019-03-04', '8a52a523-060d-4a1f-a59c-490cba4e85a7.jpg', null, '39.91500009', '116.404', '98', '100,125');
INSERT INTO `wct_user` VALUES ('100', 'wangbo', '123456', '2', 'ideabobo@126.com', '我的地址必须', '15123385885', '54354856', '4949946', '男', '2019-03-03', 'photo4.jpg', null, '29.592024', '106.227305', '56', '97');
INSERT INTO `wct_user` VALUES ('103', 'admin2', '1', '1', null, null, null, null, null, null, '2019-03-03', null, null, '29.595428', '106.228918', null, null);
INSERT INTO `wct_user` VALUES ('120', 'xiaobozai', '111111', '2', null, '重庆璧山', '15123385885', null, null, '男', '2019-03-03', '2ef54e10-3e08-4c5b-9d62-19c77baf4062.jpg', null, null, null, null, null);
INSERT INTO `wct_user` VALUES ('123', 'panda', '111111', '2', '321@qq.com', '北京市', '13333333333', '3213123', '3213213', '男', '2019-03-03', null, null, '39.86781666666666', '116.41652833333335', '50', '118');
INSERT INTO `wct_user` VALUES ('125', 'linzhiling', '1122', '2', '1122@qq.com', '台湾', '13666666666', '806483333', '806483333', '女', '2019-03-04', '3f987448-b54e-4ecf-a21f-9c36d63cf123.jpg', null, '39.91500094', '116.40400036', '386', '124');

-- ----------------------------
-- Table structure for `wct_vip`
-- ----------------------------
DROP TABLE IF EXISTS `wct_vip`;
CREATE TABLE `wct_vip` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `qq` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `wname` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wct_vip
-- ----------------------------
