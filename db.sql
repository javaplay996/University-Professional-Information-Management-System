/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jspmm2ql6
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jspmm2ql6` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jspmm2ql6`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg');
insert  into `config`(`id`,`name`,`value`) values (5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `dangfeidengji` */

DROP TABLE IF EXISTS `dangfeidengji`;

CREATE TABLE `dangfeidengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `suozaizhibu` varchar(200) DEFAULT NULL COMMENT '所在支部',
  `jiaonajine` int(11) DEFAULT NULL COMMENT '缴纳金额',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1608199079227 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='党费登记';

/*Data for the table `dangfeidengji` */

insert  into `dangfeidengji`(`id`,`addtime`,`zhanghao`,`xingming`,`suozaizhibu`,`jiaonajine`,`dengjiriqi`,`ispay`) values (1608198668388,'2020-12-17 17:51:07','001','张三','党支部1',300,'2020-12-17','已支付');
insert  into `dangfeidengji`(`id`,`addtime`,`zhanghao`,`xingming`,`suozaizhibu`,`jiaonajine`,`dengjiriqi`,`ispay`) values (1608198676071,'2020-12-17 17:51:15','002','李四','党支部2',500,'2020-12-17','未支付');
insert  into `dangfeidengji`(`id`,`addtime`,`zhanghao`,`xingming`,`suozaizhibu`,`jiaonajine`,`dengjiriqi`,`ispay`) values (1608199079226,'2020-12-17 17:57:59','003','王五','党支部3',200,'2020-12-17','已支付');

/*Table structure for table `dangyuan` */

DROP TABLE IF EXISTS `dangyuan`;

CREATE TABLE `dangyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `minzu` varchar(200) DEFAULT NULL COMMENT '民族',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `jiguan` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `chushengriqi` date DEFAULT NULL COMMENT '出生日期',
  `wenhuachengdu` varchar(200) DEFAULT NULL COMMENT '文化程度',
  `gongzuodanwei` varchar(200) DEFAULT NULL COMMENT '工作单位',
  `gongzuozhiwu` varchar(200) DEFAULT NULL COMMENT '工作职务',
  `rudangshijian` date DEFAULT NULL COMMENT '入党时间',
  `zhuanzhengshijian` date DEFAULT NULL COMMENT '转正时间',
  `suozaizhibu` varchar(200) DEFAULT NULL COMMENT '所在支部',
  `zhengjianzhaopian` varchar(200) DEFAULT NULL COMMENT '证件照片',
  `qianfariqi` varchar(200) DEFAULT NULL COMMENT '签发日期',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `zhanghao` (`zhanghao`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1608199057451 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='党员';

/*Data for the table `dangyuan` */

insert  into `dangyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`minzu`,`xingbie`,`jiguan`,`chushengriqi`,`wenhuachengdu`,`gongzuodanwei`,`gongzuozhiwu`,`rudangshijian`,`zhuanzhengshijian`,`suozaizhibu`,`zhengjianzhaopian`,`qianfariqi`) values (1608198583190,'2020-12-17 17:49:43','001','001','张三','汉','男','广东','2020-12-17','本科','南方电网','主管','2020-12-16','2020-12-17','党支部1','http://localhost:8080/jspmm2ql6/upload/1608198563915.png','2020/12/17');
insert  into `dangyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`minzu`,`xingbie`,`jiguan`,`chushengriqi`,`wenhuachengdu`,`gongzuodanwei`,`gongzuozhiwu`,`rudangshijian`,`zhuanzhengshijian`,`suozaizhibu`,`zhengjianzhaopian`,`qianfariqi`) values (1608198651549,'2020-12-17 17:50:51','002','001','李四','汉','女','湖南','2020-12-01','高中','南方电网','职员','2020-12-17','2020-12-17','党支部2','http://localhost:8080/jspmm2ql6/upload/1608198644503.jpg','2020/12/17');
insert  into `dangyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`minzu`,`xingbie`,`jiguan`,`chushengriqi`,`wenhuachengdu`,`gongzuodanwei`,`gongzuozhiwu`,`rudangshijian`,`zhuanzhengshijian`,`suozaizhibu`,`zhengjianzhaopian`,`qianfariqi`) values (1608199057450,'2020-12-17 17:57:37','003','001','王五','汉','男','广东','2019-03-13','中专','南方电网','主管','2020-12-02','2020-12-17','党支部3','http://localhost:8080/jspmm2ql6/upload/1608199048080.jpg','2020/12/17');

/*Table structure for table `jiangchengjilu` */

DROP TABLE IF EXISTS `jiangchengjilu`;

CREATE TABLE `jiangchengjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `suozaizhibu` varchar(200) DEFAULT NULL COMMENT '所在支部',
  `jiangcheng` varchar(200) DEFAULT NULL COMMENT '奖惩',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tiaowen` varchar(200) DEFAULT NULL COMMENT '条文',
  `wendang` varchar(200) DEFAULT NULL COMMENT '文档',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1608199120172 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='奖惩记录';

/*Data for the table `jiangchengjilu` */

insert  into `jiangchengjilu`(`id`,`addtime`,`zhanghao`,`xingming`,`suozaizhibu`,`jiangcheng`,`leixing`,`tiaowen`,`wendang`,`riqi`) values (1608198734550,'2020-12-17 17:52:14','001','张三','党支部1','奖励','嘉奖','思想做法，工作态度差','http://localhost:8080/jspmm2ql6/file/download?fileName=1608198731770.docx','2020-12-17');
insert  into `jiangchengjilu`(`id`,`addtime`,`zhanghao`,`xingming`,`suozaizhibu`,`jiangcheng`,`leixing`,`tiaowen`,`wendang`,`riqi`) values (1608198752219,'2020-12-17 17:52:31','002','李四','党支部2','惩处','警告','思想做法，工作态度差','http://localhost:8080/jspmm2ql6/file/download?fileName=1608198749499.docx','2020-12-17');
insert  into `jiangchengjilu`(`id`,`addtime`,`zhanghao`,`xingming`,`suozaizhibu`,`jiangcheng`,`leixing`,`tiaowen`,`wendang`,`riqi`) values (1608199120171,'2020-12-17 17:58:39','003','王五','党支部3','惩处','留党查看','思想做法，工作态度差','http://localhost:8080/jspmm2ql6/file/download?fileName=1608199116379.docx','2020-12-17');

/*Table structure for table `jicengdanwei` */

DROP TABLE IF EXISTS `jicengdanwei`;

CREATE TABLE `jicengdanwei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `dangzhibu` varchar(200) DEFAULT NULL COMMENT '党支部',
  `danweimingcheng` varchar(200) DEFAULT NULL COMMENT '单位名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `danweidizhi` varchar(200) DEFAULT NULL COMMENT '单位地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1608199454145 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='基层单位';

/*Data for the table `jicengdanwei` */

insert  into `jicengdanwei`(`id`,`addtime`,`zhanghao`,`dangzhibu`,`danweimingcheng`,`lianxiren`,`lianxidianhua`,`danweidizhi`) values (1608197854431,'2020-12-17 17:37:33','001','党支部1','基层单位1','张三','138000000','xx省xx市xx县xx号');
insert  into `jicengdanwei`(`id`,`addtime`,`zhanghao`,`dangzhibu`,`danweimingcheng`,`lianxiren`,`lianxidianhua`,`danweidizhi`) values (1608197879369,'2020-12-17 17:37:58','001','党支部1','基层单位2','李四','13800000000','xx省xx市xx县xx号');
insert  into `jicengdanwei`(`id`,`addtime`,`zhanghao`,`dangzhibu`,`danweimingcheng`,`lianxiren`,`lianxidianhua`,`danweidizhi`) values (1608199454144,'2020-12-17 18:04:13','004','党支部4','基层单位3','李四','13823888882','xx省xx市xx县xx号');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','ngqvvdidpekqvzcj4076oyf0izepqtk4','2020-12-17 17:09:11','2020-12-17 18:56:22');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1,'1','dangyuan','党员','lrlu96f87l1btzsvhmq0cx248eoowb3t','2020-12-17 17:17:02','2020-12-17 18:17:03');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1,'1','zhibu','支部','w8efhq9xkrz3c3fz6dgztk9trch8dnk8','2020-12-17 17:18:21','2020-12-17 18:18:21');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1608197383165,'001','zhibu','支部','p7i0egofkebmgbjf7fevz6jrtta5fj6d','2020-12-17 17:36:24','2020-12-17 18:46:36');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (5,1608198583190,'001','dangyuan','党员','p64k1bj6iwvrditvy4jzanyq44zbq6ed','2020-12-17 17:52:50','2020-12-17 18:52:50');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (6,1608199057450,'003','dangyuan','党员','g26ivuguh0qebktkl0hyj1jymxt2svnn','2020-12-17 18:03:00','2020-12-17 19:03:01');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (7,1608199181916,'004','zhibu','支部','13u05cup4ivaoeyin2shic24xi7oge2f','2020-12-17 18:03:40','2020-12-17 19:03:41');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2020-12-17 16:57:23');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `neirong` longtext COMMENT '内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1608199351949 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`wenjian`,`neirong`,`riqi`) values (1608197721521,'2020-12-17 17:35:20','2020/12/17日常公告','日常公告','http://localhost:8080/jspmm2ql6/file/download?fileName=1608197705263.docx','在2019年6月29日召开的昌邑市教育系统“庆七一”表彰暨中小学党建工作会议上，昌邑市第一中学党委被授予“昌邑市教育系统2018年度先进基层党组织”称号，昌邑市第一中学第一教师党支部被授予“昌邑市2018年度先进教师党支部（党小组）”称号，魏效光、徐保国、蒋景春被授予“昌邑市教育系统优秀共产党员”称号。','2020-12-17 17:34:43');
insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`wenjian`,`neirong`,`riqi`) values (1608197740615,'2020-12-17 17:35:40','2020疫情中央的措施','紧急通知','http://localhost:8080/jspmm2ql6/file/download?fileName=1608197733320.docx','在2019年6月29日召开的昌邑市教育系统“庆七一”表彰暨中小学党建工作会议上，昌邑市第一中学党委被授予“昌邑市教育系统2018年度先进基层党组织”称号，昌邑市第一中学第一教师党支部被授予“昌邑市2018年度先进教师党支部（党小组）”称号，魏效光、徐保国、蒋景春被授予“昌邑市教育系统优秀共产党员”称号。','2020-12-17 17:35:22');
insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`wenjian`,`neirong`,`riqi`) values (1608197774962,'2020-12-17 17:36:13','2020xx党支荣誉表彰','荣誉表彰','http://localhost:8080/jspmm2ql6/file/download?fileName=1608197767895.docx','在2019年6月29日召开的昌邑市教育系统“庆七一”表彰暨中小学党建工作会议上，昌邑市第一中学党委被授予“昌邑市教育系统2018年度先进基层党组织”称号，昌邑市第一中学第一教师党支部被授予“昌邑市2018年度先进教师党支部（党小组）”称号，魏效光、徐保国、蒋景春被授予“昌邑市教育系统优秀共产党员”称号。','2020-12-17 17:35:43');
insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`wenjian`,`neirong`,`riqi`) values (1608199351948,'2020-12-17 18:02:31','2020疫情中央的措施','日常公告','http://localhost:8080/jspmm2ql6/file/download?fileName=1608199345945.docx','工作日志是指针对自己的工作，每天记录工作的内容、所花费的时间以及在工作过程中遇到的问题，解决问题的思路和方法。最好可以详细客观的记录下你所面对的选择、观点、观察、方法、结果和决定，这样每天日事日清，经过长期的积累，才能达到通过工作日志提高自己的工作技能。\r\n随着移动互联网时代的到来，QQ、微博、微信等新应用层出不穷，人们对于时间资源的需求也越来越大，而另一方面，时间的碎片化往往让很多工作者结束一天工作的时候，却想不起来今天到底做了哪些工作。工作日志在帮助人们抵抗时间碎片化方面能够起到一定的作用。','2020-12-17 18:02:35');

