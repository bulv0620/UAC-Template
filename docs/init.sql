-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: nestjs
-- ------------------------------------------------------
-- Server version	5.7.31-log

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
-- Table structure for table `dictionary`
--

DROP TABLE IF EXISTS `dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dictionaryCode` varchar(255) NOT NULL,
  `dictionaryLabel` varchar(255) NOT NULL,
  `dictionaryValue` varchar(255) NOT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `parentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1bc57e94a48049b298872856a15` (`parentId`),
  CONSTRAINT `FK_1bc57e94a48049b298872856a15` FOREIGN KEY (`parentId`) REFERENCES `dictionary` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dictionary`
--

/*!40000 ALTER TABLE `dictionary` DISABLE KEYS */;
INSERT INTO `dictionary` VALUES (15,'RESOURCE_TYPE','资源类型','资源类型',0,'2024-04-29 01:33:43.122501','2024-04-29 01:33:43.122501',NULL),(16,'RESOURCE_TYPE','菜单','0',0,'2024-04-29 01:34:24.844972','2024-04-29 01:34:24.844972',15),(17,'RESOURCE_TYPE','页面','1',0,'2024-04-29 01:34:40.307640','2024-04-29 01:34:40.307640',15),(18,'RESOURCE_TYPE','弹窗','2',0,'2024-04-29 01:34:54.002203','2024-04-29 01:34:54.002203',15),(19,'BOOLEAN','布尔值','布尔值',0,'2024-04-29 13:44:54.646240','2024-04-29 13:44:54.646240',NULL),(20,'BOOLEAN','是','1',0,'2024-04-29 13:45:24.451680','2024-04-30 00:48:37.465797',19),(21,'BOOLEAN','否','0',0,'2024-04-29 13:45:40.650871','2024-04-30 00:48:39.383881',19),(22,'FORM_TABLE_ITEM_TYPE','表单元素类型','表单元素类型',0,'2024-04-29 14:06:46.250568','2024-04-29 14:06:46.250568',NULL),(34,'TABLE_ALIGN','表格对其方式','表格对其方式',0,'2024-04-30 02:33:49.751987','2024-04-30 02:33:49.751987',NULL),(35,'TABLE_ALIGN','左对齐','left',0,'2024-04-30 02:34:19.103931','2024-04-30 02:34:19.103931',34),(36,'TABLE_ALIGN','居中','center',0,'2024-04-30 02:34:40.602974','2024-04-30 02:34:40.602974',34),(37,'TABLE_ALIGN','右对齐','right',0,'2024-04-30 02:34:54.300321','2024-04-30 02:34:54.300321',34),(38,'SELECT_TYPE','选择框类型','选择框类型',0,'2024-04-30 02:43:14.708482','2024-04-30 02:43:14.708482',NULL),(39,'SELECT_TYPE','数据字典','dict',0,'2024-04-30 02:43:31.476674','2024-04-30 02:43:31.476674',38),(40,'SELECT_TYPE','自定义','manual',0,'2024-04-30 02:43:47.676442','2024-04-30 02:43:47.676442',38),(41,'FIELD_TYPE','配置组类型','配置组类型',0,'2024-04-30 03:20:17.853624','2024-04-30 03:20:17.853624',NULL),(42,'FIELD_TYPE','表单','form',0,'2024-04-30 03:20:45.520020','2024-04-30 03:20:45.520020',41),(43,'FIELD_TYPE','表格','table',0,'2024-04-30 03:20:57.450075','2024-04-30 03:20:57.450075',41),(44,'FIELD_TYPE','按钮','button',0,'2024-04-30 03:21:08.637738','2024-04-30 03:21:08.637738',41),(45,'BUTTON_POSITION','按钮位置','按钮位置',0,'2024-04-30 03:23:07.886167','2025-02-21 13:12:18.000000',NULL),(57,'BUTTON_TYPE','按钮类型','按钮类型',0,'2025-02-27 17:41:40.808653','2025-02-27 17:41:40.808653',NULL),(64,'BUTTON_TYPE','Default','default',0,'2025-02-27 17:45:36.830641','2025-02-27 17:45:36.830641',57),(65,'BUTTON_TYPE','Primary','primary',0,'2025-02-27 17:45:36.834433','2025-02-27 17:45:36.834433',57),(66,'BUTTON_TYPE','Success','success',0,'2025-02-27 17:45:36.840657','2025-02-27 17:45:36.840657',57),(67,'BUTTON_TYPE','Info','info',0,'2025-02-27 17:45:36.843623','2025-02-27 17:45:36.843623',57),(68,'BUTTON_TYPE','Warning','warning',0,'2025-02-27 17:45:36.846217','2025-02-27 17:45:36.846217',57),(69,'BUTTON_TYPE','Danger','danger',0,'2025-02-27 17:45:36.849129','2025-02-27 17:45:36.849129',57),(70,'FORM_TABLE_ITEM_TYPE','文本','0',0,'2025-02-28 14:13:30.366021','2025-02-28 14:13:30.366021',22),(71,'FORM_TABLE_ITEM_TYPE','输入框','1',0,'2025-02-28 14:13:30.374521','2025-02-28 14:13:30.374521',22),(72,'FORM_TABLE_ITEM_TYPE','选择框','2',0,'2025-02-28 14:13:30.378908','2025-02-28 14:13:30.378908',22),(73,'FORM_TABLE_ITEM_TYPE','日期选择','3',0,'2025-02-28 14:13:30.385329','2025-02-28 14:13:30.385329',22),(74,'FORM_TABLE_ITEM_TYPE','通用查询','4',1,'2025-02-28 14:13:30.389784','2025-02-28 14:13:30.389784',22),(75,'FORM_TABLE_ITEM_TYPE','文件上传','5',1,'2025-02-28 14:13:30.393711','2025-02-28 14:13:30.393711',22),(76,'FORM_TABLE_ITEM_TYPE','图片','6',0,'2025-02-28 14:13:30.397664','2025-02-28 14:13:30.397664',22),(77,'FORM_TABLE_ITEM_TYPE','选择项文本','7',0,'2025-02-28 14:13:30.403155','2025-02-28 14:13:30.403155',22),(78,'FORM_TABLE_ITEM_TYPE','插槽','8',0,'2025-02-28 14:13:30.415152','2025-02-28 14:13:30.415152',22),(79,'FORM_TABLE_ITEM_TYPE','按钮','9',0,'2025-02-28 14:13:30.422066','2025-02-28 14:13:30.422066',22),(80,'FORM_TABLE_ITEM_TYPE','图标选择','10',0,'2025-02-28 14:13:30.427622','2025-02-28 14:13:30.427622',22),(81,'FORM_TABLE_ITEM_TYPE','代码','11',0,'2025-02-28 14:13:30.434475','2025-02-28 14:13:30.434475',22),(82,'BUTTON_POSITION','表头','tableTop',0,'2025-10-16 08:40:46.460444','2025-10-16 08:40:46.460444',45),(83,'BUTTON_POSITION','表格列','tableColumn',0,'2025-10-16 08:40:46.470566','2025-10-16 08:40:46.470566',45);
/*!40000 ALTER TABLE `dictionary` ENABLE KEYS */;

--
-- Table structure for table `example`
--

DROP TABLE IF EXISTS `example`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `example` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exampleName` varchar(255) NOT NULL,
  `exampleDesc` varchar(255) NOT NULL,
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `exampleCode` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `example`
--

