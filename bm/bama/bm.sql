#设置文件编码
SET NAMES UTF8;
#丢弃并创建数据库设置编码
DROP DATABASE IF EXISTS bm;
CREATE DATABASE bm CHARSET=UTF8;
#进入数据库
USE bm;

SET FOREIGN_KEY_CHECKS=0;
#创建产品详情表
DROP TABLE IF EXISTS `bm_product_details`;
CREATE TABLE `bm_product_details` (
  `lid` int(11) PRIMARY KEY NOT NULL auto_increment,
  `lname` varchar(32) default NULL,
  `titles` varchar(128) default NULL,
  `cid` int(11) default NULL,
  `cname` varchar(11) default NULL,
  `price` decimal(10,2) default NULL,
  `lcount` int(11) default NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#插入产品详情数据
INSERT INTO `bm_product_details` VALUES ('1', 'xlx', '【买2送苦荞茶H0348】八马茶业 安溪铁观音茶叶 浓香型乌龙茶小浓香1号礼盒装250克', '1', '铁观音', '600.00', '222');
INSERT INTO `bm_product_details` VALUES ('2', 'qxcl', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', '1', '铁观音', '420.00', '222');
INSERT INTO `bm_product_details` VALUES ('3', 'mxcl', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '1', '铁观音', '80.00', '222');
INSERT INTO `bm_product_details` VALUES ('4', 'sxyy', '【买1送1】八马茶叶 2019春茶私享雅韵安溪铁观音茶叶清香型乌龙茶兰花香新茶252g/盒', '1', '铁观音', '99.00', '222');
INSERT INTO `bm_product_details` VALUES ('5', 'sxlq', '【买1送1】八马茶业 私享浓情 安溪铁观音 浓香型 乌龙茶 茶叶礼盒装252g', '1', '铁观音', '120.00', '222');
INSERT INTO `bm_product_details` VALUES ('6', 'tjlr', '八马茶业 铁观音茶叶 清香型特级安溪乌龙茶新茶茶叶礼盒250克', '1', '铁观音', '300.00', '222');

INSERT INTO `bm_product_details` VALUES ('7', 'dhp', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', '2', '大红袍', '200.00', '222');
INSERT INTO `bm_product_details` VALUES ('8', 'kldhp', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '2', '大红袍', '100.00', '222');
INSERT INTO `bm_product_details` VALUES ('9', 'lxyc', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', '2', '大红袍', '200.00', '222');
INSERT INTO `bm_product_details` VALUES ('10', 'ycjd', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '2', '大红袍', '100.00', '222');
INSERT INTO `bm_product_details` VALUES ('11', 'yghx', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', '2', '大红袍', '200.00', '222');
INSERT INTO `bm_product_details` VALUES ('12', 'zwyc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '2', '大红袍', '100.00', '222');

INSERT INTO `bm_product_details` VALUES ('13', 'hczp', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', '3', '红茶', '200.00', '222');
INSERT INTO `bm_product_details` VALUES ('14', 'jjmgz', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '3', '红茶', '100.00', '222');
INSERT INTO `bm_product_details` VALUES ('15', 'jjmlh', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', '2', '红茶', '200.00', '222');
INSERT INTO `bm_product_details` VALUES ('16', 'qmhc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '3', '红茶', '100.00', '222');
INSERT INTO `bm_product_details` VALUES ('17', 'zsxzgz', '【买1送1】八马茶业 铁观音清香型兰花香新茶乌龙茶特级茶叶送礼礼盒装504克', '2', '红茶', '200.00', '222');
INSERT INTO `bm_product_details` VALUES ('18', 'zsxzlh', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '3', '红茶', '100.00', '222');

INSERT INTO `bm_product_details` VALUES ('19', 'bls', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '4', '普洱', '400.00', '222');
INSERT INTO `bm_product_details` VALUES ('20', 'pelsc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '4', '普洱', '400.00', '222');
INSERT INTO `bm_product_details` VALUES ('21', 'pesc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '4', '普洱', '400.00', '222');
INSERT INTO `bm_product_details` VALUES ('22', 'spe', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '4', '普洱', '400.00', '222');
INSERT INTO `bm_product_details` VALUES ('23', 'xxg', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '4', '普洱', '400.00', '222');
INSERT INTO `bm_product_details` VALUES ('24', 'zxpe', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '4', '普洱', '400.00', '222');

INSERT INTO `bm_product_details` VALUES ('25', 'ajbc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '5', '绿茶', '300.00', '222');
INSERT INTO `bm_product_details` VALUES ('26', 'lc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '5', '绿茶', '300.00', '222');
INSERT INTO `bm_product_details` VALUES ('27', 'ljlc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '5', '绿茶', '300.00', '222');
INSERT INTO `bm_product_details` VALUES ('28', 'xhlj', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '5', '绿茶', '300.00', '222');
INSERT INTO `bm_product_details` VALUES ('29', 'xhljh', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '5', '绿茶', '300.00', '222');
INSERT INTO `bm_product_details` VALUES ('30', 'zjlj', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '5', '绿茶', '300.00', '222');

INSERT INTO `bm_product_details` VALUES ('31', 'blz', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '6', '花茶', '200.00', '222');
INSERT INTO `bm_product_details` VALUES ('32', 'jhc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '6', '花茶', '200.00', '222');
INSERT INTO `bm_product_details` VALUES ('33', 'mghc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '6', '花茶', '200.00', '222');
INSERT INTO `bm_product_details` VALUES ('34', 'mldp', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '6', '花茶', '200.00', '222');
INSERT INTO `bm_product_details` VALUES ('35', 'mlhc', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '6', '花茶', '200.00', '222');
INSERT INTO `bm_product_details` VALUES ('36', 'tjdp', '八马茶业 铁观音茶叶 赛珍珠浓香型送礼过年货茶叶礼盒装250g', '6', '花茶', '200.00', '222');

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
INSERT INTO `bm_main_pics` VALUES ('1', '1', '../img/1/right_pro/xlx/main00.jpg', '../img/1/right_pro/xlx/main00.jpg', '../img/1/right_pro/xlx/main00.jpg');
INSERT INTO `bm_main_pics` VALUES ('2', '1', '../img/1/right_pro/xlx/main01.jpg', '../img/1/right_pro/xlx/main01.jpg', '../img/1/right_pro/xlx/main01.jpg');
INSERT INTO `bm_main_pics` VALUES ('3', '1', '../img/1/right_pro/xlx/main02.jpg', '../img/1/right_pro/xlx/main02.jpg', '../img/1/right_pro/xlx/main02.jpg');
INSERT INTO `bm_main_pics` VALUES ('4', '1', '../img/1/right_pro/xlx/main03.jpg', '../img/1/right_pro/xlx/main03.jpg', '../img/1/right_pro/xlx/main03.jpg');

INSERT INTO `bm_main_pics` VALUES ('5', '2', '../img/1/right_pro/qxcl/main01.jpg', '../img/1/right_pro/qxcl/main01.jpg', '../img/1/right_pro/qxcl/main01.jpg');
INSERT INTO `bm_main_pics` VALUES ('6', '2', '../img/1/right_pro/qxcl/main02.jpg', '../img/1/right_pro/qxcl/main02.jpg', '../img/1/right_pro/qxcl/main02.jpg');
INSERT INTO `bm_main_pics` VALUES ('7', '2', '../img/1/right_pro/qxcl/main03.jpg', '../img/1/right_pro/qxcl/main03.jpg', '../img/1/right_pro/qxcl/main03.jpg');
INSERT INTO `bm_main_pics` VALUES ('8', '2', '../img/1/right_pro/qxcl/main04.jpg', '../img/1/right_pro/qxcl/main04.jpg', '../img/1/right_pro/qxcl/main04.jpg');
INSERT INTO `bm_main_pics` VALUES ('9', '2', '../img/1/right_pro/qxcl/main05.jpg', '../img/1/right_pro/qxcl/main05.jpg', '../img/1/right_pro/qxcl/main05.jpg');

INSERT INTO `bm_main_pics` VALUES ('10', '3', '../img/1/right_pro/mxcl/main01.jpg', '../img/1/right_pro/mxcl/main01.jpg', '../img/1/right_pro/mxcl/main01.jpg');
INSERT INTO `bm_main_pics` VALUES ('11', '3', '../img/1/right_pro/mxcl/main02.jpg', '../img/1/right_pro/mxcl/main02.jpg', '../img/1/right_pro/mxcl/main02.jpg');
INSERT INTO `bm_main_pics` VALUES ('12', '3', '../img/1/right_pro/mxcl/main03.jpg', '../img/1/right_pro/mxcl/main03.jpg', '../img/1/right_pro/mxcl/main03.jpg');
INSERT INTO `bm_main_pics` VALUES ('13', '3', '../img/1/right_pro/mxcl/main04.jpg', '../img/1/right_pro/mxcl/main04.jpg', '../img/1/right_pro/mxcl/main04.jpg');

INSERT INTO `bm_main_pics` VALUES ('14', '4', '../img/1/right_pro/sxyy/main01.jpg', '../img/1/right_pro/sxyy/main01.jpg', '../img/1/right_pro/sxyy/main01.jpg');
INSERT INTO `bm_main_pics` VALUES ('15', '4', '../img/1/right_pro/sxyy/main02.jpg', '../img/1/right_pro/sxyy/main02.jpg', '../img/1/right_pro/sxyy/main02.jpg');
INSERT INTO `bm_main_pics` VALUES ('16', '4', '../img/1/right_pro/sxyy/main03.jpg', '../img/1/right_pro/sxyy/main03.jpg', '../img/1/right_pro/sxyy/main03.jpg');
INSERT INTO `bm_main_pics` VALUES ('17', '4', '../img/1/right_pro/sxyy/main04.jpg', '../img/1/right_pro/sxyy/main04.jpg', '../img/1/right_pro/sxyy/main04.jpg');
INSERT INTO `bm_main_pics` VALUES ('18', '4', '../img/1/right_pro/sxyy/main05.jpg', '../img/1/right_pro/sxyy/main05.jpg', '../img/1/right_pro/sxyy/main05.jpg');

INSERT INTO `bm_main_pics` VALUES ('19', '5', '../img/1/right_pro/sxlq/main01.jpg', '../img/1/right_pro/sxlq/main01.jpg', '../img/1/right_pro/sxlq/main01.jpg');
INSERT INTO `bm_main_pics` VALUES ('20', '5', '../img/1/right_pro/sxlq/main02.jpg', '../img/1/right_pro/sxlq/main02.jpg', '../img/1/right_pro/sxlq/main02.jpg');
INSERT INTO `bm_main_pics` VALUES ('21', '5', '../img/1/right_pro/sxlq/main03.jpg', '../img/1/right_pro/sxlq/main03.jpg', '../img/1/right_pro/sxlq/main03.jpg');
INSERT INTO `bm_main_pics` VALUES ('22', '5', '../img/1/right_pro/sxlq/main04.jpg', '../img/1/right_pro/sxlq/main04.jpg', '../img/1/right_pro/sxlq/main04.jpg');
INSERT INTO `bm_main_pics` VALUES ('23', '5', '../img/1/right_pro/sxlq/main05.jpg', '../img/1/right_pro/sxlq/main05.jpg', '../img/1/right_pro/sxlq/main05.jpg');

INSERT INTO `bm_main_pics` VALUES ('24', '6', '../img/1/right_pro/tjlr/main01.jpg', '../img/1/right_pro/tjlr/main01.jpg', '../img/1/right_pro/tjlr/main01.jpg');
INSERT INTO `bm_main_pics` VALUES ('25', '6', '../img/1/right_pro/tjlr/main02.jpg', '../img/1/right_pro/tjlr/main02.jpg', '../img/1/right_pro/tjlr/main02.jpg');
INSERT INTO `bm_main_pics` VALUES ('26', '6', '../img/1/right_pro/tjlr/main03.jpg', '../img/1/right_pro/tjlr/main03.jpg', '../img/1/right_pro/tjlr/main03.jpg');
INSERT INTO `bm_main_pics` VALUES ('27', '6', '../img/1/right_pro/tjlr/main04.jpg', '../img/1/right_pro/tjlr/main04.jpg', '../img/1/right_pro/tjlr/main04.jpg');
INSERT INTO `bm_main_pics` VALUES ('28', '6', '../img/1/right_pro/tjlr/main05.jpg', '../img/1/right_pro/tjlr/main05.jpg', '../img/1/right_pro/tjlr/main05.jpg');

INSERT INTO `bm_main_pics` VALUES ('29', '7', '../img/2/right_pro/dhp/main01.jpg', '../img/2/right_pro/dhp/main01.jpg', '../img/2/right_pro/dhp/main01.jpg');
INSERT INTO `bm_main_pics` VALUES ('30', '7', '../img/2/right_pro/dhp/main02.jpg', '../img/2/right_pro/dhp/main02.jpg', '../img/2/right_pro/dhp/main02.jpg');
INSERT INTO `bm_main_pics` VALUES ('31', '7', '../img/2/right_pro/dhp/main03.jpg', '../img/2/right_pro/dhp/main03.jpg', '../img/2/right_pro/dhp/main03.jpg');
INSERT INTO `bm_main_pics` VALUES ('32', '7', '../img/2/right_pro/dhp/main04.jpg', '../img/2/right_pro/dhp/main04.jpg', '../img/2/right_pro/dhp/main04.jpg');
INSERT INTO `bm_main_pics` VALUES ('33', '7', '../img/2/right_pro/dhp/main05.jpg', '../img/2/right_pro/dhp/main05.jpg', '../img/2/right_pro/dhp/main05.jpg');

INSERT INTO `bm_main_pics` VALUES ('34', '8', '../img/2/right_pro/kldhp/main01.jpg', '../img/2/right_pro/kldhp/main01.jpg', '../img/2/right_pro/kldhp/main01.jpg');
INSERT INTO `bm_main_pics` VALUES ('35', '8', '../img/2/right_pro/kldhp/main02.jpg', '../img/2/right_pro/kldhp/main02.jpg', '../img/2/right_pro/kldhp/main02.jpg');
INSERT INTO `bm_main_pics` VALUES ('36', '8', '../img/2/right_pro/kldhp/main03.jpg', '../img/2/right_pro/kldhp/main03.jpg', '../img/2/right_pro/kldhp/main03.jpg');
INSERT INTO `bm_main_pics` VALUES ('37', '8', '../img/2/right_pro/kldhp/main04.jpg', '../img/2/right_pro/kldhp/main04.jpg', '../img/2/right_pro/kldhp/main04.jpg');
INSERT INTO `bm_main_pics` VALUES ('38', '8', '../img/2/right_pro/kldhp/main05.jpg', '../img/2/right_pro/kldhp/main05.jpg', '../img/2/right_pro/kldhp/main05.jpg');

INSERT INTO `bm_main_pics` VALUES ('39', '9', '../img/2/right_pro/lxyc/main01.jpg', '../img/2/right_pro/lxyc/main01.jpg', '../img/2/right_pro/lxyc/main01.jpg');
INSERT INTO `bm_main_pics` VALUES ('40', '9', '../img/2/right_pro/lxyc/main02.jpg', '../img/2/right_pro/lxyc/main02.jpg', '../img/2/right_pro/lxyc/main02.jpg');
INSERT INTO `bm_main_pics` VALUES ('41', '9', '../img/2/right_pro/lxyc/main03.jpg', '../img/2/right_pro/lxyc/main03.jpg', '../img/2/right_pro/lxyc/main03.jpg');
INSERT INTO `bm_main_pics` VALUES ('42', '9', '../img/2/right_pro/lxyc/main04.jpg', '../img/2/right_pro/lxyc/main04.jpg', '../img/2/right_pro/lxyc/main04.jpg');
INSERT INTO `bm_main_pics` VALUES ('43', '9', '../img/2/right_pro/lxyc/main05.jpg', '../img/2/right_pro/lxyc/main05.jpg', '../img/2/right_pro/lxyc/main05.jpg');

INSERT INTO `bm_main_pics` VALUES ('44', '10', '../img/2/right_pro/ycjd/main01.jpg', '../img/2/right_pro/ycjd/main01.jpg', '../img/2/right_pro/ycjd/main01.jpg');
INSERT INTO `bm_main_pics` VALUES ('45', '10', '../img/2/right_pro/ycjd/main02.jpg', '../img/2/right_pro/ycjd/main02.jpg', '../img/2/right_pro/ycjd/main02.jpg');
INSERT INTO `bm_main_pics` VALUES ('46', '10', '../img/2/right_pro/ycjd/main03.jpg', '../img/2/right_pro/ycjd/main03.jpg', '../img/2/right_pro/ycjd/main03.jpg');
INSERT INTO `bm_main_pics` VALUES ('47', '10', '../img/2/right_pro/ycjd/main04.jpg', '../img/2/right_pro/ycjd/main04.jpg', '../img/2/right_pro/ycjd/main04.jpg');
INSERT INTO `bm_main_pics` VALUES ('48', '10', '../img/2/right_pro/ycjd/main05.jpg', '../img/2/right_pro/ycjd/main05.jpg', '../img/2/right_pro/ycjd/main05.jpg');

#商品详情图片表
DROP TABLE IF EXISTS `bm_details_pics`;
CREATE TABLE `bm_details_pics` (
  `dtl_psid` int(11) NOT NULL auto_increment PRIMARY KEY,
  `lid` int(11) NOT NULL,
  `psrc` varchar(128) default NULL
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;

#插入数据
INSERT INTO `bm_details_pics` VALUES ('1', '1', '../img/1/right_pro/xlx/01.jpg');
INSERT INTO `bm_details_pics` VALUES ('2', '1', '../img/1/right_pro/xlx/02.jpg');
INSERT INTO `bm_details_pics` VALUES ('3', '1', '../img/1/right_pro/xlx/03.jpg');
INSERT INTO `bm_details_pics` VALUES ('4', '1', '../img/1/right_pro/xlx/04.jpg');
INSERT INTO `bm_details_pics` VALUES ('5', '1', '../img/1/right_pro/xlx/05.jpg');
INSERT INTO `bm_details_pics` VALUES ('6', '1', '../img/1/right_pro/xlx/06.jpg');
INSERT INTO `bm_details_pics` VALUES ('7', '1', '../img/1/right_pro/xlx/07.jpg');
INSERT INTO `bm_details_pics` VALUES ('8', '1', '../img/1/right_pro/xlx/08.jpg');
INSERT INTO `bm_details_pics` VALUES ('9', '1', '../img/1/right_pro/xlx/09.jpg');
INSERT INTO `bm_details_pics` VALUES ('10', '1', '../img/1/right_pro/xlx/10.jpg');
INSERT INTO `bm_details_pics` VALUES ('11', '1', '../img/1/right_pro/xlx/11.jpg');
INSERT INTO `bm_details_pics` VALUES ('12', '1', '../img/1/right_pro/xlx/12.jpg');
INSERT INTO `bm_details_pics` VALUES ('13', '1', '../img/1/right_pro/xlx/13.jpg');
INSERT INTO `bm_details_pics` VALUES ('14', '1', '../img/1/right_pro/xlx/14.jpg');
INSERT INTO `bm_details_pics` VALUES ('15', '1', '../img/1/right_pro/xlx/15.jpg');
INSERT INTO `bm_details_pics` VALUES ('16', '1', '../img/1/right_pro/xlx/16.jpg');
INSERT INTO `bm_details_pics` VALUES ('17', '1', '../img/1/right_pro/xlx/17.jpg');
INSERT INTO `bm_details_pics` VALUES ('18', '1', '../img/1/right_pro/xlx/18.jpg');
INSERT INTO `bm_details_pics` VALUES ('19', '1', '../img/1/right_pro/xlx/19.jpg');
INSERT INTO `bm_details_pics` VALUES ('20', '1', '../img/1/right_pro/xlx/20.jpg');

INSERT INTO `bm_details_pics` VALUES ('21', '2', '../img/1/right_pro/qxcl/01.jpg');
INSERT INTO `bm_details_pics` VALUES ('22', '2', '../img/1/right_pro/qxcl/02.jpg');
INSERT INTO `bm_details_pics` VALUES ('23', '2', '../img/1/right_pro/qxcl/03.jpg');
INSERT INTO `bm_details_pics` VALUES ('24', '2', '../img/1/right_pro/qxcl/04.jpg');
INSERT INTO `bm_details_pics` VALUES ('25', '2', '../img/1/right_pro/qxcl/05.jpg');
INSERT INTO `bm_details_pics` VALUES ('26', '2', '../img/1/right_pro/qxcl/06.jpg');
INSERT INTO `bm_details_pics` VALUES ('27', '2', '../img/1/right_pro/qxcl/07.jpg');
INSERT INTO `bm_details_pics` VALUES ('28', '2', '../img/1/right_pro/qxcl/08.jpg');
INSERT INTO `bm_details_pics` VALUES ('29', '2', '../img/1/right_pro/qxcl/09.jpg');

INSERT INTO `bm_details_pics` VALUES ('30', '3', '../img/1/right_pro/mxcl/01.jpg');
INSERT INTO `bm_details_pics` VALUES ('31', '3', '../img/1/right_pro/mxcl/02.jpg');
INSERT INTO `bm_details_pics` VALUES ('32', '3', '../img/1/right_pro/mxcl/03.jpg');
INSERT INTO `bm_details_pics` VALUES ('33', '3', '../img/1/right_pro/mxcl/04.jpg');
INSERT INTO `bm_details_pics` VALUES ('34', '3', '../img/1/right_pro/mxcl/05.jpg');
INSERT INTO `bm_details_pics` VALUES ('35', '3', '../img/1/right_pro/mxcl/06.jpg');
INSERT INTO `bm_details_pics` VALUES ('36', '3', '../img/1/right_pro/mxcl/07.jpg');
INSERT INTO `bm_details_pics` VALUES ('37', '3', '../img/1/right_pro/mxcl/08.jpg');
INSERT INTO `bm_details_pics` VALUES ('38', '3', '../img/1/right_pro/mxcl/09.jpg');
INSERT INTO `bm_details_pics` VALUES ('39', '3', '../img/1/right_pro/mxcl/10.jpg');
INSERT INTO `bm_details_pics` VALUES ('40', '3', '../img/1/right_pro/mxcl/11.jpg');
INSERT INTO `bm_details_pics` VALUES ('41', '3', '../img/1/right_pro/mxcl/12.jpg');
INSERT INTO `bm_details_pics` VALUES ('42', '3', '../img/1/right_pro/mxcl/13.jpg');

INSERT INTO `bm_details_pics` VALUES ('43', '4', '../img/1/right_pro/sxyy/01.jpg');
INSERT INTO `bm_details_pics` VALUES ('44', '4', '../img/1/right_pro/sxyy/02.jpg');
INSERT INTO `bm_details_pics` VALUES ('45', '4', '../img/1/right_pro/sxyy/03.jpg');
INSERT INTO `bm_details_pics` VALUES ('46', '4', '../img/1/right_pro/sxyy/04.jpg');
INSERT INTO `bm_details_pics` VALUES ('47', '4', '../img/1/right_pro/sxyy/05.jpg');
INSERT INTO `bm_details_pics` VALUES ('48', '4', '../img/1/right_pro/sxyy/06.jpg');
INSERT INTO `bm_details_pics` VALUES ('49', '4', '../img/1/right_pro/sxyy/07.jpg');
INSERT INTO `bm_details_pics` VALUES ('50', '4', '../img/1/right_pro/sxyy/08.jpg');
INSERT INTO `bm_details_pics` VALUES ('51', '4', '../img/1/right_pro/sxyy/09.jpg');
INSERT INTO `bm_details_pics` VALUES ('52', '4', '../img/1/right_pro/sxyy/10.jpg');
INSERT INTO `bm_details_pics` VALUES ('53', '4', '../img/1/right_pro/sxyy/11.jpg');
INSERT INTO `bm_details_pics` VALUES ('54', '4', '../img/1/right_pro/sxyy/12.jpg');
INSERT INTO `bm_details_pics` VALUES ('55', '4', '../img/1/right_pro/sxyy/13.jpg');
INSERT INTO `bm_details_pics` VALUES ('56', '4', '../img/1/right_pro/sxyy/14.jpg');
INSERT INTO `bm_details_pics` VALUES ('57', '4', '../img/1/right_pro/sxyy/15.jpg');
INSERT INTO `bm_details_pics` VALUES ('58', '4', '../img/1/right_pro/sxyy/16.jpg');
INSERT INTO `bm_details_pics` VALUES ('59', '4', '../img/1/right_pro/sxyy/17.jpg');
INSERT INTO `bm_details_pics` VALUES ('60', '4', '../img/1/right_pro/sxyy/18.jpg');
INSERT INTO `bm_details_pics` VALUES ('61', '4', '../img/1/right_pro/sxyy/19.jpg');
INSERT INTO `bm_details_pics` VALUES ('62', '4', '../img/1/right_pro/sxyy/20.jpg');

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