/*Table structure for table `zhibu` */

DROP TABLE IF EXISTS `zhibu`;

CREATE TABLE `zhibu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `dangzhibu` varchar(200) NOT NULL COMMENT '党支部',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `bangongdizhi` varchar(200) DEFAULT NULL COMMENT '办公地址',
  `zhibuxiangqing` longtext COMMENT '支部详情',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `zhanghao` (`zhanghao`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1608199181917 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='支部';

/*Data for the table `zhibu` */

insert  into `zhibu`(`id`,`addtime`,`zhanghao`,`mima`,`dangzhibu`,`fuzeren`,`lianxifangshi`,`bangongdizhi`,`zhibuxiangqing`) values (1608197383165,'2020-12-17 17:29:43','001','001','党支部1','张三','13800000000','xx省xx市xx县','党支部：是党组织开展工作的基本单元，是党的全部工作和战斗力的基础，是团结群众的核心、教育党员的学校、攻坚克难的堡垒，在社会基层单位中发挥核心作用。凡有正式党员3人以上、50人以下的基层单位，都应当设立党支部。\r\n');
insert  into `zhibu`(`id`,`addtime`,`zhanghao`,`mima`,`dangzhibu`,`fuzeren`,`lianxifangshi`,`bangongdizhi`,`zhibuxiangqing`) values (1608197415629,'2020-12-17 17:30:15','002','001','党支部2','李四','13800000000','xx省xx市xx县','党支部：是党组织开展工作的基本单元，是党的全部工作和战斗力的基础，是团结群众的核心、教育党员的学校、攻坚克难的堡垒，在社会基层单位中发挥核心作用。凡有正式党员3人以上、50人以下的基层单位，都应当设立党支部。\r\n');
insert  into `zhibu`(`id`,`addtime`,`zhanghao`,`mima`,`dangzhibu`,`fuzeren`,`lianxifangshi`,`bangongdizhi`,`zhibuxiangqing`) values (1608197441081,'2020-12-17 17:30:41','003','001','党支部3','王五','13800000000','xx省xx市xx县','党支部：是党组织开展工作的基本单元，是党的全部工作和战斗力的基础，是团结群众的核心、教育党员的学校、攻坚克难的堡垒，在社会基层单位中发挥核心作用。凡有正式党员3人以上、50人以下的基层单位，都应当设立党支部。\r\n');
insert  into `zhibu`(`id`,`addtime`,`zhanghao`,`mima`,`dangzhibu`,`fuzeren`,`lianxifangshi`,`bangongdizhi`,`zhibuxiangqing`) values (1608199181916,'2020-12-17 17:59:41','004','001','党支部4','孙七','13800000000','xx省xx市xx县','编辑器可传文字/图片<img src=\"http://localhost:8080/jspmm2ql6/upload/1608199180349.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmm2ql6/upload/1608199180349.jpg\">\r\n');

/*Table structure for table `zhiburizhi` */

DROP TABLE IF EXISTS `zhiburizhi`;

CREATE TABLE `zhiburizhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `dangzhibu` varchar(200) DEFAULT NULL COMMENT '党支部',
  `rizhi` varchar(200) DEFAULT NULL COMMENT '日志',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `beizhu` longtext COMMENT '备注',
  `neirong` longtext COMMENT '内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1608199496617 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='支部日志';

