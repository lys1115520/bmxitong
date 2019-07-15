set names utf8;
drop database if exists zy;
create database zy charset=utf8;
use zy;
create table zy_index_banner(
  bid int primary key auto_increment,
  banner_id int,
  img varchar(128)
);
insert into zy_index_banner 
values(null,1,"img/index/201901281735488015.jpg"),
(null,2,"img/index/201901181655339911.jpg"),
(null,3,"img/index/201902011034400653.jpg"),
(null,4,"img/index/201902211434361199.jpg");
create table zy_index_brandRecent(
  br int primary key auto_increment,
  img varchar(128)
);
insert into zy_index_brandRecent
values(null,"img/index/201902211433171335.jpg"),
(null,"img/index/201901301719599579.jpg");
create table zy_product_details(
  pid int primary key auto_increment,
  designer varchar(16),
  title varchar(64),
  price int,
  priceOld int,
  model varchar(16),
  colors varchar(32),
  sizes varchar(32),
  count varchar(4)
);
insert into zy_product_details values
(null,"Lightning bear","LNBR抽带工装衬衫男2019春装新款原创拼色多口袋美式潮牌长袖衬衣",297.00,338.00,"E0.35097","蓝色","S,M,L,XL,XXL,XXXL,4XL",35),
(null,"ERICD","ERICD 2019年学院风字母织带飘绳学生背包女式双肩包休闲包",159.00,189.00,"","黑红,黑蓝","均码",5),
(null,"油果日记","抹茶色牛角扣少女感中长连帽羊毛呢大衣外套 油果日记 vol.36",399.00,399.00,"抹茶绿","M",5);
create table zy_product_pic(
  picid int primary key auto_increment,
  product_id int,
  pic varchar(128),
  pwidth varchar(8),
  pheight varchar(8)
);
insert into zy_product_pic 
values(null,1,"img/details/201901171601509637.jpg","707","1000"),
(null,1,"img/details/201901171601588444.jpg","800","1200"),
(null,1,"img/details/201901171602005842.jpg","800","800"),
(null,1,"img/details/201901171602038881.jpg","800","800"),
(null,1,"img/details/201901171602052201.jpg","750","312"),
(null,1,"img/details/201901171602087806.jpg","800","800");

create table zy_user(
  uid int primary key auto_increment,
  uname varchar(8),
  upwd varchar(32)
);
create table zy_shoppingcart(
  sid int primary key auto_increment,
  uname varchar(8),
  pid int,
  designer varchar(16),
  title varchar(64),
  color varchar(8),
  size varchar(8),
  count varchar(4),
  price int,
  priceOld int
);