/*!40000 ALTER TABLE `example` DISABLE KEYS */;
INSERT INTO `example` VALUES (1,'123','123','2025-02-27 15:18:40.752212','2025-02-27 15:18:40.752212','test'),(16,'qq','qq','2025-02-27 16:33:09.906536','2025-02-27 16:33:09.906536','qq'),(17,'zxc','c','2025-02-27 16:33:13.820518','2025-02-27 16:33:13.820518','zc'),(18,'qwe','asd','2025-02-27 16:33:16.962645','2025-02-27 16:33:16.962645','asd'),(19,'vfd','dfv','2025-02-27 16:33:21.259866','2025-02-27 16:33:21.259866','vds'),(20,'nfgh','fng','2025-02-27 16:33:24.666258','2025-02-27 16:33:24.666258','ngh'),(21,'ghm','ghm','2025-02-27 16:33:27.833993','2025-02-27 16:33:27.833993','gh'),(22,'tyu','tu','2025-02-27 16:33:34.189489','2025-02-27 16:33:34.189489','tuy'),(23,'gfhj','fghj','2025-02-27 16:33:38.448616','2025-02-27 16:33:38.448616','ghj'),(24,'nb','vbn','2025-02-27 16:33:43.429068','2025-02-27 16:33:43.429068','bn'),(25,'vnb','fghp00','2025-02-27 16:33:48.288680','2025-03-19 15:13:05.000000','vnb'),(27,'1','1','2025-03-26 10:27:37.558930','2025-03-26 10:27:37.558930','1');
/*!40000 ALTER TABLE `example` ENABLE KEYS */;

