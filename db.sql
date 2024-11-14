/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gaoxiaobiyexuanti
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gaoxiaobiyexuanti` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gaoxiaobiyexuanti`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-23 21:20:28'),(2,'sex_types','性别',2,'女',NULL,'2021-04-23 21:20:28'),(3,'shejitimu_types','项目类型名称',1,'项目类型1',NULL,'2021-04-23 21:20:28'),(4,'shejitimu_types','项目类型名称',2,'项目类型2',NULL,'2021-04-23 21:20:28'),(5,'shejitimu_types','项目类型名称',3,'项目类型3',NULL,'2021-04-23 21:20:28'),(6,'zhuangtai_types','审核状态',1,'未审核',NULL,'2021-04-23 21:20:28'),(7,'zhuangtai_types','审核状态',2,'通过',NULL,'2021-04-23 21:20:28'),(8,'zhuangtai_types','审核状态',3,'拒绝',NULL,'2021-04-23 21:20:28'),(9,'xuantishenhe_types','审核状态',1,'未审核',NULL,'2021-04-23 21:20:28'),(10,'xuantishenhe_types','审核状态',2,'通过',NULL,'2021-04-23 21:20:28'),(11,'xuantishenhe_types','审核状态',3,'拒绝',NULL,'2021-04-23 21:20:28'),(12,'news_types','公告类型名称',1,'公告类型1',NULL,'2021-04-23 21:20:28'),(13,'news_types','公告类型名称',2,'公告类型2',NULL,'2021-04-23 21:20:28'),(14,'xuanti_types','选题状态',1,'未审核',NULL,'2021-04-23 21:20:28'),(15,'xuanti_types','选题状态',2,'开题报告以过',NULL,'2021-04-23 21:20:28'),(16,'xuanti_types','选题状态',3,'开题报告修改中',NULL,'2021-04-23 21:20:28'),(17,'xuanti_types','选题状态',4,'中期报告已过',NULL,'2021-04-23 21:20:28'),(18,'xuanti_types','选题状态',5,'中期报告修改中',NULL,'2021-04-23 21:20:28'),(19,'xuanti_types','选题状态',6,'论文修改中',NULL,'2021-04-23 21:20:28'),(20,'xuanti_types','选题状态',7,'审核通过',NULL,'2021-04-23 21:20:28');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`sex_types`,`jiaoshi_id_number`,`jiaoshi_phone`,`jiaoshi_photo`,`create_time`) values (1,'333','123456','教师1',1,'410882200011121541','17786699751','http://localhost:8080/gaoxiaobiyexuanti/file/download?fileName=1619185085440.jpg','2021-04-23 21:38:06'),(2,'444','123456','教师2',2,'410882200011121542','17786699752','http://localhost:8080/gaoxiaobiyexuanti/file/download?fileName=1619185101520.jpg','2021-04-23 21:38:22'),(4,'321','123456','教师3',1,'410882199011231113','17787488143','http://localhost:8080/gaoxiaobiyexuanti/file/download?fileName=1620738317062.jpg','2021-05-11 21:05:18');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告1',1,'http://localhost:8080/gaoxiaobiyexuanti/file/download?fileName=1619351127140.jpg','2021-05-11 19:45:31','公告详情1\r\n','2021-05-11 19:45:31'),(2,'公告2',2,'http://localhost:8080/gaoxiaobiyexuanti/file/download?fileName=1619351138817.jpg','2021-05-11 19:45:40','公告详情2\r\n','2021-05-11 19:45:40');

/*Table structure for table `shejitimu` */

DROP TABLE IF EXISTS `shejitimu`;