/*Data for the table `zhiburizhi` */

insert  into `zhiburizhi`(`id`,`addtime`,`zhanghao`,`dangzhibu`,`rizhi`,`leixing`,`wenjian`,`beizhu`,`neirong`,`riqi`) values (1608198474446,'2020-12-17 17:47:53','001','党支部1','工作日志','日常','http://localhost:8080/jspmm2ql6/file/download?fileName=1608198432575.docx','工作日志是指针对自己的工作，每天记录工作的内容、所花费的时间以及在工作过程中遇到的问题','工作日志是指针对自己的工作，每天记录工作的内容、所花费的时间以及在工作过程中遇到的问题，解决问题的思路和方法。最好可以详细客观的记录下你所面对的选择、观点、观察、方法、结果和决定，这样每天日事日清，经过长期的积累，才能达到通过工作日志提高自己的工作技能。\r\n随着<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%A7%BB%E5%8A%A8%E4%BA%92%E8%81%94%E7%BD%91/7837035\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">移动互联网时代的到来，<a target=\"_blank\" href=\"https://baike.baidu.com/item/QQ/111306\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">QQ、微博、微信等新应用层出不穷，人们对于时间资源的需求也越来越大，而另一方面，时间的碎片化往往让很多工作者结束一天工作的时候，却想不起来今天到底做了哪些工作。工作日志在帮助人们抵抗时间碎片化方面能够起到一定的作用。\r\n\r\n','2020-12-17 17:46:48');
insert  into `zhiburizhi`(`id`,`addtime`,`zhanghao`,`dangzhibu`,`rizhi`,`leixing`,`wenjian`,`beizhu`,`neirong`,`riqi`) values (1608199496616,'2020-12-17 18:04:55','004','党支部4','工作日志1','疫情','http://localhost:8080/jspmm2ql6/file/download?fileName=1608199485633.docx','工作日志是指针对自己的工作，每天记录工作的内容、所花费的时间以及在工作过程中遇到的问题','工作日志是指针对自己的工作，每天记录工作的内容、所花费的时间以及在工作过程中遇到的问题，解决问题的思路和方法。最好可以详细客观的记录下你所面对的选择、观点、观察、方法、结果和决定，这样每天日事日清，经过长期的积累，才能达到通过工作日志提高自己的工作技能。\r\n随着移动互联网时代的到来，QQ、微博、微信等新应用层出不穷，人们对于时间资源的需求也越来越大，而另一方面，时间的碎片化往往让很多工作者结束一天工作的时候，却想不起来今天到底做了哪些工作。工作日志在帮助人们抵抗时间碎片化方面能够起到一定的作用。\r\n\r\n','2020-12-17 18:04:32');