--
-- Table structure for table `field`
--

DROP TABLE IF EXISTS `field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldCode` int(11) NOT NULL,
  `fieldGroup` varchar(255) NOT NULL,
  `fieldType` varchar(255) NOT NULL,
  `fields` json NOT NULL,
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field`
--

/*!40000 ALTER TABLE `field` DISABLE KEYS */;
INSERT INTO `field` VALUES (4,21,'form','form','[{\"bind\": {}, \"prop\": \"exampleCode\", \"span\": \"6\", \"type\": \"1\", \"align\": \"left\", \"label\": \"数据编号\", \"visible\": true, \"disabled\": false, \"required\": false, \"selectType\": \"dict\", \"dictionaryCode\": \"BOOLEAN\"}, {\"bind\": {}, \"prop\": \"exampleName\", \"span\": \"6\", \"type\": \"1\", \"label\": \"数据名称\", \"visible\": true, \"disabled\": false, \"required\": false}, {\"bind\": {}, \"prop\": \"exampleDesc\", \"span\": \"6\", \"type\": \"1\", \"align\": \"left\", \"label\": \"数据描述\", \"visible\": true, \"disabled\": false, \"required\": false}]','2024-04-30 06:55:49.759000','2024-04-30 06:55:49.759000'),(5,21,'table','table','[{\"bind\": {}, \"prop\": \"exampleCode\", \"type\": \"0\", \"align\": \"left\", \"label\": \"数据编号\", \"width\": \"1200\", \"visible\": true, \"disabled\": false, \"required\": false}, {\"bind\": {}, \"prop\": \"exampleName\", \"type\": \"0\", \"align\": \"left\", \"label\": \"数据名称\", \"width\": \"1200\", \"visible\": true, \"disabled\": false}, {\"bind\": {}, \"prop\": \"exampleDesc\", \"type\": \"0\", \"label\": \"数据描述\", \"width\": \"1200\", \"visible\": true, \"disabled\": false}]','2024-04-30 06:55:49.785000','2024-04-30 06:55:49.785000'),(6,21,'button','button','[{\"bind\": {}, \"icon\": \"El-Plus\", \"prop\": \"handleAdd\", \"type\": \"9\", \"align\": \"left\", \"label\": \"新增数据\", \"visible\": true, \"disabled\": false, \"position\": \"tableTop\", \"buttonType\": \"primary\"}, {\"bind\": {}, \"icon\": \"El-Delete\", \"prop\": \"handleRemoveBatch\", \"type\": \"9\", \"label\": \"批量删除\", \"visible\": true, \"disabled\": false, \"position\": \"tableTop\", \"buttonType\": \"danger\"}, {\"bind\": {}, \"prop\": \"handleUpdate\", \"type\": \"9\", \"label\": \"修改\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\", \"buttonType\": \"primary\"}, {\"bind\": {}, \"prop\": \"handleRemove\", \"type\": \"9\", \"label\": \"删除\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\", \"buttonType\": \"danger\"}]','2024-04-30 06:55:49.799000','2024-04-30 06:55:49.799000'),(7,23,'form','form','[{\"bind\": {}, \"prop\": \"username\", \"span\": \"8\", \"type\": \"1\", \"align\": \"left\", \"label\": \"用户名\", \"visible\": true, \"disabled\": false, \"required\": false, \"placeholder\": \"\"}, {\"bind\": {}, \"prop\": \"name\", \"span\": \"8\", \"type\": \"1\", \"label\": \"姓名\", \"visible\": true, \"disabled\": false, \"required\": false, \"placeholder\": \"\"}, {\"bind\": {}, \"prop\": \"email\", \"span\": \"8\", \"type\": \"1\", \"label\": \"邮箱\", \"visible\": true, \"disabled\": false, \"required\": false, \"placeholder\": \"\"}, {\"bind\": {}, \"prop\": \"isAdmin\", \"span\": \"8\", \"type\": \"2\", \"align\": \"left\", \"label\": \"管理员\", \"visible\": true, \"disabled\": false, \"required\": false, \"selectType\": \"manual\", \"placeholder\": \"\", \"selectOption\": \"boolSelect\"}]','2024-04-30 14:13:40.617000','2024-04-30 14:13:40.617000'),(8,23,'table','table','[{\"bind\": {}, \"prop\": \"username\", \"type\": \"0\", \"align\": \"left\", \"label\": \"用户名\", \"width\": \"\", \"visible\": true, \"disabled\": false}, {\"bind\": {}, \"prop\": \"isAdmin\", \"type\": \"7\", \"label\": \"管理员\", \"width\": \"\", \"visible\": true, \"disabled\": false, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}, {\"bind\": {}, \"prop\": \"name\", \"type\": \"0\", \"label\": \"姓名\", \"width\": \"\", \"visible\": true, \"disabled\": false}, {\"bind\": {}, \"prop\": \"email\", \"type\": \"0\", \"label\": \"邮箱\", \"width\": \"\", \"visible\": true, \"disabled\": false}, {\"bind\": {}, \"prop\": \"createTime\", \"type\": \"0\", \"label\": \"创建时间\", \"width\": \"\", \"visible\": true, \"disabled\": false}, {\"bind\": {}, \"prop\": \"updateTime\", \"type\": \"0\", \"label\": \"更新时间\", \"width\": \"\", \"visible\": true, \"disabled\": false}]','2024-04-30 14:13:40.643000','2024-04-30 14:13:40.643000'),(9,23,'button','button','[{\"bind\": {}, \"prop\": \"handleUpdate\", \"type\": \"9\", \"label\": \"修改\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\", \"buttonType\": \"primary\"}, {\"bind\": {}, \"prop\": \"handleBindRole\", \"type\": \"9\", \"label\": \"绑定角色\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\", \"buttonType\": \"primary\"}, {\"bind\": {}, \"prop\": \"handleRemove\", \"type\": \"9\", \"label\": \"删除\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\", \"buttonType\": \"danger\"}, {\"bind\": {}, \"icon\": \"El-CirclePlus\", \"prop\": \"handleAdd\", \"type\": \"9\", \"align\": \"left\", \"label\": \"新增用户\", \"visible\": true, \"disabled\": false, \"position\": \"tableTop\", \"buttonType\": \"primary\"}, {\"bind\": {}, \"icon\": \"El-Delete\", \"prop\": \"handleRemoveBatch\", \"type\": \"9\", \"label\": \"批量删除\", \"visible\": true, \"disabled\": false, \"position\": \"tableTop\", \"buttonType\": \"danger\"}]','2024-04-30 14:13:40.664000','2024-04-30 14:13:40.664000'),(10,26,'form','form','[{\"bind\": {}, \"prop\": \"username\", \"span\": \"24\", \"type\": \"1\", \"label\": \"用户名\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"bind\": {}, \"prop\": \"password\", \"span\": \"24\", \"type\": \"1\", \"label\": \"密码\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"bind\": {}, \"prop\": \"name\", \"span\": \"24\", \"type\": \"1\", \"label\": \"姓名\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"bind\": {}, \"prop\": \"email\", \"span\": \"24\", \"type\": \"1\", \"label\": \"邮箱\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"bind\": {}, \"prop\": \"isAdmin\", \"span\": \"24\", \"type\": \"2\", \"label\": \"管理员\", \"visible\": true, \"disabled\": false, \"required\": true, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}]','2024-04-30 15:02:27.920000','2024-04-30 15:02:27.920000'),(13,27,'form','form','[{\"prop\": \"username\", \"span\": \"24\", \"type\": \"1\", \"label\": \"用户名\", \"visible\": true, \"disabled\": true, \"required\": false}, {\"prop\": \"name\", \"span\": \"24\", \"type\": \"1\", \"label\": \"姓名\", \"visible\": true, \"disabled\": false, \"required\": true, \"labelWidth\": \"\"}, {\"prop\": \"email\", \"span\": \"24\", \"type\": \"1\", \"label\": \"邮箱\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"isAdmin\", \"span\": \"24\", \"type\": \"2\", \"label\": \"管理员\", \"visible\": true, \"disabled\": false, \"required\": true, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}]','2024-04-30 15:20:50.517000','2024-04-30 15:20:50.517000'),(16,28,'form','form','[{\"prop\": \"username\", \"type\": \"1\", \"label\": \"用户名\", \"visible\": true, \"disabled\": true, \"required\": false}, {\"prop\": \"name\", \"type\": \"1\", \"label\": \"姓名\", \"visible\": true, \"disabled\": true, \"required\": false}, {\"prop\": \"isAdmin\", \"type\": \"2\", \"label\": \"管理员\", \"visible\": true, \"disabled\": true, \"required\": false, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}]','2024-05-01 02:28:30.306148','2024-05-01 02:28:30.306148'),(17,29,'form','form','[{\"prop\": \"roleName\", \"span\": \"24\", \"type\": \"1\", \"label\": \"角色名称\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"description\", \"span\": \"24\", \"type\": \"1\", \"label\": \"角色描述\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"isDefault\", \"span\": \"24\", \"type\": \"2\", \"label\": \"是否默认\", \"visible\": true, \"disabled\": false, \"required\": true, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}]','2024-05-01 03:16:32.157000','2024-05-01 03:16:32.157000'),(18,30,'form','form','[{\"prop\": \"roleName\", \"span\": \"24\", \"type\": \"1\", \"label\": \"角色名称\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"description\", \"span\": \"24\", \"type\": \"1\", \"label\": \"角色描述\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"isDefault\", \"span\": \"24\", \"type\": \"2\", \"label\": \"是否默认\", \"visible\": true, \"disabled\": false, \"required\": true, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}]','2024-05-01 03:16:36.278000','2024-05-01 03:16:36.278000'),(19,31,'form','form','[{\"prop\": \"roleName\", \"span\": \"12\", \"type\": \"1\", \"label\": \"角色名称\", \"visible\": true, \"disabled\": true, \"required\": false}, {\"prop\": \"isDefault\", \"span\": \"12\", \"type\": \"2\", \"label\": \"是否默认\", \"visible\": true, \"disabled\": true, \"required\": false, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}, {\"prop\": \"description\", \"span\": \"24\", \"type\": \"1\", \"label\": \"角色描述\", \"visible\": true, \"disabled\": true, \"required\": false}]','2024-05-01 03:16:40.156000','2024-05-01 03:16:40.156000'),(20,24,'form','form','[{\"prop\": \"roleName\", \"span\": \"6\", \"type\": \"1\", \"label\": \"角色名称\", \"visible\": true, \"disabled\": false, \"required\": false}, {\"prop\": \"description\", \"span\": \"6\", \"type\": \"1\", \"label\": \"角色描述\", \"visible\": true, \"disabled\": false, \"required\": false}, {\"prop\": \"isDefault\", \"span\": \"6\", \"type\": \"2\", \"label\": \"是否默认\", \"visible\": true, \"disabled\": false, \"required\": false, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}]','2024-05-01 04:00:22.122000','2024-05-01 04:00:22.122000'),(21,24,'table','table','[{\"prop\": \"roleName\", \"type\": \"0\", \"align\": \"left\", \"label\": \"角色名称\", \"visible\": true, \"disabled\": false}, {\"prop\": \"description\", \"type\": \"0\", \"align\": \"left\", \"label\": \"角色描述\", \"visible\": true, \"disabled\": false}, {\"prop\": \"isDefault\", \"type\": \"7\", \"align\": \"left\", \"label\": \"是否默认\", \"visible\": true, \"disabled\": false, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}, {\"prop\": \"createTime\", \"type\": \"0\", \"align\": \"left\", \"label\": \"创建时间\", \"visible\": true, \"disabled\": false}, {\"prop\": \"updateTime\", \"type\": \"0\", \"align\": \"left\", \"label\": \"更新时间\", \"visible\": true, \"disabled\": false}]','2024-05-01 04:00:22.152000','2024-05-01 04:00:22.152000'),(22,24,'button','button','[{\"bind\": \"\", \"prop\": \"handleUpdate\", \"type\": \"9\", \"label\": \"修改\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\", \"buttonType\": \"primary\"}, {\"bind\": \"\", \"prop\": \"handleBindResource\", \"type\": \"9\", \"label\": \"绑定资源\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\", \"buttonType\": \"primary\"}, {\"bind\": \"\", \"prop\": \"handleRemove\", \"type\": \"9\", \"label\": \"删除\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\", \"buttonType\": \"danger\"}, {\"bind\": \"\", \"icon\": \"El-CirclePlus\", \"prop\": \"handleAdd\", \"type\": \"9\", \"label\": \"新增角色\", \"visible\": true, \"disabled\": false, \"position\": \"tableTop\", \"buttonType\": \"primary\"}, {\"bind\": \"\", \"icon\": \"El-Delete\", \"prop\": \"handleRemoveBatch\", \"type\": \"9\", \"label\": \"批量删除\", \"visible\": true, \"disabled\": false, \"position\": \"tableTop\", \"buttonType\": \"danger\"}]','2024-05-01 04:00:22.166000','2024-05-01 04:00:22.166000'),(23,32,'form','form','[{\"prop\": \"dictionaryCode\", \"type\": \"1\", \"label\": \"字典编号\", \"visible\": true, \"disabled\": false, \"required\": false}, {\"prop\": \"dictionaryLabel\", \"type\": \"1\", \"align\": \"left\", \"label\": \"字典名称\", \"visible\": true, \"disabled\": false, \"required\": false}]','2024-05-01 05:04:14.874000','2024-05-01 05:04:14.874000'),(24,32,'table','table','[{\"prop\": \"dictionaryCode\", \"type\": \"0\", \"align\": \"left\", \"label\": \"字典编号\", \"visible\": true, \"disabled\": false}, {\"prop\": \"dictionaryLabel\", \"type\": \"0\", \"align\": \"left\", \"label\": \"字典名称\", \"visible\": true, \"disabled\": false}, {\"prop\": \"createTime\", \"type\": \"0\", \"align\": \"left\", \"label\": \"创建时间\", \"visible\": true, \"disabled\": false}, {\"prop\": \"updateTime\", \"type\": \"0\", \"align\": \"left\", \"label\": \"更新时间\", \"visible\": true, \"disabled\": false}]','2024-05-01 05:04:14.892000','2024-05-01 05:04:14.892000'),(25,32,'button','button','[{\"bind\": \"\", \"prop\": \"handleUpdate\", \"type\": \"9\", \"label\": \"修改\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\", \"buttonType\": \"primary\"}, {\"bind\": \"\", \"prop\": \"handleRemove\", \"type\": \"9\", \"label\": \"删除\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\", \"buttonType\": \"danger\"}, {\"bind\": \"\", \"icon\": \"El-CirclePlus\", \"prop\": \"handleAdd\", \"type\": \"9\", \"label\": \"新增字典\", \"visible\": true, \"disabled\": false, \"position\": \"tableTop\", \"buttonType\": \"primary\"}, {\"bind\": \"\", \"icon\": \"El-Delete\", \"prop\": \"handleRemoveBatch\", \"type\": \"9\", \"label\": \"批量删除\", \"visible\": true, \"disabled\": false, \"position\": \"tableTop\", \"buttonType\": \"danger\"}]','2024-05-01 05:04:14.907000','2024-05-01 05:04:14.907000'),(26,33,'form','form','[{\"prop\": \"dictionaryCode\", \"span\": \"12\", \"type\": \"1\", \"label\": \"字典编号\", \"visible\": true, \"disabled\": false, \"required\": true, \"labelWidth\": \"\"}, {\"prop\": \"dictionaryLabel\", \"span\": \"12\", \"type\": \"1\", \"label\": \"字典名称\", \"visible\": true, \"disabled\": false, \"required\": true}]','2024-05-01 05:17:01.379000','2024-05-01 05:17:01.379000'),(27,33,'table','table','[{\"prop\": \"dictionaryLabel\", \"type\": \"1\", \"align\": \"left\", \"label\": \"选项标签\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"dictionaryValue\", \"type\": \"1\", \"label\": \"选项值\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"disabled\", \"type\": \"2\", \"label\": \"是否禁用\", \"visible\": true, \"disabled\": false, \"required\": true, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}]','2024-05-01 05:17:01.397000','2024-05-01 05:17:01.397000'),(28,33,'button','button','[{\"bind\": \"\", \"icon\": \"El-CirclePlus\", \"prop\": \"handleAddRow\", \"type\": \"9\", \"label\": \"新增\", \"visible\": true, \"disabled\": false, \"position\": \"tableTop\", \"buttonType\": \"primary\"}, {\"bind\": \"\", \"prop\": \"handleDeleteRow\", \"type\": \"9\", \"label\": \"删除\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\", \"buttonType\": \"danger\"}]','2024-05-01 05:17:01.412000','2024-05-01 05:17:01.412000'),(29,34,'form','form','[{\"prop\": \"dictionaryCode\", \"span\": \"12\", \"type\": \"1\", \"align\": \"left\", \"label\": \"字典编号\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"dictionaryLabel\", \"span\": \"12\", \"type\": \"1\", \"label\": \"字典名称\", \"visible\": true, \"disabled\": false, \"required\": true}]','2024-05-01 10:38:28.023000','2024-05-01 10:38:28.023000'),(30,34,'table','table','[{\"prop\": \"dictionaryLabel\", \"type\": \"1\", \"align\": \"left\", \"label\": \"选项标签\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"dictionaryValue\", \"type\": \"1\", \"label\": \"选项值\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"disabled\", \"type\": \"2\", \"label\": \"是否禁用\", \"visible\": true, \"disabled\": false, \"required\": true, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}]','2024-05-01 10:38:28.041000','2024-05-01 10:38:28.041000'),(31,34,'button','button','[{\"bind\": \"\", \"icon\": \"El-CirclePlus\", \"prop\": \"handleAddRow\", \"type\": \"9\", \"label\": \"新增\", \"visible\": true, \"disabled\": false, \"position\": \"tableTop\", \"buttonType\": \"primary\"}, {\"bind\": \"\", \"prop\": \"handleDeleteRow\", \"type\": \"9\", \"label\": \"删除\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\", \"buttonType\": \"danger\"}]','2024-05-01 10:38:28.057000','2024-05-01 10:38:28.057000'),(32,36,'form','form','[{\"bind\": {}, \"prop\": \"exampleCode\", \"span\": \"24\", \"type\": \"1\", \"label\": \"数据编号\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"bind\": {}, \"prop\": \"exampleName\", \"span\": \"24\", \"type\": \"1\", \"label\": \"数据名称\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"bind\": {\"type\": \"textarea\"}, \"prop\": \"exampleDesc\", \"span\": \"24\", \"type\": \"1\", \"label\": \"数据描述\", \"visible\": true, \"disabled\": false, \"required\": true}]','2025-02-27 15:04:19.379000','2025-02-27 15:04:19.379000'),(34,37,'form','form','[{\"bind\": {}, \"prop\": \"exampleCode\", \"span\": \"24\", \"type\": \"1\", \"label\": \"数据编号\", \"visible\": true, \"disabled\": true, \"required\": false}, {\"bind\": {}, \"prop\": \"exampleName\", \"span\": \"24\", \"type\": \"1\", \"label\": \"数据名称\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"bind\": {\"type\": \"textarea\"}, \"prop\": \"exampleDesc\", \"span\": \"24\", \"type\": \"1\", \"label\": \"数据描述\", \"visible\": true, \"disabled\": false, \"required\": true}]','2025-02-27 15:04:24.403000','2025-02-27 15:04:24.403000');
/*!40000 ALTER TABLE `field` ENABLE KEYS */;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceName` varchar(50) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `type` enum('0','1','2') NOT NULL,
  `order` int(11) NOT NULL,
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `parentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_31cb2785f5ff7d71cbc2e4aaa7c` (`parentId`),
  CONSTRAINT `FK_31cb2785f5ff7d71cbc2e4aaa7c` FOREIGN KEY (`parentId`) REFERENCES `resource` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (15,'Test','测试菜单',NULL,NULL,'El-Files','0',30,'2024-03-16 19:09:43.531125','2024-04-29 05:55:29.196498',NULL),(21,'Example','测试页面','/example','/example/index.vue','El-Guide','1',20,'2024-04-30 05:15:41.370965','2025-02-27 11:16:46.000000',15),(22,'Setting','系统管理',NULL,NULL,'El-Setting','0',999,'2024-04-30 13:58:53.842934','2024-04-30 13:58:53.842934',NULL),(23,'UserManage','用户管理','/setting/user-manage','/setting/user-manage/index.vue','El-User','1',10,'2024-04-30 14:03:35.782596','2024-04-30 14:03:35.782596',22),(24,'RoleManage','角色管理','/setting/role-manage','/setting/role-manage/index.vue','Svg-role','1',20,'2024-04-30 14:04:13.513959','2024-04-30 14:04:13.513959',22),(25,'ResourceManage','资源管理','/setting/resource-manage','/setting/resource-manage/index.vue','El-Files','1',30,'2024-04-30 14:04:48.092234','2024-04-30 14:04:48.092234',22),(26,NULL,'用户管理-新增',NULL,NULL,NULL,'2',10,'2024-04-30 14:43:32.575802','2024-04-30 14:43:32.575802',23),(27,NULL,'用户管理-修改',NULL,NULL,NULL,'2',20,'2024-04-30 14:43:51.636450','2024-04-30 14:43:51.636450',23),(28,NULL,'用户管理-绑定角色',NULL,NULL,NULL,'2',30,'2024-04-30 14:44:05.430588','2024-04-30 14:44:05.430588',23),(29,NULL,'角色管理-新增',NULL,NULL,NULL,'2',10,'2024-05-01 03:16:02.694484','2024-05-01 03:16:02.694484',24),(30,NULL,'角色管理-修改',NULL,NULL,NULL,'2',20,'2024-05-01 03:16:15.389270','2024-05-01 03:16:15.389270',24),(31,NULL,'角色管理-绑定资源',NULL,NULL,NULL,'2',30,'2024-05-01 03:16:26.706680','2024-05-01 03:16:26.706680',24),(32,'DictionaryManage','数据字典','/setting/dictionary-manage','/setting/dictionary-manage/index.vue','El-Collection','1',0,'2024-05-01 04:57:24.653018','2024-05-01 05:09:41.000000',22),(33,NULL,'数据字典-新增',NULL,NULL,NULL,'2',10,'2024-05-01 05:01:41.961417','2024-05-01 05:01:41.961417',32),(34,NULL,'数据字典-修改',NULL,NULL,NULL,'2',20,'2024-05-01 05:01:53.245468','2024-05-01 05:01:53.245468',32),(36,NULL,'测试新增',NULL,NULL,NULL,'2',1,'2025-02-27 15:03:46.231548','2025-02-27 15:03:46.231548',21),(37,NULL,'测试修改',NULL,NULL,NULL,'2',2,'2025-02-27 15:03:56.419651','2025-02-27 15:03:56.419651',21);
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `isDefault` tinyint(4) NOT NULL DEFAULT '0',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'默认角色','默认角色',1,'2023-12-04 16:33:17.645737','2023-12-04 16:33:17.645737'),(5,'测试角色','测试角色',0,'2024-05-01 04:15:10.228765','2024-05-01 05:26:18.000000');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

