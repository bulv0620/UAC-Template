/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 8.0.33 : Database - nestjs
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nestjs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `nestjs`;

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dictionaryCode`,`dictionaryLabel`,`dictionaryValue`,`disabled`,`createTime`,`updateTime`,`parentId`) values 
(15,'RESOURCE_TYPE','资源类型','资源类型',0,'2024-04-29 01:33:43.122501','2024-04-29 01:33:43.122501',NULL),
(16,'RESOURCE_TYPE','菜单','0',0,'2024-04-29 01:34:24.844972','2024-04-29 01:34:24.844972',15),
(17,'RESOURCE_TYPE','页面','1',0,'2024-04-29 01:34:40.307640','2024-04-29 01:34:40.307640',15),
(18,'RESOURCE_TYPE','弹窗','2',0,'2024-04-29 01:34:54.002203','2024-04-29 01:34:54.002203',15),
(19,'BOOLEAN','布尔值','布尔值',0,'2024-04-29 13:44:54.646240','2024-04-29 13:44:54.646240',NULL),
(20,'BOOLEAN','是','1',0,'2024-04-29 13:45:24.451680','2024-04-30 00:48:37.465797',19),
(21,'BOOLEAN','否','0',0,'2024-04-29 13:45:40.650871','2024-04-30 00:48:39.383881',19),
(22,'FORM_TABLE_ITEM_TYPE','表单元素类型','表单元素类型',0,'2024-04-29 14:06:46.250568','2024-04-29 14:06:46.250568',NULL),
(23,'FORM_TABLE_ITEM_TYPE','文本','0',0,'2024-04-29 14:07:18.039164','2024-04-29 14:07:18.039164',22),
(24,'FORM_TABLE_ITEM_TYPE','输入框','1',0,'2024-04-29 14:07:26.918504','2024-04-29 14:07:26.918504',22),
(25,'FORM_TABLE_ITEM_TYPE','选择框','2',0,'2024-04-29 14:07:36.164055','2024-04-29 14:07:36.164055',22),
(26,'FORM_TABLE_ITEM_TYPE','日期选择','3',0,'2024-04-29 14:07:46.932368','2024-04-29 14:07:46.932368',22),
(27,'FORM_TABLE_ITEM_TYPE','通用查询','4',1,'2024-04-29 14:07:57.283822','2024-04-30 01:58:21.244913',22),
(28,'FORM_TABLE_ITEM_TYPE','文件上传','5',1,'2024-04-29 14:08:12.638499','2024-04-30 01:58:19.344237',22),
(29,'FORM_TABLE_ITEM_TYPE','图片','6',0,'2024-04-29 14:08:24.201377','2024-04-29 14:08:24.201377',22),
(30,'FORM_TABLE_ITEM_TYPE','选择项文本','7',0,'2024-04-29 14:08:42.924947','2024-04-29 14:08:42.924947',22),
(31,'FORM_TABLE_ITEM_TYPE','插槽','8',0,'2024-04-29 14:08:53.751441','2024-04-29 14:08:53.751441',22),
(32,'FORM_TABLE_ITEM_TYPE','按钮','9',0,'2024-04-29 14:09:03.722014','2024-04-29 14:09:03.722014',22),
(33,'FORM_TABLE_ITEM_TYPE','图标选择','10',0,'2024-04-29 14:09:20.439862','2024-04-29 14:09:20.439862',22),
(34,'TABLE_ALIGN','表格对其方式','表格对其方式',0,'2024-04-30 02:33:49.751987','2024-04-30 02:33:49.751987',NULL),
(35,'TABLE_ALIGN','左对齐','left',0,'2024-04-30 02:34:19.103931','2024-04-30 02:34:19.103931',34),
(36,'TABLE_ALIGN','居中','center',0,'2024-04-30 02:34:40.602974','2024-04-30 02:34:40.602974',34),
(37,'TABLE_ALIGN','右对齐','right',0,'2024-04-30 02:34:54.300321','2024-04-30 02:34:54.300321',34),
(38,'SELECT_TYPE','选择框类型','选择框类型',0,'2024-04-30 02:43:14.708482','2024-04-30 02:43:14.708482',NULL),
(39,'SELECT_TYPE','数据字典','dict',0,'2024-04-30 02:43:31.476674','2024-04-30 02:43:31.476674',38),
(40,'SELECT_TYPE','自定义','manual',0,'2024-04-30 02:43:47.676442','2024-04-30 02:43:47.676442',38),
(41,'FIELD_TYPE','配置组类型','配置组类型',0,'2024-04-30 03:20:17.853624','2024-04-30 03:20:17.853624',NULL),
(42,'FIELD_TYPE','表单','form',0,'2024-04-30 03:20:45.520020','2024-04-30 03:20:45.520020',41),
(43,'FIELD_TYPE','表格','table',0,'2024-04-30 03:20:57.450075','2024-04-30 03:20:57.450075',41),
(44,'FIELD_TYPE','按钮','button',0,'2024-04-30 03:21:08.637738','2024-04-30 03:21:08.637738',41),
(45,'BUTTON_POSITION','按钮位置','按钮位置',0,'2024-04-30 03:23:07.886167','2024-04-30 03:23:07.886167',NULL),
(46,'BUTTON_POSITION','表头','tableTop',0,'2024-04-30 03:23:25.086257','2024-04-30 03:23:25.086257',45),
(47,'BUTTON_POSITION','表格列','tableColumn',0,'2024-04-30 03:23:41.134892','2024-04-30 03:23:41.134892',45);

/*Data for the table `field` */

insert  into `field`(`id`,`fieldCode`,`fieldGroup`,`fieldType`,`fields`,`createTime`,`updateTime`) values 
(4,21,'form','form','[{\"prop\": \"formProp1\", \"span\": \"6\", \"type\": \"2\", \"align\": \"left\", \"label\": \"表单字段1\", \"visible\": true, \"disabled\": false, \"required\": false, \"selectType\": \"dict\", \"dictionaryCode\": \"BOOLEAN\"}, {\"prop\": \"formProp2\", \"span\": \"6\", \"type\": \"1\", \"label\": \"表单字段2\", \"visible\": true, \"disabled\": false, \"required\": false}]','2024-04-30 06:55:49.759000','2024-04-30 06:55:49.759000'),
(5,21,'table','table','[{\"prop\": \"tableProp1\", \"type\": \"0\", \"align\": \"left\", \"label\": \"表格字段1\", \"width\": \"100\", \"visible\": true, \"disabled\": false, \"required\": false}, {\"prop\": \"tableProp2\", \"type\": \"0\", \"align\": \"left\", \"label\": \"表格字段2\", \"visible\": true, \"disabled\": false}]','2024-04-30 06:55:49.785000','2024-04-30 06:55:49.785000'),
(6,21,'button','button','[{\"bind\": {\"type\": \"primary\", \"plain\": true}, \"icon\": \"El-Cpu\", \"prop\": \"testButton\", \"type\": \"9\", \"align\": \"left\", \"label\": \"测试\", \"visible\": true, \"disabled\": false, \"position\": \"tableTop\"}]','2024-04-30 06:55:49.799000','2024-04-30 06:55:49.799000'),
(7,23,'form','form','[{\"prop\": \"username\", \"span\": \"6\", \"type\": \"1\", \"align\": \"left\", \"label\": \"用户名\", \"visible\": true, \"disabled\": false, \"required\": false, \"placeholder\": \"\"}, {\"prop\": \"name\", \"span\": \"6\", \"type\": \"1\", \"label\": \"姓名\", \"visible\": true, \"disabled\": false, \"required\": false, \"placeholder\": \"\"}, {\"prop\": \"email\", \"span\": \"6\", \"type\": \"1\", \"label\": \"邮箱\", \"visible\": true, \"disabled\": false, \"required\": false, \"placeholder\": \"\"}, {\"prop\": \"isAdmin\", \"span\": \"6\", \"type\": \"2\", \"align\": \"left\", \"label\": \"管理员\", \"visible\": true, \"disabled\": false, \"required\": false, \"selectType\": \"manual\", \"placeholder\": \"\", \"selectOption\": \"boolSelect\"}]','2024-04-30 14:13:40.617000','2024-04-30 14:13:40.617000'),
(8,23,'table','table','[{\"prop\": \"username\", \"type\": \"0\", \"align\": \"left\", \"label\": \"用户名\", \"width\": \"\", \"visible\": true, \"disabled\": false}, {\"prop\": \"isAdmin\", \"type\": \"7\", \"label\": \"管理员\", \"width\": \"\", \"visible\": true, \"disabled\": false, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}, {\"prop\": \"name\", \"type\": \"0\", \"label\": \"姓名\", \"width\": \"\", \"visible\": true, \"disabled\": false}, {\"prop\": \"email\", \"type\": \"0\", \"label\": \"邮箱\", \"width\": \"\", \"visible\": true, \"disabled\": false}, {\"prop\": \"createTime\", \"type\": \"0\", \"label\": \"创建时间\", \"width\": \"\", \"visible\": true, \"disabled\": false}, {\"prop\": \"updateTime\", \"type\": \"0\", \"label\": \"更新时间\", \"width\": \"\", \"visible\": true, \"disabled\": false}]','2024-04-30 14:13:40.643000','2024-04-30 14:13:40.643000'),
(9,23,'button','button','[{\"bind\": {\"bg\": true, \"text\": true, \"type\": \"primary\"}, \"prop\": \"handleUpdate\", \"type\": \"9\", \"label\": \"修改\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\"}, {\"bind\": {\"bg\": true, \"text\": true, \"type\": \"primary\"}, \"prop\": \"handleBindRole\", \"type\": \"9\", \"label\": \"绑定角色\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\"}, {\"bind\": {\"bg\": true, \"text\": true, \"type\": \"danger\"}, \"prop\": \"handleRemove\", \"type\": \"9\", \"label\": \"删除\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\"}, {\"bind\": {\"type\": \"primary\", \"plain\": true}, \"icon\": \"El-CirclePlus\", \"prop\": \"handleAdd\", \"type\": \"9\", \"align\": \"left\", \"label\": \"新增用户\", \"visible\": true, \"disabled\": false, \"position\": \"tableTop\"}, {\"bind\": {\"type\": \"danger\", \"plain\": true}, \"icon\": \"El-Delete\", \"prop\": \"handleRemoveBatch\", \"type\": \"9\", \"label\": \"批量删除\", \"visible\": true, \"disabled\": false, \"position\": \"tableTop\"}]','2024-04-30 14:13:40.664000','2024-04-30 14:13:40.664000'),
(10,26,'form','form','[{\"prop\": \"username\", \"span\": \"24\", \"type\": \"1\", \"label\": \"用户名\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"bind\": \"\", \"prop\": \"password\", \"span\": \"24\", \"type\": \"1\", \"label\": \"密码\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"name\", \"span\": \"24\", \"type\": \"1\", \"label\": \"姓名\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"email\", \"span\": \"24\", \"type\": \"1\", \"label\": \"邮箱\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"isAdmin\", \"span\": \"24\", \"type\": \"2\", \"label\": \"管理员\", \"visible\": true, \"disabled\": false, \"required\": true, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}]','2024-04-30 15:02:27.920000','2024-04-30 15:02:27.920000'),
(13,27,'form','form','[{\"prop\": \"username\", \"span\": \"24\", \"type\": \"1\", \"label\": \"用户名\", \"visible\": true, \"disabled\": true, \"required\": false}, {\"prop\": \"name\", \"span\": \"24\", \"type\": \"1\", \"label\": \"姓名\", \"visible\": true, \"disabled\": false, \"required\": true, \"labelWidth\": \"\"}, {\"prop\": \"email\", \"span\": \"24\", \"type\": \"1\", \"label\": \"邮箱\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"isAdmin\", \"span\": \"24\", \"type\": \"2\", \"label\": \"管理员\", \"visible\": true, \"disabled\": false, \"required\": true, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}]','2024-04-30 15:20:50.517000','2024-04-30 15:20:50.517000'),
(16,28,'form','form','[{\"prop\": \"username\", \"type\": \"1\", \"label\": \"用户名\", \"visible\": true, \"disabled\": true, \"required\": false}, {\"prop\": \"name\", \"type\": \"1\", \"label\": \"姓名\", \"visible\": true, \"disabled\": true, \"required\": false}, {\"prop\": \"isAdmin\", \"type\": \"2\", \"label\": \"管理员\", \"visible\": true, \"disabled\": true, \"required\": false, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}]','2024-05-01 02:28:30.306148','2024-05-01 02:28:30.306148'),
(17,29,'form','form','[{\"prop\": \"roleName\", \"span\": \"24\", \"type\": \"1\", \"label\": \"角色名称\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"description\", \"span\": \"24\", \"type\": \"1\", \"label\": \"角色描述\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"isDefault\", \"span\": \"24\", \"type\": \"2\", \"label\": \"是否默认\", \"visible\": true, \"disabled\": false, \"required\": true, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}]','2024-05-01 03:16:32.157000','2024-05-01 03:16:32.157000'),
(18,30,'form','form','[{\"prop\": \"roleName\", \"span\": \"24\", \"type\": \"1\", \"label\": \"角色名称\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"description\", \"span\": \"24\", \"type\": \"1\", \"label\": \"角色描述\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"isDefault\", \"span\": \"24\", \"type\": \"2\", \"label\": \"是否默认\", \"visible\": true, \"disabled\": false, \"required\": true, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}]','2024-05-01 03:16:36.278000','2024-05-01 03:16:36.278000'),
(19,31,'form','form','[{\"prop\": \"roleName\", \"span\": \"12\", \"type\": \"1\", \"label\": \"角色名称\", \"visible\": true, \"disabled\": true, \"required\": false}, {\"prop\": \"isDefault\", \"span\": \"12\", \"type\": \"2\", \"label\": \"是否默认\", \"visible\": true, \"disabled\": true, \"required\": false, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}, {\"prop\": \"description\", \"span\": \"24\", \"type\": \"1\", \"label\": \"角色描述\", \"visible\": true, \"disabled\": true, \"required\": false}]','2024-05-01 03:16:40.156000','2024-05-01 03:16:40.156000'),
(20,24,'form','form','[{\"prop\": \"roleName\", \"span\": \"6\", \"type\": \"1\", \"label\": \"角色名称\", \"visible\": true, \"disabled\": false, \"required\": false}, {\"prop\": \"description\", \"span\": \"6\", \"type\": \"1\", \"label\": \"角色描述\", \"visible\": true, \"disabled\": false, \"required\": false}, {\"prop\": \"isDefault\", \"span\": \"6\", \"type\": \"2\", \"label\": \"是否默认\", \"visible\": true, \"disabled\": false, \"required\": false, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}]','2024-05-01 04:00:22.122000','2024-05-01 04:00:22.122000'),
(21,24,'table','table','[{\"prop\": \"roleName\", \"type\": \"0\", \"align\": \"left\", \"label\": \"角色名称\", \"visible\": true, \"disabled\": false}, {\"prop\": \"description\", \"type\": \"0\", \"align\": \"left\", \"label\": \"角色描述\", \"visible\": true, \"disabled\": false}, {\"prop\": \"isDefault\", \"type\": \"7\", \"align\": \"left\", \"label\": \"是否默认\", \"visible\": true, \"disabled\": false, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}, {\"prop\": \"createTime\", \"type\": \"0\", \"align\": \"left\", \"label\": \"创建时间\", \"visible\": true, \"disabled\": false}, {\"prop\": \"updateTime\", \"type\": \"0\", \"align\": \"left\", \"label\": \"更新时间\", \"visible\": true, \"disabled\": false}]','2024-05-01 04:00:22.152000','2024-05-01 04:00:22.152000'),
(22,24,'button','button','[{\"bind\": {\"bg\": true, \"text\": true, \"type\": \"primary\"}, \"prop\": \"handleUpdate\", \"type\": \"9\", \"label\": \"修改\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\"}, {\"bind\": {\"bg\": true, \"text\": true, \"type\": \"primary\"}, \"prop\": \"handleBindResource\", \"type\": \"9\", \"label\": \"绑定资源\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\"}, {\"bind\": {\"bg\": true, \"text\": true, \"type\": \"danger\"}, \"prop\": \"handleRemove\", \"type\": \"9\", \"label\": \"删除\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\"}, {\"bind\": {\"type\": \"primary\", \"plain\": true}, \"icon\": \"El-CirclePlus\", \"prop\": \"handleAdd\", \"type\": \"9\", \"label\": \"新增角色\", \"visible\": true, \"disabled\": false, \"position\": \"tableTop\"}, {\"bind\": {\"type\": \"danger\", \"plain\": true}, \"icon\": \"El-Delete\", \"prop\": \"handleRemoveBatch\", \"type\": \"9\", \"label\": \"批量删除\", \"visible\": true, \"disabled\": false, \"position\": \"tableTop\"}]','2024-05-01 04:00:22.166000','2024-05-01 04:00:22.166000'),
(23,32,'form','form','[{\"prop\": \"dictionaryCode\", \"type\": \"1\", \"label\": \"字典编号\", \"visible\": true, \"disabled\": false, \"required\": false}, {\"prop\": \"dictionaryLabel\", \"type\": \"1\", \"align\": \"left\", \"label\": \"字典名称\", \"visible\": true, \"disabled\": false, \"required\": false}]','2024-05-01 05:04:14.874000','2024-05-01 05:04:14.874000'),
(24,32,'table','table','[{\"prop\": \"dictionaryCode\", \"type\": \"0\", \"align\": \"left\", \"label\": \"字典编号\", \"visible\": true, \"disabled\": false}, {\"prop\": \"dictionaryLabel\", \"type\": \"0\", \"align\": \"left\", \"label\": \"字典名称\", \"visible\": true, \"disabled\": false}, {\"prop\": \"createTime\", \"type\": \"0\", \"align\": \"left\", \"label\": \"创建时间\", \"visible\": true, \"disabled\": false}, {\"prop\": \"updateTime\", \"type\": \"0\", \"align\": \"left\", \"label\": \"更新时间\", \"visible\": true, \"disabled\": false}]','2024-05-01 05:04:14.892000','2024-05-01 05:04:14.892000'),
(25,32,'button','button','[{\"bind\": {\"bg\": true, \"text\": true, \"type\": \"primary\"}, \"prop\": \"handleUpdate\", \"type\": \"9\", \"label\": \"修改\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\"}, {\"bind\": {\"bg\": true, \"text\": true, \"type\": \"danger\"}, \"prop\": \"handleRemove\", \"type\": \"9\", \"label\": \"删除\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\"}, {\"bind\": {\"type\": \"primary\", \"plain\": true}, \"icon\": \"El-CirclePlus\", \"prop\": \"handleAdd\", \"type\": \"9\", \"label\": \"新增字典\", \"visible\": true, \"disabled\": false, \"position\": \"tableTop\"}, {\"bind\": {\"type\": \"danger\", \"plain\": true}, \"icon\": \"El-Delete\", \"prop\": \"handleRemoveBatch\", \"type\": \"9\", \"label\": \"批量删除\", \"visible\": true, \"disabled\": false, \"position\": \"tableTop\"}]','2024-05-01 05:04:14.907000','2024-05-01 05:04:14.907000'),
(26,33,'form','form','[{\"prop\": \"dictionaryCode\", \"span\": \"12\", \"type\": \"1\", \"label\": \"字典编号\", \"visible\": true, \"disabled\": false, \"required\": true, \"labelWidth\": \"\"}, {\"prop\": \"dictionaryLabel\", \"span\": \"12\", \"type\": \"1\", \"label\": \"字典名称\", \"visible\": true, \"disabled\": false, \"required\": true}]','2024-05-01 05:17:01.379000','2024-05-01 05:17:01.379000'),
(27,33,'table','table','[{\"prop\": \"dictionaryLabel\", \"type\": \"1\", \"align\": \"left\", \"label\": \"选项标签\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"dictionaryValue\", \"type\": \"1\", \"label\": \"选项值\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"disabled\", \"type\": \"2\", \"label\": \"是否禁用\", \"visible\": true, \"disabled\": false, \"required\": true, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}]','2024-05-01 05:17:01.397000','2024-05-01 05:17:01.397000'),
(28,33,'button','button','[{\"bind\": {\"type\": \"primary\"}, \"icon\": \"El-CirclePlus\", \"prop\": \"handleAddRow\", \"type\": \"9\", \"label\": \"新增\", \"visible\": true, \"disabled\": false, \"position\": \"tableTop\"}, {\"bind\": {\"bg\": true, \"text\": true, \"type\": \"danger\"}, \"prop\": \"handleDeleteRow\", \"type\": \"9\", \"label\": \"删除\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\"}]','2024-05-01 05:17:01.412000','2024-05-01 05:17:01.412000'),
(29,34,'form','form','[{\"prop\": \"dictionaryCode\", \"span\": \"12\", \"type\": \"1\", \"align\": \"left\", \"label\": \"字典编号\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"dictionaryLabel\", \"span\": \"12\", \"type\": \"1\", \"label\": \"字典名称\", \"visible\": true, \"disabled\": false, \"required\": true}]','2024-05-01 10:38:28.023043','2024-05-01 10:38:28.023043'),
(30,34,'table','table','[{\"prop\": \"dictionaryLabel\", \"type\": \"1\", \"align\": \"left\", \"label\": \"选项标签\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"dictionaryValue\", \"type\": \"1\", \"label\": \"选项值\", \"visible\": true, \"disabled\": false, \"required\": true}, {\"prop\": \"disabled\", \"type\": \"2\", \"label\": \"是否禁用\", \"visible\": true, \"disabled\": false, \"required\": true, \"selectType\": \"manual\", \"selectOption\": \"boolSelect\"}]','2024-05-01 10:38:28.041707','2024-05-01 10:38:28.041707'),
(31,34,'button','button','[{\"bind\": {\"type\": \"primary\"}, \"icon\": \"El-CirclePlus\", \"prop\": \"handleAddRow\", \"type\": \"9\", \"label\": \"新增\", \"visible\": true, \"disabled\": false, \"position\": \"tableTop\"}, {\"bind\": {\"bg\": true, \"text\": true, \"type\": \"danger\"}, \"prop\": \"handleDeleteRow\", \"type\": \"9\", \"label\": \"删除\", \"visible\": true, \"disabled\": false, \"position\": \"tableColumn\"}]','2024-05-01 10:38:28.057295','2024-05-01 10:38:28.057295');

/*Data for the table `resource` */

insert  into `resource`(`id`,`resourceName`,`title`,`path`,`component`,`icon`,`type`,`order`,`createTime`,`updateTime`,`parentId`) values 
(15,'Test','测试菜单',NULL,NULL,'El-Files','0',30,'2024-03-16 19:09:43.531125','2024-04-29 05:55:29.196498',NULL),
(21,'TestDynamic','测试动态','/testDynamic','/testDynamic/index.vue','El-Guide','1',20,'2024-04-30 05:15:41.370965','2024-04-30 05:15:41.370965',15),
(22,'Setting','系统管理',NULL,NULL,'El-Setting','0',999,'2024-04-30 13:58:53.842934','2024-04-30 13:58:53.842934',NULL),
(23,'UserManage','用户管理','/setting/user-manage','/setting/user-manage/index.vue','El-User','1',10,'2024-04-30 14:03:35.782596','2024-04-30 14:03:35.782596',22),
(24,'RoleManage','角色管理','/setting/role-manage','/setting/role-manage/index.vue','Svg-role','1',20,'2024-04-30 14:04:13.513959','2024-04-30 14:04:13.513959',22),
(25,'ResourceManage','资源管理','/setting/resource-manage','/setting/resource-manage/index.vue','El-Files','1',30,'2024-04-30 14:04:48.092234','2024-04-30 14:04:48.092234',22),
(26,NULL,'用户管理-新增',NULL,NULL,NULL,'2',10,'2024-04-30 14:43:32.575802','2024-04-30 14:43:32.575802',23),
(27,NULL,'用户管理-修改',NULL,NULL,NULL,'2',20,'2024-04-30 14:43:51.636450','2024-04-30 14:43:51.636450',23),
(28,NULL,'用户管理-绑定角色',NULL,NULL,NULL,'2',30,'2024-04-30 14:44:05.430588','2024-04-30 14:44:05.430588',23),
(29,NULL,'角色管理-新增',NULL,NULL,NULL,'2',10,'2024-05-01 03:16:02.694484','2024-05-01 03:16:02.694484',24),
(30,NULL,'角色管理-修改',NULL,NULL,NULL,'2',20,'2024-05-01 03:16:15.389270','2024-05-01 03:16:15.389270',24),
(31,NULL,'角色管理-绑定资源',NULL,NULL,NULL,'2',30,'2024-05-01 03:16:26.706680','2024-05-01 03:16:26.706680',24),
(32,'DictionaryManage','数据字典','/setting/dictionary-manage','/setting/dictionary-manage/index.vue','El-Collection','1',0,'2024-05-01 04:57:24.653018','2024-05-01 05:09:41.000000',22),
(33,NULL,'数据字典-新增',NULL,NULL,NULL,'2',10,'2024-05-01 05:01:41.961417','2024-05-01 05:01:41.961417',32),
(34,NULL,'数据字典-修改',NULL,NULL,NULL,'2',20,'2024-05-01 05:01:53.245468','2024-05-01 05:01:53.245468',32);

/*Data for the table `role` */

insert  into `role`(`id`,`roleName`,`description`,`isDefault`,`createTime`,`updateTime`) values 
(1,'默认角色','默认角色',1,'2023-12-04 16:33:17.645737','2023-12-04 16:33:17.645737'),
(5,'测试角色','测试角色',0,'2024-05-01 04:15:10.228765','2024-05-01 05:26:18.000000');

/*Data for the table `role_resource` */

insert  into `role_resource`(`resourceId`,`roleId`) values 
(15,5),
(21,5);

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`name`,`email`,`isAdmin`,`createTime`,`updateTime`) values 
(6,'bulv','$2a$10$s3lisCJwN1.v.GEVI0tFyOqXKM.jX/JILXSsyaHsJXRSCItzzRQjW','管理员','bulv0620@163.com',1,'2023-12-04 16:50:50.488237','2024-04-30 15:23:13.000000'),
(16,'test','$2a$10$lOS6/eTFBefQ0UvwzHVKB.jaUmkf1m18CUybuB1f8QnKmidnu6zuK','test','test@test.com',0,'2024-05-01 04:31:49.875246','2024-05-01 04:31:49.875246');

/*Data for the table `user_role` */

insert  into `user_role`(`roleId`,`userId`) values 
(1,6),
(1,16),
(5,16);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