/*Table structure for table `zhiburongyu` */

DROP TABLE IF EXISTS `zhiburongyu`;

CREATE TABLE `zhiburongyu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `dangzhibu` varchar(200) DEFAULT NULL COMMENT '党支部',
  `chengguo` varchar(200) DEFAULT NULL COMMENT '成果',
  `zhengshu` varchar(200) DEFAULT NULL COMMENT '证书',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `rongyu` longtext COMMENT '荣誉',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1608199230392 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='支部荣誉';

/*Data for the table `zhiburongyu` */

insert  into `zhiburongyu`(`id`,`addtime`,`zhanghao`,`dangzhibu`,`chengguo`,`zhengshu`,`wenjian`,`rongyu`) values (1608197640259,'2020-12-17 17:33:59','001','党支部1','昌邑市教育系统优秀共产党员','http://localhost:8080/jspmm2ql6/upload/1608197582521.jpg','http://localhost:8080/jspmm2ql6/file/download?fileName=1608197628851.docx',' 在2019年6月29日召开的昌邑市教育系统“庆七一”表彰暨中小学党建工作会议上，昌邑市第一中学党委被授予“昌邑市教育系统2018年度先进基层党组织”称号，昌邑市第一中学第一教师党支部被授予“昌邑市2018年度先进教师党支部（党小组）”称号，魏效光、徐保国、蒋景春被授予“昌邑市教育系统优秀共产党员”称号。\r\n       \r\n\r\n\r\n<img src=\"http://www.cyyz.org/upload_files/article/97/1_20190702080753_nhque.jpg\" width=\"600\" height=\"352\" title=\"39240c4ab866c9cdb8e15a087a9672a_副本.jpg\" _src=\"http://www.cyyz.org/upload_files/article/97/1_20190702080753_nhque.jpg\">\r\n\r\n');
insert  into `zhiburongyu`(`id`,`addtime`,`zhanghao`,`dangzhibu`,`chengguo`,`zhengshu`,`wenjian`,`rongyu`) values (1608199230391,'2020-12-17 18:00:29','004','党支部4','昌邑市教育系统优秀共产党员','http://localhost:8080/jspmm2ql6/upload/1608199221932.jpg','http://localhost:8080/jspmm2ql6/file/download?fileName=1608199225195.docx','工作日志是指针对自己的工作，每天记录工作的内容、所花费的时间以及在工作过程中遇到的问题，解决问题的思路和方法。最好可以详细客观的记录下你所面对的选择、观点、观察、方法、结果和决定，这样每天日事日清，经过长期的积累，才能达到通过工作日志提高自己的工作技能。\r\n随着移动互联网时代的到来，QQ、微博、微信等新应用层出不穷，人们对于时间资源的需求也越来越大，而另一方面，时间的碎片化往往让很多工作者结束一天工作的时候，却想不起来今天到底做了哪些工作。工作日志在帮助人们抵抗时间碎片化方面能够起到一定的作用。\r\n\r\n');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
