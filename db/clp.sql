/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 8.0.34 : Database - clp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`clp` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `clp`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1741949793690 DEFAULT CHARSET=utf8mb3 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values 
(1741949793689,'2025-03-14 18:56:33',11,'河南省郑州市中原区','张三','18337985095','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'kechengxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1742283316736 DEFAULT CHARSET=utf8mb3 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values 
(1742283316735,'2025-03-18 15:35:15','kechengxinxi',11,1741940663824,'实验设计与分析','http://localhost:8080/clp/upload/1741940657601.jpg',1,8,0);

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1741875546513 DEFAULT CHARSET=utf8mb3 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values 
(51,'2025-03-14 16:18:53',1,1,'提问1','回复1',0),
(52,'2025-03-14 16:18:55',2,2,'提问2','回复2',2),
(53,'2025-03-14 16:18:57',3,3,'提问3','回复3',3),
(54,'2025-03-14 16:18:58',4,4,'提问4','回复4',4),
(55,'2025-03-14 16:19:00',5,5,'提问5','回复5',5),
(56,'2025-03-14 16:19:02',6,6,'提问6','回复6',6),
(1740494844952,'2025-02-25 22:47:24',11,NULL,'阿斯顿',NULL,0),
(1741759742393,'2025-03-12 14:09:02',11,NULL,'asd ',NULL,0),
(1741867980061,'2025-03-13 20:13:00',11,NULL,'？',NULL,0),
(1741867983188,'2025-03-13 20:13:02',11,NULL,'；',NULL,0),
(1741867985698,'2025-03-13 20:13:05',11,NULL,'啊',NULL,0),
(1741871332151,'2025-03-13 21:08:51',11,NULL,'阿斯顿',NULL,0),
(1741875536277,'2025-03-13 22:18:55',11,1,NULL,'手打',NULL),
(1741875546512,'2025-03-13 22:19:06',1,1,NULL,'啥事',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values 
(1,'picture1','http://localhost:8080/clp/upload/home_banner/b1.png'),
(2,'picture2','http://localhost:8080/clp/upload/home_banner/b2.png'),
(3,'picture3','http://localhost:8080/clp/upload/home_banner/b3.png'),
(4,'picture4','http://localhost:8080/clp/upload/home_banner/b4.png'),
(5,'picture5','http://localhost:8080/clp/upload/home_banner/b5.png');

/*Table structure for table `discusskechengxinxi` */

DROP TABLE IF EXISTS `discusskechengxinxi`;

CREATE TABLE `discusskechengxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1742283085301 DEFAULT CHARSET=utf8mb3 COMMENT='课程信息评论表';

/*Data for the table `discusskechengxinxi` */

insert  into `discusskechengxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values 
(1742283085300,'2025-03-18 15:31:24',1741939986752,11,'1','可以',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1741943963882 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`lianxidianhua`,`jiaoshiyouxiang`,`money`) values 
(21,'2025-03-14 16:17:40','001','123456','刘君晓','女','http://localhost:8080/clp/upload/1741935870640.jpg','教授','13823888881','773890001@qq.com',100),
(22,'2025-03-14 16:17:42','002','123456','王磊','女','http://localhost:8080/clp/upload/1741936731106.jpg','教授','13823888882','773890002@qq.com',100),
(23,'2025-03-14 16:17:43','003','123456','乔宝刚','男','http://localhost:8080/clp/upload/1741939247000.jpg','教师','13823888883','773890003@qq.com',100),
(24,'2025-03-14 16:17:45','004','123456','张铭','女','http://localhost:8080/clp/upload/1741939270152.jpg','副教授','13823888884','773890004@qq.com',100),
(25,'2025-03-14 16:17:47','005','123456','刘霞','女','http://localhost:8080/clp/upload/1741939304703.jpg','教授','13823888885','773890005@qq.com',100),
(26,'2025-03-14 16:17:49','006','123456','姜晓千','男','http://localhost:8080/clp/upload/1741939402268.JPG','讲师','13823888886','773890006@qq.com',100),
(1741798836514,'2025-03-13 01:00:36','007','123456','彭迪云','男','http://localhost:8080/clp/upload/1741939518239.jpg','二级教授','12345612345','1345234213@qq.com',0),
(1741884207878,'2025-03-14 00:43:27','008','123456','周迎春','女','http://localhost:8080/clp/upload/1741939559023.jpg','教授','12345612345','25234234@qq.com',0),
(1741941510172,'2025-03-14 16:38:30','009','123456','王一','女','http://localhost:8080/clp/upload/1741941489521.jpg','讲师','12365454321','123312@qq.com',0),
(1741941564585,'2025-03-14 16:39:24','010','123456','张国锋','男','http://localhost:8080/clp/upload/1741941526753.jpg','副教授','12112354321','22@qq.com',0),
(1741941604858,'2025-03-14 16:40:04','011','123456','许志','男','http://localhost:8080/clp/upload/1741941584583.jpg','教授','18734512345','321@qq.com',0),
(1741941804966,'2025-03-14 16:43:24','012','123456','王亮','女','http://localhost:8080/clp/upload/1741941784629.jpg','副教授','15665432412','3211@qq.com',0),
(1741942987049,'2025-03-14 17:03:07','013','123456','许雪芬','女','http://localhost:8080/clp/upload/1741942971446.png','副教授','13443212345','564@qq.com',0),
(1741943895763,'2025-03-14 17:18:15','014','123456','贾若','男','http://localhost:8080/clp/upload/1741943878870.jpg','副教授','17898745678','765@qq.com',0),
(1741943927333,'2025-03-14 17:18:47','015','123456','王恺','男','http://localhost:8080/clp/upload/1741943915624.jpg','教授','12309856745','235@qq.com',0),
(1741943963881,'2025-03-14 17:19:23','016','123456','胡浩基','男','http://localhost:8080/clp/upload/1741943959339.jpg','副教授','18337812345','32142@qq.com',0);

/*Table structure for table `kechengleixing` */

DROP TABLE IF EXISTS `kechengleixing`;

CREATE TABLE `kechengleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='课程类型';

/*Data for the table `kechengleixing` */

insert  into `kechengleixing`(`id`,`addtime`,`kechengleixing`) values 
(41,'2025-03-14 16:17:23','小初高基础教育'),
(42,'2025-03-14 16:17:26','高等教育与学术进阶'),
(43,'2025-03-14 16:17:28','兴趣与生活美学'),
(44,'2025-03-14 16:17:29','语言与留学考试'),
(45,'2025-03-14 16:17:31','职业认证与技能提升'),
(46,'2025-03-14 16:17:32','前沿科技与 IT 技能');

/*Table structure for table `kechengxinxi` */

DROP TABLE IF EXISTS `kechengxinxi`;

CREATE TABLE `kechengxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `guanjianzi` varchar(200) DEFAULT NULL COMMENT '关键字',
  `keshi` varchar(200) DEFAULT NULL COMMENT '课时',
  `kechengshipin` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1741944140122 DEFAULT CHARSET=utf8mb3 COMMENT='课程信息';

/*Data for the table `kechengxinxi` */

insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`kechengleixing`,`guanjianzi`,`keshi`,`kechengshipin`,`kechengxiangqing`,`fengmian`,`jiaoshigonghao`,`jiaoshixingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values 
(1741939760154,'2025-03-14 16:09:19','1741939603597','中学化学教学设计与实践','小初高基础教育','中学化学教学设计与实践','57 课时',NULL,'本课程以教学设计能力培养为核心，以现代教学设计原则和方法、先进的教学理念和教学方式为主要内容，在每个专题当中，我们以新课程倡导的教学理念为第一条主线，以不同模块的教学为第二条主线进行教授，同时以教学设计能力为暗线安排内容，每个专题侧重不同的能力培养。突出体现现代中学化学教师教学能力培养和专业发展需要的职业性和实践性，是该课程的最大特色。2018年，本课程荣获“国家精品在线开放课程”荣誉称号。\n','http://localhost:8080/clp/upload/1741939745379.jpg','002','王磊','是','通过',1,0,'2025-03-14 18:59:50',7,2),
(1741939986752,'2025-03-14 16:13:05','1741939954770','中小学生心理健康教育','小初高基础教育','中小学生心理健康教育','90 课时',NULL,'《中小学生心理健康教育》是河南省级精品在线开放课程，2019年、2020年连续两年被省教育厅评为省级“优秀”课程。小学生不爱写作业、初中生逆反心理严重、高中生恋爱影响学习等等，面对中小学生这些心理问题，怎么进行科学引导，别着急，这门课将带你走进中小学生心理健康教育，有理论讲解、经典案例；通俗易懂、有趣实用。','http://localhost:8080/clp/upload/1741939973106.png','001','刘君晓','是','通过',0,0,'2025-03-18 15:31:29',4,1),
(1741940419867,'2025-03-14 16:20:18','1741940384774','做好专业选择题——高中生涯教育','小初高基础教育','做好专业选择题——高中生涯教育','60 课时',NULL,'\"新高考人才选拔由学校选择优先变为提倡适性扬才的专业选择优先。然而，高中生对生涯意识及高校专业了解普遍欠缺。本课程旨在帮助高中生认识职业和专业的关系，了解自身的特性和不同高校专业的特点，进而掌握生涯规划的方法和途径，提升专业选择决策能力。\n\n				课程紧贴新高考，各章节从高中生涯教育中的共性困惑和难点切入，从学生的职业倾向和兴趣特点反推到高校专业选择，注重学生的全面发展和终身发展，契合高校综合素养考察要求。\n\n授课教师既包括高校从事职业发展教育的老师，也有社会知名指导专家。课程设计“生涯帮帮团”环节，邀请分享嘉宾包括海尔等名企HR、知名高校教授、优秀大学生、招办主任等，帮助高中生从各种不确定中找到自己生涯发展方向。\"\n','http://localhost:8080/clp/upload/1741940412148.jpg','003','乔宝刚','是','通过',0,0,NULL,0,3),
(1741940460859,'2025-03-14 16:21:00','1741940440932','生物学核心概念选讲（生理篇）','小初高基础教育','生物学核心概念选讲（生理篇）','36 课时',NULL,'本课程选取生物学中的核心概念，从核心概念的历史形成和发展、核心概念的理解和应用等多个方面，将基础教育阶段特别是高中阶段的生物学内容与大学生物学相衔接，探索生物学核心概念的教学方法。本课程是系列课程的第一部分——生理篇，主要围绕内环境和稳态、兴奋和动作电位等核心概念开展教学探索。\n','http://localhost:8080/clp/upload/1741940454707.jpg','004','张铭','是','通过',0,0,NULL,0,4),
(1741940500093,'2025-03-14 16:21:39','1741940480500','医学基础','高等教育与学术进阶','医学基础','80 课时',NULL,'\"《医学基础》是医药相关专业基础课程，总课时32学时。主要选用教材为《人体解剖生理学》，人体解剖学是研究正常人体各部分形态、位置及结构的科学，是学习《医学基础》的形态学基础；人体生理学是研究正常人体生命活动规律和生理功能的科学，如呼吸、消化、循环、泌尿等系统具有哪些功能，以及它们受到哪些因素的调节和控制等问题。\n\n本课程的目的，是使学习者掌握人体运动系统、神经系统、循环系统、呼吸系统、消化系统、泌尿系统、内分泌系统、生殖系统、感觉器官等九大系统的基本结构、形态和位置；机体各系统、器官正常的生理功能。同时了解人体结构与功能、人体与环境的关系以及人体功能活动的一般规律。《医学基础》着重培养学生理论联系实际的能力、观察分析问题的能力、动手能力、创新能力和自主学习的能力。\"\n','http://localhost:8080/clp/upload/1741940494657.jpg','005','刘霞','是','通过',0,0,NULL,0,5),
(1741940552501,'2025-03-14 16:22:31','1741940517121','2026考研数学每日一讲系列','高等教育与学术进阶','2026考研数学每日一讲系列','300 课时',NULL,'不止讲题 更讲方法','http://localhost:8080/clp/upload/1741940544639.png','006','姜晓千','是','通过',0,0,'2025-03-14 19:01:17',2,6),
(1741940586313,'2025-03-14 16:23:05','1741940570033','巧克毕业论文','高等教育与学术进阶','巧克毕业论文','45 课时',NULL,'毕业论文，是实现高等学校人才培养目标的重要教学环节，是准予毕业和申请学位的基本依据之一。毕业论文，也是对学习知识的理解和综合运用能力的重要考查，是培养学生创新意识和创新能力的重要手段，是理论学习与社会实践相结合的重要体现。为贯彻教育部“狠抓新时代全国高等学校本科教育工作”、“加快建设高水平本科教育 全面提高人才培养能力”等文件精神，本课程围绕毕业论文全过程，主要讲述毕业论文的作用、基本要求、主要类型、工作流程、选题、开题、论文撰写、答辩以及案例点评与分析等内容，为学生顺利完成毕业论文提供全方面的指导，提高学生毕业论文的完成质量和水平，从而全面提升人才培养质量和效果。\n','http://localhost:8080/clp/upload/1741940581552.jpg','007','彭迪云','是','通过',0,0,'2025-03-14 18:59:31',2,7),
(1741940663824,'2025-03-14 16:24:23','1741940643346','实验设计与分析','高等教育与学术进阶','实验设计与分析','40 课时',NULL,'《实验设计与分析》是一门运用统计学思想，合理高效地设计实验，科学地分析实验数据并得到结论的统计学专业课程。同时，作为一种可用于数据收集和系统分析的强大工具，其在实验科学、产品设计、管理科学和社会科学等领域中应用广泛。\n','http://localhost:8080/clp/upload/1741940657601.jpg','008','周迎春','是','通过',0,0,'2025-03-18 15:35:15',1,8),
(1741942000050,'2025-03-14 16:46:39','1741941934245','5小时梳理教师资格证-中学《教师知识与能力》笔试','职业认证与技能提升','5小时梳理教师资格证-中学《教师知识与能力》笔试','40 课时',NULL,'该课程是基于社会需求，针对经济管理专业学生所开设的一门实用性课程，采用案例教学模式，学生可以即学即用，也适合在职商务人士学习。课程内容均来自企业商务实践，涵盖商务建模、业务自动化、项目管理、管理决策建模、盈亏平衡分析建模、经营管理最优决策、常用财务函数、投资评估、不确定及风险分析决策、经济预测与分析、工资核算、人事档案管理与分析、金融建模、学生成绩统计分析等。该课程提供应用Excel的现实业务问题解决方案，旨在培养学生运用Excel解决业务问题的能力，提高职场竞争力。','http://localhost:8080/clp/upload/1741942346583.png','009','王一','是','通过',0,0,'2025-03-14 19:00:10',3,9),
(1741942171302,'2025-03-14 16:49:30','1741942071300','Excel商务应用与建模','职业认证与技能提升','Excel商务应用与建模','48 课时',NULL,'该课程是基于社会需求，针对经济管理专业学生所开设的一门实用性课程，采用案例教学模式，学生可以即学即用，也适合在职商务人士学习。课程内容均来自企业商务实践，涵盖商务建模、业务自动化、项目管理、管理决策建模、盈亏平衡分析建模、经营管理最优决策、常用财务函数、投资评估、不确定及风险分析决策、经济预测与分析、工资核算、人事档案管理与分析、金融建模、学生成绩统计分析等。该课程提供应用Excel的现实业务问题解决方案，旨在培养学生运用Excel解决业务问题的能力，提高职场竞争力。\n','http://localhost:8080/clp/upload/1741942157999.jpg','010','张国锋','是','通过',0,0,'2025-03-14 20:23:03',1,10),
(1741942211597,'2025-03-14 16:50:11','1741942187708','公司金融学','职业认证与技能提升','公司金融学','95 课时',NULL,'本门课程从公司这种所有制形式入手，解读公司的投资决策、融资决策以及分配决策的内在逻辑，探索公司价值最大化的实现路径。本门课程的特点在于，用浅显的语言解释复杂的金融学理论，同时用Excel和金融计算器实现公司金融学涉及到的计算与模型构建，从而突出金融学理论的应用性。学习完本门课程，学员将能够熟练使用相关知识对杠杆公司以及投资项目进行估值，同时从理论上能够深入地理解公司的资本结构以及股利政策对公司价值的影响。本门课程为金融学的入门课程之一，不预设先修课程，适于任何对金融学有兴趣的人士学习。学习本门课程有助于学员通过CPA和CFA等考试。','http://localhost:8080/clp/upload/1741942202329.jpg','011','许志','是','通过',0,0,NULL,0,11),
(1741942253511,'2025-03-14 16:50:53','1741942222731','求职攻略','职业认证与技能提升','求职攻略','68 课时',NULL,'\"求职攻略》是一门实践性、实用性、参与性很强的课程，旨在帮助大学毕业生充分认知自我，合理调整职业预期，树立正确的就业观，增强就业竞争意识，掌握求职的基本常识和技巧，增强择业求职的实力，确立职业发展的理念，最终指导和帮助大学毕业生实现成功就业，迅速适应职场。本课程按照求职过程的时间顺序，从确定求职目标、收集信息、制作简历、准备面试、防范求职陷阱、职场沟通技能提升、职场形象塑造、初入职的生涯规划等方面对大学毕业生的求职进行详细指导。\"\n','http://localhost:8080/clp/upload/1741942240274.png','012','王亮','是','通过',0,0,NULL,0,12),
(1741944017817,'2025-03-14 17:20:16','1741943986228','雅思写作','语言与留学考试','雅思写作','80 课时','http://localhost:8080/clp/upload/1741944009303.jpg','\" 本课程紧扣雅思写作评分标准，在解读雅思评分标准中的词汇资源（lexical resource）和语法范围及精准度（Grammatical Range and Accuracy）基础上,讲解雅思写作中选词和造句要求，帮学生打下扎实的语法词汇基础。然后在解读评分表中的连贯与衔接（coherence and cohesion）和 任务回应（Task response）基础上，结合高分范文的讲解和分析，帮助学生掌握开头段，主体段落，和结论段的写作技巧以及观点论证型论文的3种基本框架（Thesis-led approach, argument-led approach and refutation）和报告型论文的基本框架，使雅思考生能够灵活运用恰当的谋篇布局来有效回应雅思大作文(task2)的3种命题模式：观点论证型、报告型和混合型。\n\n   在解读雅思小作文（task 1）评分标准中的任务完成情况（Task Achievement）的基础上（由于大作文和小作文评分标准的其他三项都是相同的），帮助学生了解小作文即图表描述题型的规范要求，然后针对具体的图表，通过实例分析讲解，帮助学生掌握如何描述各种数据类图表和非数据类图表。\n\n   通过本课程的学习，学生可以掌握雅思写作的题型和要求，把握雅思学术写作的特点及风格，提升用英语撰写报告和小论文的能力， 提升学术素养，为今后参与学术交流、或出国留学深造打下良好的语言基础。\"\n','http://localhost:8080/clp/upload/1741944007308.jpg','013','许雪芬','是','通过',0,0,NULL,0,13),
(1741944063961,'2025-03-14 17:21:03','1741944026428','短视频创作与运营','兴趣与生活美学','短视频创作与运营','32 课时',NULL,'随着移动互联的日益便捷，短视频时已经来临，短视频成为当今信息的主要传递方式之一。短视频的制作也不再是传媒行业的专属，人人皆可创作，但是门槛低并不代表人人都会利用短视频来表达。未来，短视频会进一步转向工具化属性发展，一如我们当今的写作、计算机、驾驶能力一般，成为一种通识性能力。《短视频创作与运营》是一门大众化的短视频全流程技能教授课程，可以零基础进行学习。通过学习大家将会具有两个层面的能力提升，在思维层面，可以了解、掌握短视频的规律及特点，能对短视频进行拆解与品评，在实践层面，能够独立或联合进行短视频的策划、拍摄、制作及传播与运营。本课程的亮点在于一站式打通短视频相关内容，快捷掌握短视频的制作与运营能力。\n','http://localhost:8080/clp/upload/1741944054323.jpg','014','贾若','是','通过',0,0,NULL,0,14),
(1741944093181,'2025-03-14 17:21:33','1741944071988','Python编程基础','前沿科技与 IT 技能','Python编程基础','64 课时',NULL,'在本课程的讲授中，每一个知识点都提供了相关程序实例，希望大家能通过这些具体实例更好地掌握Python程序的编写方法。本课程的目标是使大家具备Python基础编程能力，并基本具备应用Python解决实际应用问题的能力，同时也为后继Python相关的更深入学习打下良好基础。\n','http://localhost:8080/clp/upload/1741944088526.png','015','王恺','是','通过',0,0,NULL,0,15),
(1741944140121,'2025-03-14 17:22:19','1741944121972','机器学习','前沿科技与 IT 技能','机器学习','45 课时',NULL,'本课程重点介绍机器学习中的核心算法和理论，使学生通过理论学习掌握机器学习中的经典理论，了解当前最新发展，并学会针对各自学科的具体问题设计机器学习算法。课程内容包括支持向量机、人工神经网络、深度学习、强化学习、传统的机器学习五个模块，用丰富的理论推导和实验案例加深学生的理解。 从2020年第一次开课以来，这门课程在中国MOOC大学上受到广泛欢迎，前5期选课人数合计8万多人。开课团队试图将深奥的课程讲解得通俗易懂，配合有趣的编程实例，激发学生兴趣。 随着近年来人工智能的发展，本课程也需要相应增添新的教学内容。课程团队正在紧锣密鼓的录制新内容，下一次开课的时候同学们就能看到。 总之，这是一门精心设计、口碑良好的MOOC课程，希望有更多同学报名学习，也希望大家帮我们大力宣传。\n','http://localhost:8080/clp/upload/1741944138571.jpg','016','胡浩基','是','通过',0,0,'2025-03-19 21:40:36',8,16);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'kechengxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1741950078698 DEFAULT CHARSET=utf8mb3 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values 
(1741949919571,'2025-03-14 18:58:39','202531418583946287373','kechengxinxi',11,1741944140121,'机器学习','http://localhost:8080/clp/upload/1741944138571.jpg',1,16,16,52,48,1,'已完成','河南省郑州市中原区'),
(1741949919711,'2025-03-14 18:58:39','202531418583946431235','kechengxinxi',11,1741939760154,'中学化学教学设计与实践','http://localhost:8080/clp/upload/1741939745379.jpg',2,2,2,52,4,1,'已退款','河南省郑州市中原区'),
(1741949972642,'2025-03-14 18:59:31','202531418593169111880','kechengxinxi',11,1741940586313,'巧克毕业论文','http://localhost:8080/clp/upload/1741940581552.jpg',1,7,7,7,7,1,'已支付','河南省郑州市中原区'),
(1741950011024,'2025-03-14 19:00:10','20253141901044215571','kechengxinxi',11,1741942000050,'5小时梳理教师资格证-中学《教师知识与能力》笔试','http://localhost:8080/clp/upload/1741942346583.png',1,9,9,9,9,1,'已发货','河南省郑州市中原区'),
(1741950078697,'2025-03-14 19:01:17','20253141911795031907','kechengxinxi',11,1741940552501,'2026考研数学每日一讲系列','http://localhost:8080/clp/upload/1741940544639.png',3,6,6,18,18,1,'已支付','河南省郑州市中原区');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1741949835525 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values 
(1741949826569,'2025-03-14 18:57:06',11,1741939760154,'kechengxinxi2','中学化学教学设计与实践','http://localhost:8080/clp/upload/1741939745379.jpg'),
(1741949835524,'2025-03-14 18:57:14',11,1741944140121,'kechengxinxi','机器学习','http://localhost:8080/clp/upload/1741944138571.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values 
(1,1,'asd','users','管理员','zr1h20vvm1zhqcgneh2chhx1jg75qsql','2025-03-14 16:17:10','2025-03-18 16:31:46'),
(4,1741798836514,'1','jiaoshi','教师','3mgk5bbwhpgnrlj76ca38fzxkxu48tf1','2025-03-13 01:00:40','2025-03-14 17:22:42'),
(5,22,'002','jiaoshi','教师','rwjxyel8iick8o8rs95hgj5d8j3fxu9o','2025-03-14 16:06:40','2025-03-14 17:09:51'),
(6,23,'003','jiaoshi','教师','wcnpr4fh0psb1wuq9snmqlz4i3l6ulda','2025-03-14 16:19:41','2025-03-14 17:19:42'),
(7,24,'004','jiaoshi','教师','v3oeao15zp0pvyfgqa03dfb0tgeuv6i5','2025-03-14 16:20:37','2025-03-14 17:20:37'),
(8,25,'005','jiaoshi','教师','qy4wvplzk2w34a2nag8lomzk564ke9n4','2025-03-14 16:21:11','2025-03-14 17:21:11'),
(9,26,'006','jiaoshi','教师','kuerytv90ku7fcjcn4msaiwh83gdhrrj','2025-03-14 16:21:54','2025-03-14 17:21:55'),
(10,1741884207878,'008','jiaoshi','教师','32xn200dir4n75hk4368m0st5c23i517','2025-03-14 16:23:58','2025-03-14 17:23:58'),
(11,1741941510172,'009','jiaoshi','教师','t6b7a8iipowf7lk7cdt5mioutecjolxs','2025-03-14 16:45:29','2025-03-14 17:45:30'),
(12,1741941564585,'010','jiaoshi','教师','f141ir5kb1cjtebnn0hx41n49f9rto9r','2025-03-14 16:47:44','2025-03-14 17:47:44'),
(13,1741941604858,'011','jiaoshi','教师','abd5xar0o9logkkbc7sgwbgnbei01a5i','2025-03-14 16:49:44','2025-03-14 17:49:45'),
(14,1741941804966,'012','jiaoshi','教师','c18fyifztwshjic4qqdkmivg79wzk9qq','2025-03-14 16:50:19','2025-03-14 17:50:19'),
(15,1741942987049,'013','jiaoshi','教师','kv1c1u4y1bffx52ve5z8e2r559ed0d68','2025-03-14 17:19:40','2025-03-14 18:19:41'),
(16,1741943895763,'014','jiaoshi','教师','0nhqpfusq9yym3ug7ft8qwwek93j0smm','2025-03-14 17:20:24','2025-03-14 18:20:25'),
(17,1741943927333,'015','jiaoshi','教师','ykfp6xtisiogw9vw4mh60uexx776vcaf','2025-03-14 17:21:10','2025-03-14 18:21:10'),
(18,1741943963881,'016','jiaoshi','教师','ohvftsr9tdrmgkk7jpb7vmabrb40kag4','2025-03-14 17:21:41','2025-03-14 18:21:42'),
(19,11,'1','yonghu','用户','nwowq4cynf27on70rbtbukmlz1r0gt40','2025-03-14 17:28:52','2025-03-21 16:36:35'),
(20,21,'001','jiaoshi','教师','eceyycaanweg1rdy2usg9yncef5k8rjq','2025-03-14 20:38:59','2025-03-19 22:40:27');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values 
(1,'asd','asd','管理员','2025-03-14 16:17:04');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `beizhu` longtext COMMENT '备注',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`beizhu`,`money`) values 
(11,'2025-03-14 16:16:35','1','123456','郭俊男','男','19588522236','1781194711@qq.com','http://localhost:8080/clp/upload/1741884066102.jpg','大四软件工程学生',303),
(12,'2025-03-14 16:16:38','2','123456','路人甲','女','13823888882','773890002@qq.com','http://localhost:8080/clp/upload/yonghu_zhaopian2.jpg','备注2',100),
(13,'2025-03-14 16:16:40','3','123456','炮灰乙','女','13823888883','773890003@qq.com','http://localhost:8080/clp/upload/yonghu_zhaopian3.jpg','备注3',100),
(14,'2025-03-14 16:16:42','4','123456','流氓丙','男','13823888884','773890004@qq.com','http://localhost:8080/clp/upload/yonghu_zhaopian4.jpg','备注4',100),
(15,'2025-03-14 16:16:44','5','123456','土匪丁','男','13823888885','773890005@qq.com','http://localhost:8080/clp/upload/yonghu_zhaopian5.jpg','备注5',100);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
