-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot0v0ov
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springboot0v0ov`
--

/*!40000 DROP DATABASE IF EXISTS `springboot0v0ov`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot0v0ov` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot0v0ov`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2022-03-30 02:54:05',11,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2022-03-30 02:54:05',12,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2022-03-30 02:54:05',13,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2022-03-30 02:54:05',14,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2022-03-30 02:54:05',15,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2022-03-30 02:54:05',16,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'meishixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussmeishifenxiang`
--

DROP TABLE IF EXISTS `discussmeishifenxiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussmeishifenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='美食分享评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussmeishifenxiang`
--

LOCK TABLES `discussmeishifenxiang` WRITE;
/*!40000 ALTER TABLE `discussmeishifenxiang` DISABLE KEYS */;
INSERT INTO `discussmeishifenxiang` VALUES (111,'2022-03-30 02:54:05',1,1,'用户名1','评论内容1','回复内容1'),(112,'2022-03-30 02:54:05',2,2,'用户名2','评论内容2','回复内容2'),(113,'2022-03-30 02:54:05',3,3,'用户名3','评论内容3','回复内容3'),(114,'2022-03-30 02:54:05',4,4,'用户名4','评论内容4','回复内容4'),(115,'2022-03-30 02:54:05',5,5,'用户名5','评论内容5','回复内容5'),(116,'2022-03-30 02:54:05',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussmeishifenxiang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussmeishixinxi`
--

DROP TABLE IF EXISTS `discussmeishixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussmeishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='美食信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussmeishixinxi`
--

LOCK TABLES `discussmeishixinxi` WRITE;
/*!40000 ALTER TABLE `discussmeishixinxi` DISABLE KEYS */;
INSERT INTO `discussmeishixinxi` VALUES (101,'2022-03-30 02:54:05',1,1,'用户名1','评论内容1','回复内容1'),(102,'2022-03-30 02:54:05',2,2,'用户名2','评论内容2','回复内容2'),(103,'2022-03-30 02:54:05',3,3,'用户名3','评论内容3','回复内容3'),(104,'2022-03-30 02:54:05',4,4,'用户名4','评论内容4','回复内容4'),(105,'2022-03-30 02:54:05',5,5,'用户名5','评论内容5','回复内容5'),(106,'2022-03-30 02:54:05',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussmeishixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishifenxiang`
--

DROP TABLE IF EXISTS `meishifenxiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishifenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishimingcheng` varchar(200) DEFAULT NULL COMMENT '美食名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `meishileixing` varchar(200) DEFAULT NULL COMMENT '美食类型',
  `tuijianzhishu` varchar(200) DEFAULT NULL COMMENT '推荐指数',
  `meishitese` longtext COMMENT '美食特色',
  `renjunxiaofei` varchar(200) DEFAULT NULL COMMENT '人均消费',
  `dakadidian` varchar(200) DEFAULT NULL COMMENT '打卡地点',
  `meishixiangqing` longtext COMMENT '美食详情',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='美食分享';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishifenxiang`
--

LOCK TABLES `meishifenxiang` WRITE;
/*!40000 ALTER TABLE `meishifenxiang` DISABLE KEYS */;
INSERT INTO `meishifenxiang` VALUES (51,'2022-03-30 02:54:05','美食名称1','upload/meishifenxiang_tupian1.jpg','美食类型1','一星','美食特色1','人均消费1','打卡地点1','美食详情1','用户账号1','用户姓名1','是','',1,1),(52,'2022-03-30 02:54:05','美食名称2','upload/meishifenxiang_tupian2.jpg','美食类型2','一星','美食特色2','人均消费2','打卡地点2','美食详情2','用户账号2','用户姓名2','是','',2,2),(53,'2022-03-30 02:54:05','美食名称3','upload/meishifenxiang_tupian3.jpg','美食类型3','一星','美食特色3','人均消费3','打卡地点3','美食详情3','用户账号3','用户姓名3','是','',3,3),(54,'2022-03-30 02:54:05','美食名称4','upload/meishifenxiang_tupian4.jpg','美食类型4','一星','美食特色4','人均消费4','打卡地点4','美食详情4','用户账号4','用户姓名4','是','',4,4),(55,'2022-03-30 02:54:05','美食名称5','upload/meishifenxiang_tupian5.jpg','美食类型5','一星','美食特色5','人均消费5','打卡地点5','美食详情5','用户账号5','用户姓名5','是','',5,5),(56,'2022-03-30 02:54:05','美食名称6','upload/meishifenxiang_tupian6.jpg','美食类型6','一星','美食特色6','人均消费6','打卡地点6','美食详情6','用户账号6','用户姓名6','是','',6,6);
/*!40000 ALTER TABLE `meishifenxiang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishileixing`
--

DROP TABLE IF EXISTS `meishileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishileixing` varchar(200) DEFAULT NULL COMMENT '美食类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='美食类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishileixing`
--

LOCK TABLES `meishileixing` WRITE;
/*!40000 ALTER TABLE `meishileixing` DISABLE KEYS */;
INSERT INTO `meishileixing` VALUES (31,'2022-03-30 02:54:05','美食类型1'),(32,'2022-03-30 02:54:05','美食类型2'),(33,'2022-03-30 02:54:05','美食类型3'),(34,'2022-03-30 02:54:05','美食类型4'),(35,'2022-03-30 02:54:05','美食类型5'),(36,'2022-03-30 02:54:05','美食类型6');
/*!40000 ALTER TABLE `meishileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishixinxi`
--

DROP TABLE IF EXISTS `meishixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishimingcheng` varchar(200) DEFAULT NULL COMMENT '美食名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `meishileixing` varchar(200) DEFAULT NULL COMMENT '美食类型',
  `tuijianzhishu` varchar(200) DEFAULT NULL COMMENT '推荐指数',
  `meishitese` longtext COMMENT '美食特色',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  `chiboshipin` varchar(200) DEFAULT NULL COMMENT '吃播视频',
  `meishixiangqing` longtext COMMENT '美食详情',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='美食信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishixinxi`
--

LOCK TABLES `meishixinxi` WRITE;
/*!40000 ALTER TABLE `meishixinxi` DISABLE KEYS */;
INSERT INTO `meishixinxi` VALUES (41,'2022-03-30 02:54:05','美食名称1','upload/meishixinxi_tupian1.jpg','美食类型1','一星','美食特色1','地区1','','美食详情1','商家账号1','商家名称1',1,1,'2022-03-30 10:54:05',1,99.9),(42,'2022-03-30 02:54:05','美食名称2','upload/meishixinxi_tupian2.jpg','美食类型2','一星','美食特色2','地区2','','美食详情2','商家账号2','商家名称2',2,2,'2022-03-30 10:54:05',2,99.9),(43,'2022-03-30 02:54:05','美食名称3','upload/meishixinxi_tupian3.jpg','美食类型3','一星','美食特色3','地区3','','美食详情3','商家账号3','商家名称3',3,3,'2022-03-30 10:54:05',3,99.9),(44,'2022-03-30 02:54:05','美食名称4','upload/meishixinxi_tupian4.jpg','美食类型4','一星','美食特色4','地区4','','美食详情4','商家账号4','商家名称4',4,4,'2022-03-30 10:54:05',4,99.9),(45,'2022-03-30 02:54:05','美食名称5','upload/meishixinxi_tupian5.jpg','美食类型5','一星','美食特色5','地区5','','美食详情5','商家账号5','商家名称5',5,5,'2022-03-30 10:54:05',5,99.9),(46,'2022-03-30 02:54:05','美食名称6','upload/meishixinxi_tupian6.jpg','美食类型6','一星','美食特色6','地区6','','美食详情6','商家账号6','商家名称6',6,6,'2022-03-30 10:54:05',6,99.9);
/*!40000 ALTER TABLE `meishixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'meishixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `logistics` longtext COMMENT '物流',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangjia`
--

DROP TABLE IF EXISTS `shangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiamingcheng` varchar(200) NOT NULL COMMENT '商家名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shangjiadizhi` varchar(200) DEFAULT NULL COMMENT '商家地址',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangjia`
--

LOCK TABLES `shangjia` WRITE;
/*!40000 ALTER TABLE `shangjia` DISABLE KEYS */;
INSERT INTO `shangjia` VALUES (21,'2022-03-30 02:54:05','商家账号1','123456','商家名称1','upload/shangjia_tupian1.jpg','联系人1','13823888881','商家地址1',100),(22,'2022-03-30 02:54:05','商家账号2','123456','商家名称2','upload/shangjia_tupian2.jpg','联系人2','13823888882','商家地址2',100),(23,'2022-03-30 02:54:05','商家账号3','123456','商家名称3','upload/shangjia_tupian3.jpg','联系人3','13823888883','商家地址3',100),(24,'2022-03-30 02:54:05','商家账号4','123456','商家名称4','upload/shangjia_tupian4.jpg','联系人4','13823888884','商家地址4',100),(25,'2022-03-30 02:54:05','商家账号5','123456','商家名称5','upload/shangjia_tupian5.jpg','联系人5','13823888885','商家地址5',100),(26,'2022-03-30 02:54:05','商家账号6','123456','商家名称6','upload/shangjia_tupian6.jpg','联系人6','13823888886','商家地址6',100);
/*!40000 ALTER TABLE `shangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户账号1','yonghu','用户','jy1q6ab2nm7vsk372ick7l07b8f9mp0d','2022-03-30 02:56:58','2022-03-30 03:56:58');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-30 02:54:05');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-03-30 02:54:05','用户账号1','123456','用户姓名1','upload/yonghu_touxiang1.jpg','男','13823888881',100),(12,'2022-03-30 02:54:05','用户账号2','123456','用户姓名2','upload/yonghu_touxiang2.jpg','男','13823888882',100),(13,'2022-03-30 02:54:05','用户账号3','123456','用户姓名3','upload/yonghu_touxiang3.jpg','男','13823888883',100),(14,'2022-03-30 02:54:05','用户账号4','123456','用户姓名4','upload/yonghu_touxiang4.jpg','男','13823888884',100),(15,'2022-03-30 02:54:05','用户账号5','123456','用户姓名5','upload/yonghu_touxiang5.jpg','男','13823888885',100),(16,'2022-03-30 02:54:05','用户账号6','123456','用户姓名6','upload/yonghu_touxiang6.jpg','男','13823888886',100);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-06 10:54:15
