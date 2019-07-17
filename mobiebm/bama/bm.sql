#设置文件编码
SET NAMES UTF8;
#丢弃并创建数据库设置编码
DROP DATABASE IF EXISTS bamaphone;
CREATE DATABASE bamaphone CHARSET=UTF8;
#进入数据库
USE bamaphone;

SET FOREIGN_KEY_CHECKS=0;
#创建产品详情表
DROP TABLE IF EXISTS `bm_product_details`;
CREATE TABLE `bm_product_details` (
  `lid` int(11) PRIMARY KEY NOT NULL auto_increment,
  `lname` varchar(32) default NULL,
  `titles` varchar(128) default NULL,
  `cid` int(11) default NULL,
  `cname` varchar(11) default NULL,
  `egtitle` varchar(11) default NULL,
  `price` decimal(10,2) default NULL,
  `smpic` varchar(128) default NULL,
  `lcount` int(11) default NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#插入产品详情数据
INSERT INTO `bm_product_details` VALUES ('1', 'xlx', '【买2送苦荞茶H0348】八马茶业 安溪铁观音茶叶 浓香型乌龙茶小浓香1号礼盒装250克', '1', '铁观音','wlc', '600.00','assets/image/img/1/right_pro/xlx/main00.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('2', 'qxcl', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', '1', '铁观音','wlc', '420.00','assets/image/img/1/right_pro/qxcl/main01.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('3', 'mxcl', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '1', '铁观音','wlc', '80.00','assets/image/img/1/right_pro/mxcl/main01.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('4', 'sxyy', '【买1送1】八马茶叶 2019春茶私享雅韵安溪铁观音茶叶清香型乌龙茶兰花香新茶252g/盒', '1', '铁观音','wlc', '99.00','assets/image/img/1/right_pro/sxyy/main01.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('5', 'sxlq', '【买1送1】八马茶业 私享浓情 安溪铁观音 浓香型 乌龙茶 茶叶礼盒装252g', '1', '铁观音','wlc', '120.00','assets/image/img/1/right_pro/sxlq/main01.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('6', 'tjlr', '八马茶业 铁观音茶叶 清香型特级安溪乌龙茶新茶茶叶礼盒250克', '1', '铁观音','wlc', '300.00','assets/image/img/1/right_pro/tjlr/main01.jpg', '222');

INSERT INTO `bm_product_details` VALUES ('7', 'dhp', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', '2', '大红袍','hc', '200.00','assets/image/img/1/right_pro/tjlr/main01.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('8', 'kldhp', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '2', '大红袍','hc', '100.00','assets/image/img/1/right_pro/tjlr/main04.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('9', 'lxyc', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', '2', '大红袍','hc', '200.00','assets/image/img/1/right_pro/tjlr/main01.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('10', 'ycjd', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '2', '大红袍','hc', '100.00','assets/image/img/1/right_pro/tjlr/main02.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('11', 'yghx', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', '2', '大红袍','hc', '200.00','assets/image/img/1/right_pro/tjlr/main03.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('12', 'zwyc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '2', '大红袍','hc', '100.00','assets/image/img/1/right_pro/tjlr/main04.jpg', '222');

INSERT INTO `bm_product_details` VALUES ('13', 'hczp', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', '3', '红茶','lc', '200.00','assets/image/img/1/right_pro/tjlr/main02.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('14', 'jjmgz', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '3', '红茶','lc', '100.00','assets/image/img/1/right_pro/tjlr/main03.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('15', 'jjmlh', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', '2', '红茶','lc', '200.00','assets/image/img/1/right_pro/tjlr/main04.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('16', 'qmhc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '3', '红茶','lc', '100.00','assets/image/img/1/right_pro/tjlr/main02.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('17', 'zsxzgz', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', '2', '红茶','lc', '200.00','assets/image/img/1/right_pro/tjlr/main03.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('18', 'zsxzlh', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '3', '红茶','lc', '100.00','assets/image/img/1/right_pro/tjlr/main04.jpg', '222');

INSERT INTO `bm_product_details` VALUES ('19', 'bls', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '4', '普洱','heic', '400.00','assets/image/img/1/right_pro/tjlr/main03.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('20', 'pelsc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '4', '普洱','heic', '400.00','assets/image/img/1/right_pro/tjlr/main04.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('21', 'pesc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '4', '普洱','heic', '400.00','assets/image/img/1/right_pro/tjlr/main01.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('22', 'spe', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '4', '普洱','heic', '400.00','assets/image/img/1/right_pro/tjlr/main04.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('23', 'xxg', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '4', '普洱','heic', '400.00','assets/image/img/1/right_pro/tjlr/main03.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('24', 'zxpe', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '4', '普洱','heic', '400.00','assets/image/img/1/right_pro/tjlr/main04.jpg', '222');

INSERT INTO `bm_product_details` VALUES ('25', 'ajbc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '5', '绿茶','bc', '300.00','assets/image/img/1/right_pro/tjlr/main03.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('26', 'lc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '5', '绿茶','bc', '300.00','assets/image/img/1/right_pro/tjlr/main04.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('27', 'ljlc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '5', '绿茶','bc', '300.00','assets/image/img/1/right_pro/tjlr/main01.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('28', 'xhlj', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '5', '绿茶','bc', '300.00','assets/image/img/1/right_pro/tjlr/main02.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('29', 'xhljh', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '5', '绿茶','bc', '300.00','assets/image/img/1/right_pro/tjlr/main03.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('30', 'zjlj', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '5', '绿茶','bc', '300.00','assets/image/img/1/right_pro/tjlr/main04.jpg', '222');

INSERT INTO `bm_product_details` VALUES ('31', 'blz', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '6', '花茶','huac', '200.00','assets/image/img/1/right_pro/tjlr/main03.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('32', 'jhc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '6', '花茶','huac', '200.00','assets/image/img/1/right_pro/tjlr/main02.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('33', 'mghc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '6', '花茶','huac', '200.00','assets/image/img/1/right_pro/tjlr/main01.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('34', 'mldp', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '6', '花茶','huac', '200.00','assets/image/img/1/right_pro/tjlr/main02.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('35', 'mlhc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '6', '花茶','huac', '200.00','assets/image/img/1/right_pro/tjlr/main03.jpg', '222');
INSERT INTO `bm_product_details` VALUES ('36', 'tjdp', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '6', '花茶','huac', '200.00','assets/image/img/1/right_pro/tjlr/main04.jpg', '222');

#商品主图片表
DROP TABLE IF EXISTS `bm_main_pics`;
CREATE TABLE `bm_main_pics` (
  `pid` int(11) NOT NULL auto_increment PRIMARY KEY,
  `lid` int(11) NOT NULL,
  `sm` varchar(128) default NULL,
  `md` varchar(128) default NULL,
  `lg` varchar(128) default NULL
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;

#插入主图片数据
INSERT INTO `bm_main_pics` VALUES ('1', '1', 'assets/image/img/1/right_pro/xlx/main00.jpg', 'assets/image/img/1/right_pro/xlx/main00.jpg', 'assets/image/img/1/right_pro/xlx/main00.jpg');
INSERT INTO `bm_main_pics` VALUES ('2', '1', 'assets/image/img/1/right_pro/xlx/main01.jpg', 'assets/image/img/1/right_pro/xlx/main01.jpg', 'assets/image/img/1/right_pro/xlx/main01.jpg');
INSERT INTO `bm_main_pics` VALUES ('3', '1', 'assets/image/img/1/right_pro/xlx/main02.jpg', 'assets/image/img/1/right_pro/xlx/main02.jpg', 'assets/image/img/1/right_pro/xlx/main02.jpg');
INSERT INTO `bm_main_pics` VALUES ('4', '1', 'assets/image/img/1/right_pro/xlx/main03.jpg', 'assets/image/img/1/right_pro/xlx/main03.jpg', 'assets/image/img/1/right_pro/xlx/main03.jpg');

INSERT INTO `bm_main_pics` VALUES ('5', '2', 'assets/image/img/1/right_pro/qxcl/main01.jpg', 'assets/image/img/1/right_pro/qxcl/main01.jpg', 'assets/image/img/1/right_pro/qxcl/main01.jpg');
INSERT INTO `bm_main_pics` VALUES ('6', '2', 'assets/image/img/1/right_pro/qxcl/main02.jpg', 'assets/image/img/1/right_pro/qxcl/main02.jpg', 'assets/image/img/1/right_pro/qxcl/main02.jpg');
INSERT INTO `bm_main_pics` VALUES ('7', '2', 'assets/image/img/1/right_pro/qxcl/main03.jpg', 'assets/image/img/1/right_pro/qxcl/main03.jpg', 'assets/image/img/1/right_pro/qxcl/main03.jpg');
INSERT INTO `bm_main_pics` VALUES ('8', '2', 'assets/image/img/1/right_pro/qxcl/main04.jpg', 'assets/image/img/1/right_pro/qxcl/main04.jpg', 'assets/image/img/1/right_pro/qxcl/main04.jpg');
INSERT INTO `bm_main_pics` VALUES ('9', '2', 'assets/image/img/1/right_pro/qxcl/main05.jpg', 'assets/image/img/1/right_pro/qxcl/main05.jpg', 'assets/image/img/1/right_pro/qxcl/main05.jpg');

INSERT INTO `bm_main_pics` VALUES ('10', '3', 'assets/image/img/1/right_pro/mxcl/main01.jpg', 'assets/image/img/1/right_pro/mxcl/main01.jpg', 'assets/image/img/1/right_pro/mxcl/main01.jpg');
INSERT INTO `bm_main_pics` VALUES ('11', '3', 'assets/image/img/1/right_pro/mxcl/main02.jpg', 'assets/image/img/1/right_pro/mxcl/main02.jpg', 'assets/image/img/1/right_pro/mxcl/main02.jpg');
INSERT INTO `bm_main_pics` VALUES ('12', '3', 'assets/image/img/1/right_pro/mxcl/main03.jpg', 'assets/image/img/1/right_pro/mxcl/main03.jpg', 'assets/image/img/1/right_pro/mxcl/main03.jpg');
INSERT INTO `bm_main_pics` VALUES ('13', '3', 'assets/image/img/1/right_pro/mxcl/main04.jpg', 'assets/image/img/1/right_pro/mxcl/main04.jpg', 'assets/image/img/1/right_pro/mxcl/main04.jpg');

INSERT INTO `bm_main_pics` VALUES ('14', '4', 'assets/image/img/1/right_pro/sxyy/main01.jpg', 'assets/image/img/1/right_pro/sxyy/main01.jpg', 'assets/image/img/1/right_pro/sxyy/main01.jpg');
INSERT INTO `bm_main_pics` VALUES ('15', '4', 'assets/image/img/1/right_pro/sxyy/main02.jpg', 'assets/image/img/1/right_pro/sxyy/main02.jpg', 'assets/image/img/1/right_pro/sxyy/main02.jpg');
INSERT INTO `bm_main_pics` VALUES ('16', '4', 'assets/image/img/1/right_pro/sxyy/main03.jpg', 'assets/image/img/1/right_pro/sxyy/main03.jpg', 'assets/image/img/1/right_pro/sxyy/main03.jpg');
INSERT INTO `bm_main_pics` VALUES ('17', '4', 'assets/image/img/1/right_pro/sxyy/main04.jpg', 'assets/image/img/1/right_pro/sxyy/main04.jpg', 'assets/image/img/1/right_pro/sxyy/main04.jpg');
INSERT INTO `bm_main_pics` VALUES ('18', '4', 'assets/image/img/1/right_pro/sxyy/main05.jpg', 'assets/image/img/1/right_pro/sxyy/main05.jpg', 'assets/image/img/1/right_pro/sxyy/main05.jpg');

INSERT INTO `bm_main_pics` VALUES ('19', '5', 'assets/image/img/1/right_pro/sxlq/main01.jpg', 'assets/image/img/1/right_pro/sxlq/main01.jpg', 'assets/image/img/1/right_pro/sxlq/main01.jpg');
INSERT INTO `bm_main_pics` VALUES ('20', '5', 'assets/image/img/1/right_pro/sxlq/main02.jpg', 'assets/image/img/1/right_pro/sxlq/main02.jpg', 'assets/image/img/1/right_pro/sxlq/main02.jpg');
INSERT INTO `bm_main_pics` VALUES ('21', '5', 'assets/image/img/1/right_pro/sxlq/main03.jpg', 'assets/image/img/1/right_pro/sxlq/main03.jpg', 'assets/image/img/1/right_pro/sxlq/main03.jpg');
INSERT INTO `bm_main_pics` VALUES ('22', '5', 'assets/image/img/1/right_pro/sxlq/main04.jpg', 'assets/image/img/1/right_pro/sxlq/main04.jpg', 'assets/image/img/1/right_pro/sxlq/main04.jpg');
INSERT INTO `bm_main_pics` VALUES ('23', '5', 'assets/image/img/1/right_pro/sxlq/main05.jpg', 'assets/image/img/1/right_pro/sxlq/main05.jpg', 'assets/image/img/1/right_pro/sxlq/main05.jpg');

INSERT INTO `bm_main_pics` VALUES ('24', '6', 'assets/image/img/1/right_pro/tjlr/main01.jpg', 'assets/image/img/1/right_pro/tjlr/main01.jpg', 'assets/image/img/1/right_pro/tjlr/main01.jpg');
INSERT INTO `bm_main_pics` VALUES ('25', '6', 'assets/image/img/1/right_pro/tjlr/main02.jpg', 'assets/image/img/1/right_pro/tjlr/main02.jpg', 'assets/image/img/1/right_pro/tjlr/main02.jpg');
INSERT INTO `bm_main_pics` VALUES ('26', '6', 'assets/image/img/1/right_pro/tjlr/main03.jpg', 'assets/image/img/1/right_pro/tjlr/main03.jpg', 'assets/image/img/1/right_pro/tjlr/main03.jpg');
INSERT INTO `bm_main_pics` VALUES ('27', '6', 'assets/image/img/1/right_pro/tjlr/main04.jpg', 'assets/image/img/1/right_pro/tjlr/main04.jpg', 'assets/image/img/1/right_pro/tjlr/main04.jpg');
INSERT INTO `bm_main_pics` VALUES ('28', '6', 'assets/image/img/1/right_pro/tjlr/main05.jpg', 'assets/image/img/1/right_pro/tjlr/main05.jpg', 'assets/image/img/1/right_pro/tjlr/main05.jpg');

INSERT INTO `bm_main_pics` VALUES ('29', '7', 'assets/image/img/2/right_pro/dhp/main01.jpg', 'assets/image/img/2/right_pro/dhp/main01.jpg', 'assets/image/img/2/right_pro/dhp/main01.jpg');
INSERT INTO `bm_main_pics` VALUES ('30', '7', 'assets/image/img/2/right_pro/dhp/main02.jpg', 'assets/image/img/2/right_pro/dhp/main02.jpg', 'assets/image/img/2/right_pro/dhp/main02.jpg');
INSERT INTO `bm_main_pics` VALUES ('31', '7', 'assets/image/img/2/right_pro/dhp/main03.jpg', 'assets/image/img/2/right_pro/dhp/main03.jpg', 'assets/image/img/2/right_pro/dhp/main03.jpg');
INSERT INTO `bm_main_pics` VALUES ('32', '7', 'assets/image/img/2/right_pro/dhp/main04.jpg', 'assets/image/img/2/right_pro/dhp/main04.jpg', 'assets/image/img/2/right_pro/dhp/main04.jpg');
INSERT INTO `bm_main_pics` VALUES ('33', '7', 'assets/image/img/2/right_pro/dhp/main05.jpg', 'assets/image/img/2/right_pro/dhp/main05.jpg', 'assets/image/img/2/right_pro/dhp/main05.jpg');

INSERT INTO `bm_main_pics` VALUES ('34', '8', 'assets/image/img/2/right_pro/kldhp/main01.jpg', 'assets/image/img/2/right_pro/kldhp/main01.jpg', 'assets/image/img/2/right_pro/kldhp/main01.jpg');
INSERT INTO `bm_main_pics` VALUES ('35', '8', 'assets/image/img/2/right_pro/kldhp/main02.jpg', 'assets/image/img/2/right_pro/kldhp/main02.jpg', 'assets/image/img/2/right_pro/kldhp/main02.jpg');
INSERT INTO `bm_main_pics` VALUES ('36', '8', 'assets/image/img/2/right_pro/kldhp/main03.jpg', 'assets/image/img/2/right_pro/kldhp/main03.jpg', 'assets/image/img/2/right_pro/kldhp/main03.jpg');
INSERT INTO `bm_main_pics` VALUES ('37', '8', 'assets/image/img/2/right_pro/kldhp/main04.jpg', 'assets/image/img/2/right_pro/kldhp/main04.jpg', 'assets/image/img/2/right_pro/kldhp/main04.jpg');
INSERT INTO `bm_main_pics` VALUES ('38', '8', 'assets/image/img/2/right_pro/kldhp/main05.jpg', 'assets/image/img/2/right_pro/kldhp/main05.jpg', 'assets/image/img/2/right_pro/kldhp/main05.jpg');

INSERT INTO `bm_main_pics` VALUES ('39', '9', 'assets/image/img/2/right_pro/lxyc/main01.jpg', 'assets/image/img/2/right_pro/lxyc/main01.jpg', 'assets/image/img/2/right_pro/lxyc/main01.jpg');
INSERT INTO `bm_main_pics` VALUES ('40', '9', 'assets/image/img/2/right_pro/lxyc/main02.jpg', 'assets/image/img/2/right_pro/lxyc/main02.jpg', 'assets/image/img/2/right_pro/lxyc/main02.jpg');
INSERT INTO `bm_main_pics` VALUES ('41', '9', 'assets/image/img/2/right_pro/lxyc/main03.jpg', 'assets/image/img/2/right_pro/lxyc/main03.jpg', 'assets/image/img/2/right_pro/lxyc/main03.jpg');
INSERT INTO `bm_main_pics` VALUES ('42', '9', 'assets/image/img/2/right_pro/lxyc/main04.jpg', 'assets/image/img/2/right_pro/lxyc/main04.jpg', 'assets/image/img/2/right_pro/lxyc/main04.jpg');
INSERT INTO `bm_main_pics` VALUES ('43', '9', 'assets/image/img/2/right_pro/lxyc/main05.jpg', 'assets/image/img/2/right_pro/lxyc/main05.jpg', 'assets/image/img/2/right_pro/lxyc/main05.jpg');

INSERT INTO `bm_main_pics` VALUES ('44', '10', 'assets/image/img/2/right_pro/ycjd/main01.jpg', 'assets/image/img/2/right_pro/ycjd/main01.jpg', 'assets/image/img/2/right_pro/ycjd/main01.jpg');
INSERT INTO `bm_main_pics` VALUES ('45', '10', 'assets/image/img/2/right_pro/ycjd/main02.jpg', 'assets/image/img/2/right_pro/ycjd/main02.jpg', 'assets/image/img/2/right_pro/ycjd/main02.jpg');
INSERT INTO `bm_main_pics` VALUES ('46', '10', 'assets/image/img/2/right_pro/ycjd/main03.jpg', 'assets/image/img/2/right_pro/ycjd/main03.jpg', 'assets/image/img/2/right_pro/ycjd/main03.jpg');
INSERT INTO `bm_main_pics` VALUES ('47', '10', 'assets/image/img/2/right_pro/ycjd/main04.jpg', 'assets/image/img/2/right_pro/ycjd/main04.jpg', 'assets/image/img/2/right_pro/ycjd/main04.jpg');
INSERT INTO `bm_main_pics` VALUES ('48', '10', 'assets/image/img/2/right_pro/ycjd/main05.jpg', 'assets/image/img/2/right_pro/ycjd/main05.jpg', 'assets/image/img/2/right_pro/ycjd/main05.jpg');

#商品详情图片表
DROP TABLE IF EXISTS `bm_details_pics`;
CREATE TABLE `bm_details_pics` (
  `dtl_psid` int(11) NOT NULL auto_increment PRIMARY KEY,
  `lid` int(11) NOT NULL,
  `psrc` varchar(128) default NULL
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;

#插入数据
INSERT INTO `bm_details_pics` VALUES ('1', '1', 'assets/image/img/1/right_pro/xlx/01.jpg');
INSERT INTO `bm_details_pics` VALUES ('2', '1', 'assets/image/img/1/right_pro/xlx/02.jpg');
INSERT INTO `bm_details_pics` VALUES ('3', '1', 'assets/image/img/1/right_pro/xlx/03.jpg');
INSERT INTO `bm_details_pics` VALUES ('4', '1', 'assets/image/img/1/right_pro/xlx/04.jpg');
INSERT INTO `bm_details_pics` VALUES ('5', '1', 'assets/image/img/1/right_pro/xlx/05.jpg');
INSERT INTO `bm_details_pics` VALUES ('6', '1', 'assets/image/img/1/right_pro/xlx/06.jpg');
INSERT INTO `bm_details_pics` VALUES ('7', '1', 'assets/image/img/1/right_pro/xlx/07.jpg');
INSERT INTO `bm_details_pics` VALUES ('8', '1', 'assets/image/img/1/right_pro/xlx/08.jpg');
INSERT INTO `bm_details_pics` VALUES ('9', '1', 'assets/image/img/1/right_pro/xlx/09.jpg');
INSERT INTO `bm_details_pics` VALUES ('10', '1', 'assets/image/img/1/right_pro/xlx/10.jpg');
INSERT INTO `bm_details_pics` VALUES ('11', '1', 'assets/image/img/1/right_pro/xlx/11.jpg');
INSERT INTO `bm_details_pics` VALUES ('12', '1', 'assets/image/img/1/right_pro/xlx/12.jpg');
INSERT INTO `bm_details_pics` VALUES ('13', '1', 'assets/image/img/1/right_pro/xlx/13.jpg');
INSERT INTO `bm_details_pics` VALUES ('14', '1', 'assets/image/img/1/right_pro/xlx/14.jpg');
INSERT INTO `bm_details_pics` VALUES ('15', '1', 'assets/image/img/1/right_pro/xlx/15.jpg');
INSERT INTO `bm_details_pics` VALUES ('16', '1', 'assets/image/img/1/right_pro/xlx/16.jpg');
INSERT INTO `bm_details_pics` VALUES ('17', '1', 'assets/image/img/1/right_pro/xlx/17.jpg');
INSERT INTO `bm_details_pics` VALUES ('18', '1', 'assets/image/img/1/right_pro/xlx/18.jpg');
INSERT INTO `bm_details_pics` VALUES ('19', '1', 'assets/image/img/1/right_pro/xlx/19.jpg');
INSERT INTO `bm_details_pics` VALUES ('20', '1', 'assets/image/img/1/right_pro/xlx/20.jpg');

INSERT INTO `bm_details_pics` VALUES ('21', '2', 'assets/image/img/1/right_pro/qxcl/01.jpg');
INSERT INTO `bm_details_pics` VALUES ('22', '2', 'assets/image/img/1/right_pro/qxcl/02.jpg');
INSERT INTO `bm_details_pics` VALUES ('23', '2', 'assets/image/img/1/right_pro/qxcl/03.jpg');
INSERT INTO `bm_details_pics` VALUES ('24', '2', 'assets/image/img/1/right_pro/qxcl/04.jpg');
INSERT INTO `bm_details_pics` VALUES ('25', '2', 'assets/image/img/1/right_pro/qxcl/05.jpg');
INSERT INTO `bm_details_pics` VALUES ('26', '2', 'assets/image/img/1/right_pro/qxcl/06.jpg');
INSERT INTO `bm_details_pics` VALUES ('27', '2', 'assets/image/img/1/right_pro/qxcl/07.jpg');
INSERT INTO `bm_details_pics` VALUES ('28', '2', 'assets/image/img/1/right_pro/qxcl/08.jpg');
INSERT INTO `bm_details_pics` VALUES ('29', '2', 'assets/image/img/1/right_pro/qxcl/09.jpg');

INSERT INTO `bm_details_pics` VALUES ('30', '3', 'assets/image/img/1/right_pro/mxcl/01.jpg');
INSERT INTO `bm_details_pics` VALUES ('31', '3', 'assets/image/img/1/right_pro/mxcl/02.jpg');
INSERT INTO `bm_details_pics` VALUES ('32', '3', 'assets/image/img/1/right_pro/mxcl/03.jpg');
INSERT INTO `bm_details_pics` VALUES ('33', '3', 'assets/image/img/1/right_pro/mxcl/04.jpg');
INSERT INTO `bm_details_pics` VALUES ('34', '3', 'assets/image/img/1/right_pro/mxcl/05.jpg');
INSERT INTO `bm_details_pics` VALUES ('35', '3', 'assets/image/img/1/right_pro/mxcl/06.jpg');
INSERT INTO `bm_details_pics` VALUES ('36', '3', 'assets/image/img/1/right_pro/mxcl/07.jpg');
INSERT INTO `bm_details_pics` VALUES ('37', '3', 'assets/image/img/1/right_pro/mxcl/08.jpg');
INSERT INTO `bm_details_pics` VALUES ('38', '3', 'assets/image/img/1/right_pro/mxcl/09.jpg');
INSERT INTO `bm_details_pics` VALUES ('39', '3', 'assets/image/img/1/right_pro/mxcl/10.jpg');
INSERT INTO `bm_details_pics` VALUES ('40', '3', 'assets/image/img/1/right_pro/mxcl/11.jpg');
INSERT INTO `bm_details_pics` VALUES ('41', '3', 'assets/image/img/1/right_pro/mxcl/12.jpg');
INSERT INTO `bm_details_pics` VALUES ('42', '3', 'assets/image/img/1/right_pro/mxcl/13.jpg');

INSERT INTO `bm_details_pics` VALUES ('43', '4', 'assets/image/img/1/right_pro/sxyy/01.jpg');
INSERT INTO `bm_details_pics` VALUES ('44', '4', 'assets/image/img/1/right_pro/sxyy/02.jpg');
INSERT INTO `bm_details_pics` VALUES ('45', '4', 'assets/image/img/1/right_pro/sxyy/03.jpg');
INSERT INTO `bm_details_pics` VALUES ('46', '4', 'assets/image/img/1/right_pro/sxyy/04.jpg');
INSERT INTO `bm_details_pics` VALUES ('47', '4', 'assets/image/img/1/right_pro/sxyy/05.jpg');
INSERT INTO `bm_details_pics` VALUES ('48', '4', 'assets/image/img/1/right_pro/sxyy/06.jpg');
INSERT INTO `bm_details_pics` VALUES ('49', '4', 'assets/image/img/1/right_pro/sxyy/07.jpg');
INSERT INTO `bm_details_pics` VALUES ('50', '4', 'assets/image/img/1/right_pro/sxyy/08.jpg');
INSERT INTO `bm_details_pics` VALUES ('51', '4', 'assets/image/img/1/right_pro/sxyy/09.jpg');
INSERT INTO `bm_details_pics` VALUES ('52', '4', 'assets/image/img/1/right_pro/sxyy/10.jpg');
INSERT INTO `bm_details_pics` VALUES ('53', '4', 'assets/image/img/1/right_pro/sxyy/11.jpg');
INSERT INTO `bm_details_pics` VALUES ('54', '4', 'assets/image/img/1/right_pro/sxyy/12.jpg');
INSERT INTO `bm_details_pics` VALUES ('55', '4', 'assets/image/img/1/right_pro/sxyy/13.jpg');
INSERT INTO `bm_details_pics` VALUES ('56', '4', 'assets/image/img/1/right_pro/sxyy/14.jpg');
INSERT INTO `bm_details_pics` VALUES ('57', '4', 'assets/image/img/1/right_pro/sxyy/15.jpg');
INSERT INTO `bm_details_pics` VALUES ('58', '4', 'assets/image/img/1/right_pro/sxyy/16.jpg');
INSERT INTO `bm_details_pics` VALUES ('59', '4', 'assets/image/img/1/right_pro/sxyy/17.jpg');
INSERT INTO `bm_details_pics` VALUES ('60', '4', 'assets/image/img/1/right_pro/sxyy/18.jpg');
INSERT INTO `bm_details_pics` VALUES ('61', '4', 'assets/image/img/1/right_pro/sxyy/19.jpg');
INSERT INTO `bm_details_pics` VALUES ('62', '4', 'assets/image/img/1/right_pro/sxyy/20.jpg');

#用户表信息表
DROP TABLE IF EXISTS `bm_user`;
CREATE TABLE `bm_user` (
  `uid` int(11) NOT NULL auto_increment PRIMARY KEY,
  `uname` varchar(32) default NULL,
  `upawd` varchar(128) default NULL,
  `phone` int(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `bm_user` VALUES (1, 'dingding', '123456','12111111111');
INSERT INTO `bm_user` VALUES (2, 'sdsds', '123456','12111111111');
INSERT INTO `bm_user` VALUES (3, 'fsdfsf', '123456','12111111111');
INSERT INTO `bm_user` VALUES (4, 'tom', '123456','12111111111');
INSERT INTO `bm_user` VALUES (5, 'wang', '123456','12111111111');
INSERT INTO `bm_user` VALUES (NULL, 'dodo', '123456','12111111111');

#购物车表
DROP TABLE IF EXISTS `bm_cart`;
CREATE TABLE `bm_cart` (
  `cart_productid` int(11) NOT NULL auto_increment PRIMARY KEY,
  `lid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `titles` varchar(128) default NULL,
  `price` decimal(10,2) default NULL,
  `pic` varchar(128) default NULL,
  `lcount` int(11) default NULL 
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `bm_cart` VALUES ('1', '2', '1','【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克','420.00','../img/1/right_pro/qxcl/main01.jpg','1');
INSERT INTO `bm_cart` VALUES ('2', '5', '1','买1送1】八马茶业 私享浓情 安溪铁观音 浓香型 乌龙茶 茶叶礼盒装252g','120.00','../img/1/right_pro/qxcl/main01.jpg','1');

#创建产品分类表 手机端用
DROP TABLE IF EXISTS `fenleilist`;
CREATE TABLE `fenleilist` (
  `list_productid` int(11) NOT NULL auto_increment PRIMARY KEY,
  `lid` int(11) NOT NULL,
  `egtitle` varchar(128) default NULL,
  `titles` varchar(128) default NULL,
  `pic` varchar(128) default NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `fenleilist` VALUES ('1', '1','wlc','铁观音','../../../assets/image/img/1/right_pro/mxcl/main01.jpg');
INSERT INTO `fenleilist` VALUES ('2', '2','wlc','大红袍','../../../assets/image/img/1/right_pro/qxcl/main01.jpg');
INSERT INTO `fenleilist` VALUES ('3', '3','wlc','肉桂','../../../assets/image/img/1/right_pro/sxlq/main01.jpg');
INSERT INTO `fenleilist` VALUES ('4', '4','wlc','水仙','../../../assets/image/img/1/right_pro/sxyy/main01.jpg');
INSERT INTO `fenleilist` VALUES ('5', '5','wlc','凤凰单枞','../../../assets/image/img/1/right_pro/tjlr/main01.jpg');
INSERT INTO `fenleilist` VALUES ('6', '6','wlc','无奈','../../../assets/image/img/1/right_pro/xlx/main01.jpg');

INSERT INTO `fenleilist` VALUES ('7', '7','hc','正山小种','../../../assets/image/img/2/right_pro/ycjd/main01.jpg');
INSERT INTO `fenleilist` VALUES ('8', '8','hc','金骏眉','../../../assets/image/img/2/right_pro/ycjd/main02.jpg');
INSERT INTO `fenleilist` VALUES ('9', '9','hc','滇红','../../../assets/image/img/2/right_pro/ycjd/main03.jpg');
INSERT INTO `fenleilist` VALUES ('10', '10','hc','祁门红茶','../../../assets/image/img/2/right_pro/ycjd/main04.jpg');
INSERT INTO `fenleilist` VALUES ('11', '5','hc','凤凰单枞','../../../assets/image/img/2/right_pro/ycjd/main05.jpg');

INSERT INTO `fenleilist` VALUES ('12', '7','lc','正山小种','../../../assets/image/img/2/right_pro/dhp/main01.jpg');
INSERT INTO `fenleilist` VALUES ('13', '8','lc','金骏眉','../../../assets/image/img/2/right_pro/lxyc/main03.jpg');
INSERT INTO `fenleilist` VALUES ('14', '9','lc','滇红','../../../assets/image/img/2/right_pro/ycjd/main03.jpg');
INSERT INTO `fenleilist` VALUES ('15', '10','lc','祁门红茶','../../../assets/image/img/2/right_pro/zwyc/main02.jpg');
INSERT INTO `fenleilist` VALUES ('16', '5','lc','凤凰单枞','../../../assets/image/img/2/right_pro/dhp/main01.jpg');

INSERT INTO `fenleilist` VALUES ('17', '9','bc','滇红','../../../assets/image/img/2/right_pro/zwyc/main01.jpg');
INSERT INTO `fenleilist` VALUES ('18', '10','bc','祁门红茶','../../../assets/image/img/2/right_pro/zwyc/main02.jpg');
INSERT INTO `fenleilist` VALUES ('19', '5','bc','凤凰单枞','../../../assets/image/img/2/right_pro/zwyc/main03.jpg');

INSERT INTO `fenleilist` VALUES ('20', '5','huac','凤凰单枞','../../../assets/image/img/2/right_pro/zwyc/main02.jpg');

INSERT INTO `fenleilist` VALUES ('21', '5','csp','凤凰单枞','../../../assets/image/img/2/right_pro/zwyc/main03.jpg');

INSERT INTO `fenleilist` VALUES ('22', '5','cj','凤凰单枞','../../../assets/image/img/2/right_pro/dhp/main01.jpg');

INSERT INTO `fenleilist` VALUES ('23', '5','heij','凤凰单枞','../../../assets/image/img/2/right_pro/dhp/main01.jpg');

#创建首页图片表 手机端用
DROP TABLE IF EXISTS `bmphone_index`;
CREATE TABLE `bmphone_index` (
  `picid` int(11) NOT NULL auto_increment PRIMARY KEY,
  `lid` int(11) NOT NULL,
  `titles` varchar(128) default NULL,
  `price` decimal(10,2) default NULL,
  `feileiname` varchar(25) default NULL,
  `pic` varchar(128) default NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `bmphone_index` VALUES (null, '1','八马茶业 安溪铁观音茶叶 浓香型乌龙茶小浓香1号礼盒装250克','138.00','bkcl','../../../assets/image/img/2/right_pro/dhp/main01.jpg');
INSERT INTO `bmphone_index` VALUES (null, '1','八马茶业 安溪铁观音茶叶 浓香型乌龙茶小浓香1号礼盒装250克','138.00','bkcl','../../../assets/image/img/2/right_pro/lxyc/main02.jpg');
INSERT INTO `bmphone_index` VALUES (null, '1','八马茶业 安溪铁观音茶叶 浓香型乌龙茶小浓香1号礼盒装250克','138.00','bkcl','../../../assets/image/img/2/right_pro/ycjd/main03.jpg');
INSERT INTO `bmphone_index` VALUES (null, '1','八马茶业 安溪铁观音茶叶 浓香型乌龙茶小浓香1号礼盒装250克','138.00','bkcl','../../../assets/image/img/2/right_pro/dhp/main04.jpg');

INSERT INTO `bmphone_index` VALUES (null, '2','八马茶业 原厂大红袍乌龙茶礼盒装盒装250克','168.00','szz','../../../assets/image/img/1/right_pro/mxcl/main01.jpg');
INSERT INTO `bmphone_index` VALUES (null, '2','八马茶业 原厂大红袍乌龙茶礼盒装盒装250克','168.00','szz','../../../assets/image/img/1/right_pro/qxcl/main02.jpg');
INSERT INTO `bmphone_index` VALUES (null, '2','八马茶业 原厂大红袍乌龙茶礼盒装盒装250克','168.00','szz','../../../assets/image/img/1/right_pro/sxlq/main03.jpg');
INSERT INTO `bmphone_index` VALUES (null, '2','八马茶业 原厂大红袍乌龙茶礼盒装盒装250克','168.00','szz','../../../assets/image/img/1/right_pro/sxlq/main04.jpg');

#地址信息表
DROP TABLE IF EXISTS `bm_user_adress`;
CREATE TABLE `bm_user_adress` (
  `uid` int(11) NOT NULL ,
  `uname` varchar(32) default NULL,
  `phone` bigint(250) NOT NULL,
  `adress` varchar(250) default NULL
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `bm_user_adress` VALUES (1, 'dingding', '13968853090','湖南省沅江市工业园小区');
