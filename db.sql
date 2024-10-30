/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gz-ssmj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gz-ssmj` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gz-ssmj`;

/*Table structure for table `baoming` */

DROP TABLE IF EXISTS `baoming`;

CREATE TABLE `baoming` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xs_types` tinyint(255) DEFAULT NULL COMMENT '学生名称',
  `zy_types` tinyint(255) DEFAULT NULL COMMENT '专业 Search',
  `zy_photo` varchar(255) DEFAULT NULL COMMENT '专业图片',
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '报名时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `baoming` */

insert  into `baoming`(`id`,`xs_types`,`zy_types`,`zy_photo`,`create_time`) values (7,1,5,'http://localhost:8080/gz-ssmj/file/download?fileName=1613995489380.JPG','2021-03-06 20:37:21');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608781605726 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1608781605725,'2020-12-24 11:46:45',1,NULL,'这里可以咨询一些基本情况 后台管理员会及时回复',NULL,0);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gz-ssmj/upload/1613996294045.jpg'),(2,'picture2','http://localhost:8080/gz-ssmj/upload/1613996299955.jpg'),(3,'picture3','http://localhost:8080/gz-ssmj/upload/1613996305267.jpg'),(4,'picture4','http://localhost:8080/gz-ssmj/upload/1613996316492.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',2,'男',NULL,'2021-01-25 11:41:54'),(2,'sex_types','性别',1,'女',NULL,'2021-01-25 11:41:54');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '课程名称 Search',
  `zy_types` tinyint(255) DEFAULT NULL COMMENT '所属专业 Search',
  `kc_photo` varchar(255) DEFAULT NULL COMMENT '课程图片',
  `notice_content` varchar(255) DEFAULT NULL COMMENT '课程描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`name`,`zy_types`,`kc_photo`,`notice_content`) values (1,'课程名称1',1,'http://localhost:8080/gz-ssmj/file/download?fileName=1613995489380.JPG','课程描述1\r\n'),(2,'课程名称2',2,'http://localhost:8080/gz-ssmj/file/download?fileName=1613995489380.JPG','课程描述2'),(3,'课程名称3',3,'http://localhost:8080/gz-ssmj/file/download?fileName=1613995489380.JPG','课程描述3\r\n'),(4,'课程名称4',4,'http://localhost:8080/gz-ssmj/file/download?fileName=1613995489380.JPG','课程描述4\r\n'),(5,'课程名称5',5,'http://localhost:8080/gz-ssmj/file/download?fileName=1613995489380.JPG','课程描述5\r\n');

/*Table structure for table `liuyanxinxi` */

DROP TABLE IF EXISTS `liuyanxinxi`;

CREATE TABLE `liuyanxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `note` varchar(255) DEFAULT NULL COMMENT '留言信息',
  `yhnote` varchar(11) DEFAULT NULL COMMENT '留言人',
  `note_time` timestamp NULL DEFAULT NULL COMMENT '留言时间 Search',
  `reply` varchar(255) DEFAULT NULL COMMENT '回复',
  `glreply` varchar(11) DEFAULT NULL COMMENT '回复人',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `liuyanxinxi` */

