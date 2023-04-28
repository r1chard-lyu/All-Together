/*
MySQL Data Transfer
Source Host: localhost
Source Database: wannaeat
Target Host: localhost
Target Database: wannaeat
Date: 4/20/2021 1:26:18 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for group_buy
-- ----------------------------
CREATE TABLE `group_buy` (
  `id` varchar(255) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  `store_phone` varchar(200) NOT NULL,
  `group_host` varchar(255) NOT NULL,
  `end_time` datetime NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `store_tags` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hosts
-- ----------------------------
CREATE TABLE `hosts` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `host_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
CREATE TABLE `orders` (
  `order_id` varchar(255) NOT NULL,
  `order_name` varchar(255) NOT NULL,
  `field_id` varchar(255) DEFAULT NULL,
  `order_meal` varchar(255) NOT NULL,
  `order_price` int(255) NOT NULL,
  `order_number` int(11) NOT NULL,
  `order_remark` varchar(255) DEFAULT NULL,
  `order_paymentStatus` tinyint(3) DEFAULT '0',
  UNIQUE KEY `orders_field_id_uindex` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for store
-- ----------------------------
CREATE TABLE `store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `store_tag` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `store_full_price` int(11) DEFAULT '0',
  `store_cover` varchar(255) DEFAULT NULL,
  `images` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users
-- ----------------------------
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `group_buy` VALUES ('202205165130', '衝浪團', '04-21314568', '阿翰', '2020-07-05 17:18:00', '好玩', '3', null);
INSERT INTO `group_buy` VALUES ('202205164910', '衝浪團', '04-21314568', '阿翰', '2020-07-05 17:18:00', '好玩', '3', null);
INSERT INTO `group_buy` VALUES ('202205165056', '衝浪團', '04-21314568', '阿翰', '2020-07-05 17:18:00', '好玩', '3', null);
INSERT INTO `group_buy` VALUES ('202204181010', '水上活動', '04-88959987', '阿翰', '2020-07-05 18:40:00', '好玩', '2', null);
INSERT INTO `group_buy` VALUES ('202204204035', '衝浪團', '04-21314568', '阿翰', '2020-07-06 21:10:00', '好玩', '3', null);
INSERT INTO `group_buy` VALUES ('202205060544', '香蕉船體驗', '04-12345678', '阿翰', '2020-07-06 06:35:00', '好玩', '7', null);
INSERT INTO `group_buy` VALUES ('202205161237', '香蕉船體驗', '04-12345678', '阿翰', '2020-07-05 16:23:00', '好玩', '7', null);
INSERT INTO `group_buy` VALUES ('202205163043', '泛舟', '04-12345678', '阿翰', '2020-07-05 17:00:00', '好玩', '5', null);
INSERT INTO `group_buy` VALUES ('202205163156', '泛舟', '04-12345678', '阿翰', '2020-07-05 17:00:00', '好玩', '5', null);
INSERT INTO `group_buy` VALUES ('202205163205', '衝浪團', '04-21314568', '阿翰', '2020-07-05 17:02:00', '好玩', '3', null);
INSERT INTO `group_buy` VALUES ('202205163307', '衝浪團', '04-21314568', '阿翰', '2020-07-05 17:02:00', '好玩', '3', null);
INSERT INTO `group_buy` VALUES ('202221094303', '調酒品嚐', '04-21314568', '胖胖豬', '2020-12-22 09:43:00', '', '3', '大胃王挑戰');
INSERT INTO `group_buy` VALUES ('202205164506', '泛舟', '04-12345678', '阿翰', '2020-07-05 17:15:00', '好玩', '5', null);
INSERT INTO `group_buy` VALUES ('202205164621', '泛舟', '04-12345678', '阿翰', '2020-07-05 17:15:00', '好玩', '5', null);
INSERT INTO `group_buy` VALUES ('202205164627', '泛舟', '04-12345678', '阿翰', '2020-07-05 17:16:00', '好玩', '5', null);
INSERT INTO `group_buy` VALUES ('202205164726', '泛舟', '04-12345678', '阿翰', '2020-07-05 17:16:00', '好玩', '5', null);
INSERT INTO `group_buy` VALUES ('202205164802', '泛舟', '04-12345678', '阿翰', '2020-07-05 17:16:00', '好玩', '5', null);
INSERT INTO `group_buy` VALUES ('202205164809', '衝浪團', '04-21314568', '阿翰', '2020-07-05 17:18:00', '好玩', '3', null);
INSERT INTO `group_buy` VALUES ('202204175058', '炒飯超人', '04-88959987', '阿翰', '2020-07-04 18:20:00', '好玩', '4', null);
INSERT INTO `group_buy` VALUES ('202204175106', '水上活動', '04-88959987', '阿翰', '2020-07-04 18:21:00', '好玩', '2', null);
INSERT INTO `group_buy` VALUES ('202204175116', '湯媽媽濃湯', '24889544', '張學友', '2020-07-04 18:21:00', '好玩', '15', null);
INSERT INTO `group_buy` VALUES ('202205165140', '炒飯超人', '04-88959987', '阿翰', '2020-07-05 17:21:00', '好玩', '4', null);
INSERT INTO `group_buy` VALUES ('202205165245', '炒飯超人', '04-88959987', '阿翰', '2020-07-05 17:21:00', '好玩', '4', null);
INSERT INTO `group_buy` VALUES ('202205165340', '衝浪團', '04-21314568', '阿翰', '2020-07-05 17:23:00', '好玩', '3', null);
INSERT INTO `group_buy` VALUES ('202205165543', '衝浪團', '04-21314568', '阿翰', '2020-07-05 17:25:00', '好玩', '3', null);
INSERT INTO `group_buy` VALUES ('202205165614', '潛水', '04-88959987', '阿翰', '2020-07-05 17:26:00', '好玩', '8', null);
INSERT INTO `group_buy` VALUES ('202205170019', '水', '04-88959987', '阿翰', '2020-07-05 17:26:00', '好玩', '8', null);
INSERT INTO `group_buy` VALUES ('202205170127', '湯媽媽濃湯', '24889544', '阿翰', '2020-07-05 17:31:00', '好玩', '15', null);
INSERT INTO `group_buy` VALUES ('202205170211', '湯媽媽濃湯', '24889544', '阿翰', '2020-07-05 17:31:00', '好玩', '15', null);
INSERT INTO `group_buy` VALUES ('202205170317', '湯媽媽濃湯', '24889544', '阿翰', '2020-07-05 17:31:00', '好玩', '15', null);
INSERT INTO `group_buy` VALUES ('202205170401', '泛舟', '04-12345678', '阿翰', '2020-07-05 17:33:00', '好玩', '5', null);
INSERT INTO `group_buy` VALUES ('202206232819', '水上活動', '04-88959987', '阿翰', '2020-07-06 23:58:00', '', '2', null);
INSERT INTO `group_buy` VALUES ('202205205930', '潛水', '04-88959987', '阿翰', '2020-07-05 21:29:00', '好玩', '8', null);
INSERT INTO `group_buy` VALUES ('202205205940', '水上活動', '04-88959987', '阿翰', '2020-07-05 21:40:00', '好玩', '2', null);
INSERT INTO `group_buy` VALUES ('202205210005', '水上活動', '04-88959987', '阿翰', '2020-07-05 21:40:00', '好玩', '2', null);
INSERT INTO `group_buy` VALUES ('202205210016', '潛水', '04-88959987', '阿翰', '2020-07-05 21:35:00', '好玩', '8', null);
INSERT INTO `group_buy` VALUES ('202206233535', '水上活動', '04-88959987', '阿翰', '2020-07-06 00:05:00', '', '2', null);
INSERT INTO `group_buy` VALUES ('202207053835', '衝浪團', '04-21314568', '阿翰', '2020-07-07 06:08:00', '', '3', null);
INSERT INTO `group_buy` VALUES ('202207211900', '水上活動', '04-88959987', '阿翰', '2020-07-07 21:50:00', '', '2', null);
INSERT INTO `group_buy` VALUES ('202208063015', '炒飯超人', '04-88959987', '阿翰', '2020-07-08 07:30:00', '', '4', null);
INSERT INTO `group_buy` VALUES ('202207211928', '炒飯超人', '04-88959987', '阿翰', '2020-07-06 21:19:00', '', '4', null);
INSERT INTO `group_buy` VALUES ('202207211949', '炒飯超人', '04-88959987', '阿翰', '2020-07-07 21:55:00', '', '4', null);
INSERT INTO `group_buy` VALUES ('202207225658', '香蕉船體驗', '04-12345678', '阿翰', '2020-07-07 23:50:00', '', '7', null);
INSERT INTO `group_buy` VALUES ('202208224937', '水上活動', '04-88959987', '阿翰', '2020-07-08 22:49:00', '', '2', null);
INSERT INTO `group_buy` VALUES ('202209062654', '衝浪團', '04-21314568', '阿翰', '2020-07-13 06:26:00', '', '3', null);
INSERT INTO `group_buy` VALUES ('201103103559', '衝浪團', '04-21314568', '老虎', '2020-11-05 10:35:00', '', '3', null);
INSERT INTO `group_buy` VALUES ('202210211151', '衝浪團', '04-21314568', '阿翰', '2020-07-31 21:11:00', '', '3', null);
INSERT INTO `group_buy` VALUES ('202209193858', '炒飯超人', '04-88959987', '阿翰', '2020-07-31 19:38:00', '', '4', null);
INSERT INTO `group_buy` VALUES ('202209202925', '衝浪團', '04-21314568', '阿翰', '2020-07-24 20:29:00', '', '3', null);
INSERT INTO `group_buy` VALUES ('202210211454', '衝浪團', '04-21314568', '阿翰', '2020-07-31 21:14:00', '', '3', null);
INSERT INTO `group_buy` VALUES ('202218200347', '調酒品嚐', '04-21314568', '阿翰', '2020-07-31 20:03:00', '', '3', null);
INSERT INTO `group_buy` VALUES ('202220224842', '人力資源', '24889544', '阿翰', '2020-07-22 12:48:00', '', '22', null);
INSERT INTO `group_buy` VALUES ('202201100012', '大胃王挑戰', '04-21314568', '老虎', '2020-12-01 10:00:00', '', '3', null);
INSERT INTO `group_buy` VALUES ('202201100107', '大胃王挑戰', '04-21314568', '老虎', '2020-12-01 10:01:00', '', '3', null);
INSERT INTO `group_buy` VALUES ('202214092700', '大胃王挑戰', '04-21314568', '小V', '2020-12-14 10:26:00', '', '3', null);
INSERT INTO `group_buy` VALUES ('202214115121', '大胃王挑戰', '04-21314568', 'Jack', '2020-12-14 12:51:00', '', '3', null);
INSERT INTO `group_buy` VALUES ('202214115406', '大胃王挑戰', '04-22301838', '小V', '2020-12-14 12:54:00', '', '23', null);
INSERT INTO `group_buy` VALUES ('202214135523', '沙灘排球', '04-2247-1010', '老虎', '2020-12-14 13:55:00', '', '22', null);
INSERT INTO `group_buy` VALUES ('202216100127', '沙灘排球', '04-2247-1010', '阿翰', '2020-12-17 10:01:00', '', '22', null);
INSERT INTO `group_buy` VALUES ('202216101731', '調酒品嚐', '04-21314568', '小小', '2020-12-16 10:17:00', '', '3', '大胃王挑戰');
INSERT INTO `group_buy` VALUES ('202217120910', '炒飯超人', '04-88959987', '胖胖豬', '2020-12-17 10:01:00', '', '4', '大胃王挑戰');
INSERT INTO `group_buy` VALUES ('202217125112', '調酒品嚐', '04-21314568', '胖胖豬', '2020-12-17 10:01:00', '', '3', '大胃王挑戰');
INSERT INTO `group_buy` VALUES ('202217125340', '炒飯超人', '04-88959987', '胖胖豬', '2020-12-17 10:01:00', '', '4', '大胃王挑戰');
INSERT INTO `group_buy` VALUES ('202217125417', '調酒品嚐', '04-21314568', '小小', '2020-12-17 10:01:00', '', '3', '大胃王挑戰');
INSERT INTO `group_buy` VALUES ('202217130345', '炒飯超人', '04-88959987', '胖胖豬', '2020-12-17 10:01:00', '', '4', '大胃王挑戰');
INSERT INTO `group_buy` VALUES ('202217130834', '調酒品嚐', '04-21314568', '小小', '2020-11-17 13:08:27', '', '3', '大胃王挑戰');
INSERT INTO `group_buy` VALUES ('202218090513', '調酒品嚐', '04-21314568', '美女', '2020-11-18 09:05:06', '', '3', '大胃王挑戰');
INSERT INTO `group_buy` VALUES ('202218090937', '調酒品嚐', '04-21314568', 'Jack', '2020-11-18 09:09:31', '', '3', '大胃王挑戰');
INSERT INTO `group_buy` VALUES ('202218091032', '調酒品嚐', '04-21314568', '翰翰', '2020-12-19 09:10:00', '', '3', '大胃王挑戰');
INSERT INTO `group_buy` VALUES ('202221115127', '炒飯超人', '04-88959987', '老虎', '2020-12-22 11:51:00', '', '4', '大胃王挑戰');
INSERT INTO `group_buy` VALUES ('202228125337', '炒飯超人', '04-88959987', '胖胖豬', '2020-12-29 12:53:00', '', '4', '大胃王挑戰');
INSERT INTO `group_buy` VALUES ('210104090913', '調酒品嚐', '04-21314568', 'Jack', '2021-01-05 09:09:00', '', '3', '大胃王挑戰');