CREATE TABLE `shejitimu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shejitimu_name` varchar(255) DEFAULT NULL COMMENT '题目名称 Search111',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '发布教师',
  `shejitimu_types` int(11) DEFAULT NULL COMMENT '项目类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `shejitimu_zancheng` int(11) DEFAULT NULL COMMENT '赞成票',
  `shejitimu_fandui` int(11) DEFAULT NULL COMMENT '反对票',
  `zhuangtai_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111',
  `shejitimu_content` text COMMENT '项目内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='设计题目';

/*Data for the table `shejitimu` */

insert  into `shejitimu`(`id`,`shejitimu_name`,`jiaoshi_id`,`shejitimu_types`,`insert_time`,`shejitimu_zancheng`,`shejitimu_fandui`,`zhuangtai_types`,`shejitimu_content`,`create_time`) values (1,'题目1',2,1,'2021-05-11 09:13:12',2,1,2,'项目内容1\r\n','2021-05-11 09:13:12'),(2,'题目2',1,2,'2021-05-11 17:59:05',1,1,1,'项目内容2\r\n','2021-05-11 17:59:05'),(3,'题目3',2,3,'2021-05-11 17:59:20',1,0,2,'项目内容3\r\n','2021-05-11 17:59:20'),(6,'题目名称4',4,2,'2021-05-11 21:07:07',1,0,2,'项目内容4\r\n','2021-05-11 21:07:07');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','mci8u3yvevpkuu2cp4d9jeitypwk9rrr','2021-04-23 21:10:44','2021-05-11 22:23:15'),(2,1,'111','yonghu','用户','3j99yt4q7e1gna7fbj5m09u1nmu1wwp2','2021-05-11 19:10:52','2021-05-11 20:48:30'),(3,2,'222','yonghu','用户','vss129v3cy3lejbxe08twuos9ll771zs','2021-05-11 19:11:07','2021-05-11 20:11:08'),(4,1,'333','jiaoshi','教师','jpth66brlsrfr12qv5y8wbsu31iavqfg','2021-05-11 19:11:27','2021-05-11 20:11:28'),(5,2,'444','jiaoshi','教师','7tqb6l6e4ahf69v043g4e9ma9npdcqh5','2021-05-11 19:11:49','2021-05-11 20:51:15'),(6,3,'555','jiaoshi','教师','3rvvbdhcmvfknwlzow7eq5nvadgy707d','2021-05-11 19:45:51','2021-05-11 20:51:08'),(7,3,'123','yonghu','用户','g4y0yzs0lc9k1gysp2w88fyrcdqdpjr0','2021-05-11 19:49:33','2021-05-11 20:50:48'),(8,4,'321','jiaoshi','教师','zzzxtzfzyyggipcgupxm6ca3yckeklfg','2021-05-11 21:10:52','2021-05-11 22:22:23'),(9,4,'123','yonghu','用户','prxrrudxrhhu33segqvj7ui6rc9042p3','2021-05-11 21:13:14','2021-05-11 22:22:03');

/*Table structure for table `toupiaoxinxi` */

DROP TABLE IF EXISTS `toupiaoxinxi`;

CREATE TABLE `toupiaoxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shejitimu_id` int(200) DEFAULT NULL COMMENT '投票题目',
  `jiaoshi_id` int(200) DEFAULT NULL COMMENT '投票教师 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='投票记录';

/*Data for the table `toupiaoxinxi` */

insert  into `toupiaoxinxi`(`id`,`shejitimu_id`,`jiaoshi_id`,`insert_time`,`create_time`) values (1,1,1,'2021-05-11 10:07:07','2021-05-11 10:07:07'),(2,2,1,'2021-05-11 19:11:41','2021-05-11 19:11:41'),(3,3,2,'2021-05-11 19:11:59','2021-05-11 19:11:59'),(6,6,4,'2021-05-11 21:11:49','2021-05-11 21:11:49'),(7,2,4,'2021-05-11 21:12:01','2021-05-11 21:12:01');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-05-11 15:59:12');

/*Table structure for table `xuanti` */

DROP TABLE IF EXISTS `xuanti`;

CREATE TABLE `xuanti` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '选择学生',
  `jiaoshi_id` int(200) DEFAULT NULL COMMENT '选择题目 ',
  `shejitimu_id` int(200) DEFAULT NULL COMMENT '发布教师',
  `kaitibaogao_file` varchar(255) DEFAULT NULL COMMENT '开题报告',
  `kaitibaogao_content` varchar(255) DEFAULT NULL COMMENT '修改意见',
  `zhongqi_file` varchar(255) DEFAULT NULL COMMENT '中期报告',
  `zhongqi_content` varchar(255) DEFAULT NULL COMMENT '修改意见',
  `luenwen_file` varchar(255) DEFAULT NULL COMMENT '论文',
  `luenwen_content` varchar(255) DEFAULT NULL COMMENT '修改意见',
  `xuanti_types` int(200) DEFAULT NULL COMMENT '审核状态 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='选题信息';

/*Data for the table `xuanti` */

insert  into `xuanti`(`id`,`yonghu_id`,`jiaoshi_id`,`shejitimu_id`,`kaitibaogao_file`,`kaitibaogao_content`,`zhongqi_file`,`zhongqi_content`,`luenwen_file`,`luenwen_content`,`xuanti_types`,`create_time`) values (5,4,4,6,'http://localhost:8080/gaoxiaobiyexuanti/file/download?fileName=1620739173177.doc','审核通过','http://localhost:8080/gaoxiaobiyexuanti/file/download?fileName=1620739291524.xls','审核通过','http://localhost:8080/gaoxiaobiyexuanti/file/download?fileName=1620739332630.rar','审核通过',7,'2021-05-11 21:15:00');

/*Table structure for table `xuantishenhe` */

DROP TABLE IF EXISTS `xuantishenhe`;

CREATE TABLE `xuantishenhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '选择学生',
  `jiaoshi_id` int(200) DEFAULT NULL COMMENT '选择题目 ',
  `shejitimu_id` int(200) DEFAULT NULL COMMENT '发布教师',
  `xuantishenhe_types` int(200) DEFAULT NULL COMMENT '审核状态 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='选题审核';

/*Data for the table `xuantishenhe` */

insert  into `xuantishenhe`(`id`,`yonghu_id`,`jiaoshi_id`,`shejitimu_id`,`xuantishenhe_types`,`create_time`) values (5,4,4,6,2,'2021-05-11 21:13:53');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',2,'410882200011134641','17785544641','http://localhost:8080/gaoxiaobiyexuanti/file/download?fileName=1619185132618.jpg','2021-04-23 21:38:53'),(2,'222','123456','用户2',1,'410882200011134642','17785544642','http://localhost:8080/gaoxiaobiyexuanti/file/download?fileName=1619185150147.jpg','2021-04-23 21:39:11'),(4,'123','123456','学生3',1,'410882188912114143','13515544613','http://localhost:8080/gaoxiaobiyexuanti/file/download?fileName=1620738334096.jpg','2021-05-11 21:05:35');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