insert  into `liuyanxinxi`(`id`,`note`,`yhnote`,`note_time`,`reply`,`glreply`,`reply_time`) values (4,'问题1','admin','2021-02-22 17:21:37','答案1','admin','2021-02-22 17:21:37'),(6,'问题2','小札','2021-02-22 17:21:58','答案2','admin','2021-02-22 17:21:58'),(7,'问题3','小札','2021-02-23 13:01:17','请问请问','小札','2021-02-23 13:56:30'),(12,'123','admin','2021-02-23 15:23:39','312','小札','2021-02-23 15:26:08'),(13,'1+1等于多少？？？？','小札','2021-03-06 20:38:22','我也不知道，太难了','小札','2021-03-06 20:39:02');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613996418950 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (1,'2020-12-24 11:36:16','我校连续三年位居广州日报应用大学排行榜民办本科高校第一名','http://localhost:8080/gz-ssmj/upload/1613996382411.jpg','5月10日，广州日报数据和数字化研究院（GDI智库）发布“2019广州日报应用大学排行榜”，我校连续三年在民办本科高校中排名第一。\r\n本排行榜对公办高校民办高校使用同一评价体系，以应用指数、学术指数、声誉指数、二次评估指数四个一级指标建构综合指数，科学评价国内891所本科院校（非博士培养单位），推出“2019广州日报应用大学排行榜—TOP800”以及四个子榜单，我校在全国891所参评本科高校位居第89名，综合指数排名、应用指数指标、学术指数指标、二次评估指数指标在民办本科高校中均排名第一。\r\n<img src=\"https://www.hhstu.edu.cn/news/upload/images/2019/5/1023832846.jpg\" _src=\"https://www.hhstu.edu.cn/news/upload/images/2019/5/1023832846.jpg\">\r\n<img title=\"微信图片_201905102249303.jpg\" src=\"https://www.hhstu.edu.cn/news/upload/images/2019/5/1023856542.jpg\" _src=\"https://www.hhstu.edu.cn/news/upload/images/2019/5/1023856542.jpg\">\r\n<img title=\"微信图片_201905102249102.jpg\" src=\"https://www.hhstu.edu.cn/news/upload/images/2019/5/1023856605.jpg\" _src=\"https://www.hhstu.edu.cn/news/upload/images/2019/5/1023856605.jpg\">\r\n<img title=\"微信图片_20190510224905.jpg\" src=\"https://www.hhstu.edu.cn/news/upload/images/2019/5/1023911191.jpg\" _src=\"https://www.hhstu.edu.cn/news/upload/images/2019/5/1023911191.jpg\">\r\n“2019广州日报应用大学排行榜”（以下简称“应用大学排行榜”）评价891所本科高校，包括448所公办普通本科高校、262所独立学院、172所民办院校（不含独立学院）、7所中外合作办学和2所内地与港澳台合作办学的高校。该榜以“一大四小”的格局呈现。“一大”指的是“2019广州日报应用大学排行榜—TOP800”，公布本次排行榜的800强高校；“四小”分别是指：“2019广州日报应用大学排行榜—独立学院TOP100”、“2019广州日报应用大学排行榜—民办院校TOP100（不含独立学院）”、“2019广州日报应用大学排行榜—应用指数TOP100”、“2019广州日报应用大学排行榜—学术指数TOP100”。\r\n<img title=\"微信图片_201905102248550.jpg\" src=\"https://www.hhstu.edu.cn/news/upload/images/2019/5/1023937165.jpg\" _src=\"https://www.hhstu.edu.cn/news/upload/images/2019/5/1023937165.jpg\">\r\n<img title=\"微信图片_201905102248591.jpg\" src=\"https://www.hhstu.edu.cn/news/upload/images/2019/5/1023937196.jpg\" _src=\"https://www.hhstu.edu.cn/news/upload/images/2019/5/1023937196.jpg\">\r\n\r\n“应用大学排行榜”特点之一是强调“应用”的重要性，突出高校服务国家创新驱动发展的能力，服务区域经济社会发展能力、产教融合校企合作实力，强调培养应用型技术技能型人才和增强学生就业创业能力。  \r\n多年来，学校面向地方，服务基层，扎根中原大地办学，在长期的办学实践中构建了“本科学历教育与职业技能培养相结合”的人才培养模式。近年来，学校将创新创业教育融入人才培养过程，实施就业、创业、升学的分类培养，在职业定位上，强调技术应用；在培养要求上，突出能力本位；在服务面向上，强调面向工程技术、经营、管理一线。各专业结合实际，探索“双证书”培养、“订单式”培养等多种人才培养方式，取得了丰硕成果。学校教改成果“民办高校应用型人才培养模式创新与实践”获得国家级教学成果二等奖，学校荣登“2012-2016年全国普通高校竞赛评估结果（本科）TOP300”。学校大学科技园和黄河众创空间被科技部认定为国家级科技企业孵化器，黄河众创空间被科技部认定为全国首批众创空间，入选“2018中国100家特色空间”；学校大学生创业孵化园获批“全国创业孵化示范基地”“全国大学生创业示范园”。2017年以来，国务院“双创”专题督查调研组、国家创新创业专题调研组和国务院大督查创新驱动组先后到学校调研，均给予了高度评价。学校被评为2018年河南省示范性应用技术类型本科院校年度考核一类学校、教育部“互联网+中国制造2025”产教融合促进计划建设院校，获批教育部“全国毕业生就业典型经验高校”（全国高校毕业生就业工作50强）、“全国首批创新创业典型经验高校”（全国高校创新创业工作50强）、“全国首批深化创新创业教育改革示范高校”。\r\n\r\n'),(2,'2020-12-24 11:36:16','大年初一 | 金牛贺岁，岁岁平安！','http://localhost:8080/gz-ssmj/upload/1613996176159.jpg','爆竹声中一岁除，春风送暖入屠苏”，春节是中国最大的传统节日，也是我们整个华夏民族最重视的节日。正月初一，是农历年、月、日的开始，拜年是中国民间的传统习俗，是人们辞旧迎新、相互表达美好祝愿的一种方式。现代拜年，根据彼此的社会关系，大体可分四类：一、走亲戚：初一必须到岳父家、须带礼物。进门后先向祖宗影像、牌位各行三叩首礼，然后再给长辈们依次跪拜，可以逗留吃饭、玩耍。二、感谢性的拜访：凡是上年对人家欠情的（如律师、医生等）就要买些礼物送去，借拜年之机，表示谢忱。三、串门式的拜访：对于左邻右舍的街坊，素日没有多大来往，但见面都能说得来，彼此一抱拳说：“恭喜发财”、“一顺百顺”，在屋里坐一会儿而已，无甚过多礼节。<img src=\"http://localhost:8080/gz-ssmj/upload/1613996176159.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/gz-ssmj/upload/1613996176159.jpg\">然而，今年备受关注的疫情又作妖，为了自己、家人和他人的健康，今年我们可以过个特色年，尽量少出门、少聚会。多在家里陪伴家人，一起围坐聊聊天，玩些小游戏，吃些家乡美味，这样的团聚也是一种快乐。现在的手机通讯如此发达，微信拜年、视频拜年都是特殊情况下很好的选择。拨通那些没法见面问候的朋友的电话，或是用时下最流行的小视频给朋友亲人送上祝福，别让距离阻隔了情谊。郑州新东方烹饪学校在此祝大家新年快乐，牛年大吉！\r\n'),(1613996355473,'2021-02-22 20:19:15','我校杨庆平教授创制新年吉祥物连续13年亮相 “春满中原-老家河南”主题系列活动会场','http://localhost:8080/gz-ssmj/upload/1613996346539.jpg','2月4日，2021年“春满中原 老家河南”暨“文明旅游我先行”活动启动仪式在河南省艺术中心隆重举行，并为2021年吉祥物《开拓牛》揭幕，这是我校杨庆平教授连续13年创制的新年生肖吉祥物亮相“春满中原”系列活动的舞台。\r\n<img src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/684328669.jpg\" _src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/684328669.jpg\">\r\n生肖题材创作一直是杨庆平教授雕塑和陶艺创作的主题之一，也是他新年贺岁的“大戏”。他的此类作品曾多次获得全国陶瓷生肖设计大赛大奖，今年的《开拓牛》也获得了第五届全国生肖“中国牛”陶瓷艺术设计大赛金奖。\r\n此次《开拓牛》的生肖创作，在装饰设计上，选用代表吉祥的云纹，再饰以绚丽热情的中国红和代表万物生长的花草图案，形色浑然天成；在造型上，简约夸张，线形流畅，动感有力，寓意丰富。整个创作既有传统文化元素，又有现代设计的审美内涵。\r\n《开拓牛》以“力拔山兮”的气魄，展现出坚韧不拔、勇往直前的开拓精神，预示着新的牛年我们将继续做敢为人先、勇于拼搏的“拓荒牛”和实干奉献的“老黄牛”“孺子牛”，努力奋斗，实现梦想！\r\n多年来，杨庆平教授一直在探索传统与现代艺术之间度的把握，生肖创作风格不断变化，从写实到写意，从精雕细琢到简约概括，现已形成了一些他的创作语言。杨庆平教授说：历尽艰辛，付出了很多，但我无怨无悔。艺无止境，所有的坚持与收获已成过去，我将重新一轮回。\r\n生肖雕塑《中国牛》亮相河南省春满中原大型文化活动以来，杨庆平教授相继创作出了《中国虎》《吉祥如意兔》《祥瑞中国龙》《金蛇报平安》《立马吉祥》《三阳开泰》《福猴献瑞》《好运吉祥》《旺年有余》《鸿福吉祥》《年丰子旺》《开拓牛》一系列生肖雕塑造型。\r\n<img src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/68435029.jpg\" _src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/68435029.jpg\">\r\n<img src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/68444654.jpg\" _src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/68444654.jpg\">\r\n杨庆平教授接受采访时说：回首过往，可以说，得天独厚的工作环境，成就了我的生肖艺术创作。长期以来，学校的大力支持、良好的学术氛围、坚强的同仁团队、丰富的高校资源汇聚成无尽的创作动力，以及多年的雕塑、陶艺创作实践和艺术教育经验，促使我努力将设计理念变成可视、可触的艺术载体。为此，我的心中充满感激。感谢学校和社会各界对我的大力支持！感恩我们能够生活在这个美好的新时代！我将继续生肖创作，为传统文化的传承与发展尽心竭力。\r\n<img src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/68445113.jpg\" _src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/68445113.jpg\">\r\n触景生情，杨庆平教授即兴赋诗《开拓牛》一首并祝愿祖国繁荣昌盛，全国人民万事如意，牛年大吉，牛运亨通，牛气冲天！\r\n《开拓牛》\r\n凝心聚力谋发展，\r\n开拓未来争上游。\r\n坚韧不拔撼山力，\r\n扭转乾坤中国牛。\r\n\r\n'),(1613996418949,'2021-02-22 20:20:17','河南省青少年科技中心专家组到我校进行省科普教育基地2020年度工作考核','http://localhost:8080/gz-ssmj/upload/1613996409398.jpg','1月28日，根据河南省文明办、河南省科协《关于开展河南省科普教育基地2021年度申报认定与2020年度总结评估工作的通知》要求和有关工作安排，河南省青少年科技中心主任周金虎一行三人来校，对我校智慧逐梦体验馆、中国民办教育博物馆两所省科普教育基地进行科普工作年度考核。\r\n<img src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/683520247.jpg\" _src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/683520247.jpg\">\r\n<img src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/683546200.jpg\" _src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/683546200.jpg\">\r\n<img src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/683618200.jpg\" _src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/683618200.jpg\">\r\n<img src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/683639122.jpg\" _src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/683639122.jpg\">\r\n<img src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/68370122.jpg\" _src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/68370122.jpg\">\r\n<img src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/683715169.jpg\" _src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/683715169.jpg\">\r\n考核会在我校信息大楼一楼会议室召开。校党委副书记赵会利、教务科研处处长李高申、智慧逐梦体验馆馆长于春霞、中国民办教育博物馆馆长丁富云等领导出席会议，会议由李高申主持。\r\n赵会利在致辞中介绍了我校办学情况以及近年来在科普教育方面取得的成绩，并期待在今后的合作中获得河南省青少年科技中心更多的支持和帮助。于春霞和丁富云分别就智慧逐梦体验馆、中国民办教育博物馆2020年度科普工作进行专题汇报。\r\n周金虎对我校“敢为天下先”的理念精神深感钦佩，对我校两所河南省科普教育基地科普开展情况给予了高度评价。他表示，在今后的发展中，双方要在青少年科普教育方面开展深度合作，为我省科普事业做出积极贡献。  \r\n周金虎一行首先考察了我校的智慧逐梦体验馆，深度体验了未来医疗智能家居、寰球大视野等展项，仔细询问了时空虫洞展项如何与青少年科普教育相结合，对前瞻性、启发性建馆理念高度赞扬，称赞智慧逐梦体验馆能够激发出受众群体对未来科学的探索兴趣，在河南走出了一条科普创新之路。\r\n<img src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/6838213.jpg\" _src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/6838213.jpg\">\r\n<img src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/683841982.jpg\" _src=\"https://www.hhstu.edu.cn/news/upload/images/2021/2/683841982.jpg\">\r\n周金虎一行又考察了民办教育通史馆和黄河科技学院校史馆，赞叹中国民办教育史源远流长，称赞黄河科技学院的办学历史就是改革开放后民办教育发展的缩影，对专职队伍加学生志愿者队伍相结合的工作模式给予了赞扬。\r\n\r\n');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','jf1xog4v780h8rile2bp5qc95u8eo7fb','2021-02-22 17:46:59','2021-03-06 21:35:50'),(2,1,'小札','users','学生','94ygs7i9o14hveot7eygj142t3ozmk58','2021-02-22 21:15:53','2021-03-06 21:38:00'),(3,2,'小站','users','学生','gldb8pkjb3ktgumulw1ka2rlp7ynkqt0','2021-02-22 21:19:14','2021-02-22 22:19:15'),(4,4,'123','users','学生','416fq4b3f5wh5z02mxscd78g0sqjay5h','2021-02-23 15:27:23','2021-02-23 16:27:23');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) NOT NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-01-28 18:04:51');