--
-- Table structure for table `role_resource`
--

DROP TABLE IF EXISTS `role_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_resource` (
  `resourceId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`resourceId`,`roleId`),
  KEY `IDX_8e41fa151bd158bc1ef96f7056` (`resourceId`),
  KEY `IDX_eb3b0d193525d121cd3dc549ac` (`roleId`),
  CONSTRAINT `FK_8e41fa151bd158bc1ef96f7056c` FOREIGN KEY (`resourceId`) REFERENCES `resource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_eb3b0d193525d121cd3dc549acb` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_resource`
--

/*!40000 ALTER TABLE `role_resource` DISABLE KEYS */;
INSERT INTO `role_resource` VALUES (15,5),(21,5);
/*!40000 ALTER TABLE `role_resource` ENABLE KEYS */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `isAdmin` tinyint(4) NOT NULL DEFAULT '0',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (6,'bulv','$2a$10$s3lisCJwN1.v.GEVI0tFyOqXKM.jX/JILXSsyaHsJXRSCItzzRQjW','管理员','bulv0620@163.com',1,'2023-12-04 16:50:50.488237','2024-04-30 15:23:13.000000'),(16,'test','$2a$10$lOS6/eTFBefQ0UvwzHVKB.jaUmkf1m18CUybuB1f8QnKmidnu6zuK','test','test@test.com',0,'2024-05-01 04:31:49.875246','2025-02-21 14:12:39.000000');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`roleId`,`userId`),
  KEY `IDX_dba55ed826ef26b5b22bd39409` (`roleId`),
  KEY `IDX_ab40a6f0cd7d3ebfcce082131f` (`userId`),
  CONSTRAINT `FK_ab40a6f0cd7d3ebfcce082131fd` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_dba55ed826ef26b5b22bd39409b` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,6),(1,16),(5,6),(5,16);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;

--
-- Dumping routines for database 'nestjs'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-24 14:38:37