/*Table structure for table `xueshengxinxi` */

DROP TABLE IF EXISTS `xueshengxinxi`;

CREATE TABLE `xueshengxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名称 Search',
  `account` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `img_photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `sex_types` tinyint(255) DEFAULT NULL COMMENT '性别',
  `role` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `xueshengxinxi` */

insert  into `xueshengxinxi`(`id`,`name`,`account`,`password`,`img_photo`,`sex_types`,`role`) values (1,'小札','111','111','http://localhost:8080/gz-ssmj/file/download?fileName=1613999982451.jpg',1,'学生'),(2,'小站','222','222','http://localhost:8080/gz-ssmj/file/download?fileName=1613999977268.jpg',1,'学生');

/*Table structure for table `xuexiaogaikuang` */

DROP TABLE IF EXISTS `xuexiaogaikuang`;

CREATE TABLE `xuexiaogaikuang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `notice_content` varchar(255) DEFAULT NULL COMMENT '学校概况',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '上次修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `xuexiaogaikuang` */

insert  into `xuexiaogaikuang`(`id`,`notice_content`,`create_time`) values (1,'学校概况信息;学校概况信息;学校概况信息;学校概况信息;学校概况信息;学校概况信息;学校概况信息;学校概况信息;学校概况信息;学校概况信息;学校概况信息;学校概况信息;学校概况信息;学校概况信息;学校概况信息;学校概况信息;学校概况信息;学校概况信息;学校概况信息;学校概况信息;学校概况信息;学校概况信息;学校概况信息;学校概况信息;\r\n','2021-02-23 09:50:37');

/*Table structure for table `zhaoshengzhengce` */

DROP TABLE IF EXISTS `zhaoshengzhengce`;

CREATE TABLE `zhaoshengzhengce` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `notice_content` varchar(255) DEFAULT NULL COMMENT '招生政策',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '上次修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `zhaoshengzhengce` */

insert  into `zhaoshengzhengce`(`id`,`notice_content`,`create_time`) values (2,'招生政策信息；招生政策信息；招生政策信息；招生政策信息；招生政策信息；招生政策信息；招生政策信息；招生政策信息；\r\n招生政策信息；招生政策信息；招生政策信息；招生政策信息；招生政策信息；招生政策信息；招生政策信息；招生政策信息；\r\n招生政策信息；招生政策信息；招生政策信息；招生政策信息；招生政策信息；招生政策信息；招生政策信息；招生政策信息；\r\n招生政策信息；招生政策信息；招生政策信息；招生政策信息；招生政策信息；招生政策信息；招生政策信息；招生政策信息；\r\n\r\n','2021-02-23 09:54:56');

/*Table structure for table `zhuanye` */

DROP TABLE IF EXISTS `zhuanye`;

CREATE TABLE `zhuanye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '专业名称  Search',
  `aobjective` varchar(255) DEFAULT NULL COMMENT '培养目标',
  `prospects` varchar(255) DEFAULT NULL COMMENT '就业前景',
  `zy_photo` varchar(255) DEFAULT NULL COMMENT '专业图片',
  `notice_content` varchar(255) DEFAULT NULL COMMENT '专业介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `zhuanye` */

insert  into `zhuanye`(`id`,`name`,`aobjective`,`prospects`,`zy_photo`,`notice_content`) values (1,'专业名称1','培养目标1','就业前景1','http://localhost:8080/gz-ssmj/file/download?fileName=1613995489380.JPG','专业介绍1\r\n'),(2,'专业名称2','培养目标2','就业前景2','http://localhost:8080/gz-ssmj/file/download?fileName=1613995489380.JPG','专业介绍2'),(3,'专业名称3','培养目标3','就业前景3','http://localhost:8080/gz-ssmj/file/download?fileName=1613995489380.JPG','专业介绍3'),(4,'专业名称4','培养目标4','就业前景4','http://localhost:8080/gz-ssmj/file/download?fileName=1613995489380.JPG','专业介绍4'),(5,'专业名称5','培养目标5','就业前景5','http://localhost:8080/gz-ssmj/file/download?fileName=1613995489380.JPG','专业介绍5\r\n');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
