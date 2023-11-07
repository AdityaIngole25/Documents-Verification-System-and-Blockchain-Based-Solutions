-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: notary_bc1_db
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `notary_bc1_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `notary_bc1_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `notary_bc1_db`;

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applications` (
  `docid` int NOT NULL,
  `dhash` longblob,
  `prevHash` longblob,
  `userid` longblob,
  `title` longblob,
  `formId` int DEFAULT NULL,
  `docdesc` longblob,
  `dt` varchar(200) DEFAULT NULL,
  `tm` varchar(200) DEFAULT NULL,
  `skey` longblob,
  `filepath` longblob,
  `sts` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`docid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (1001,_binary '76e485ae91994d039b53d5a0732a8e69ba3a3323d5dd54d8aea71a9f39278d6e',_binary 'NA',_binary '\�\�\�3>-\�|?9�&xT',_binary '\��a,������3\Z��	��H̲UL搬�ܠŏ',1001,_binary '콧�\�#�RՆ�<��','7/3/2022','19:3',_binary '�����}\�\�l�K�++i)',_binary 'Z�`��\�\�>msP,]w<�镩�\r\Z\�˚q\�\�\�','submitted'),(1002,_binary 'ce102f491b067d885f4eedf7f17af123ea45c06ace29421f09a3a1a4b44abdc1',_binary '76e485ae91994d039b53d5a0732a8e69ba3a3323d5dd54d8aea71a9f39278d6e',_binary '�\�f�c\�2�\�\�\Z=',_binary '<B\�(C6\�Ў�k���A�V�\�c��\�\rCL�',1001,_binary '��\�&��*f�)vɲ9','7/3/2022','19:3',_binary 'ߟ\��\��-�5�j�H',_binary '1�`$x�y�b,Zk��$*0�\���ᮽa���','declined'),(1003,_binary 'ac7a1cb52d3bca420f9a19aadaf6480eaf181655492b380db5a4e90582cce802',_binary 'NA',_binary '\�\�\\_\�*$�>ny�R\�\0�',_binary '\��I\�\rӳB\ru��\����a���\�%�UU�a\�',1001,_binary '\n��iY�\�mA�T?','8/3/2022','15:27',_binary '�sG�t;q4��n\�:+q',_binary '�h��\�<\��P\�)�nK\�\��^Q�c�\�O:�\�','approved'),(1004,_binary 'ab90efbd9beb5bfcbaa1771a8d0fba3f1a00b1ee73e0ca59d75fc7aa1f9a52c8',_binary 'NA',_binary '6��N\�՛\�vuk6��ra',_binary '\'6�΢�w&28�2\�,D\�m7�}\�K�oy|�',1001,_binary '?�\�\�\�+\�=_\�VVS[','8/3/2022','17:21',_binary '\�xm���\�}\��O',_binary '�tFCZno�\�ƥ`�h���)ӿs����`��','approved'),(1005,_binary '56bcb30c3bae93c2696b7271f603a7e7486f1436a9f033b83eed1a29de9d7225',_binary 'ab90efbd9beb5bfcbaa1771a8d0fba3f1a00b1ee73e0ca59d75fc7aa1f9a52c8',_binary '���CL�-7\�\�\ZF5A\"',_binary '��M�5u������RxX���\'\\��r�O\�\�=\�',1002,_binary 'E3G?�IO\�Ri���','20/4/2022','14:5',_binary '\��\Z����;\�\"-z',_binary 'i(GS��*_jn\�\�\�\�R\����M\0ѡ�\�K\�R','pending'),(1006,_binary '8c8943fd80d86182d5c2eb2c362725aef775f198b50a6248fb1ed070bce6340e',_binary '56bcb30c3bae93c2696b7271f603a7e7486f1436a9f033b83eed1a29de9d7225',_binary '\�a���!�܃�n!��$',_binary 'T\�\�0j\�a�Yx\�1g`8V�䲊�\�\�0#�մ�',1002,_binary '.m��\�%7�i�Z(J�t','20/4/2022','14:5',_binary 'M\"�\�ϡ�Z��ad�ȇ',_binary '@\�\�\�\�K�\�)�Œ%�nh\�r�;ռ/[�\�\\y','approved'),(1007,_binary '3238dc0b8ad427b926a1e010351d785336d3b3d88459b529aea3eef4152d3cb1',_binary 'NA',_binary '5�?UO �v\�\Z|�H\�',_binary '�7v]\�(���\�e�֬[8���\"DBF�L\�*\�',1001,_binary 'q��v��P-\0��2','20/4/2022','14:34',_binary '�\�Z\�ܨ�\�$�����',_binary '6@-�+\�\"\�Y�1{�\�I[�l��ZAx\��\�_R','pending'),(1008,_binary '0847ec46e7597091b34c3de515c9b0e93054a28cc1ff217093ad4c0dae4929e8',_binary '3238dc0b8ad427b926a1e010351d785336d3b3d88459b529aea3eef4152d3cb1',_binary 'x\���\�	���y�F\�',_binary '��	~�\�\��\������m�l\�Խ�7���x\�!]�',1001,_binary '2�~ӯYAe^������','20/4/2022','14:34',_binary '��>8s�`\Z_�x��',_binary '�^\��۞mL�i]U\���\�G�\�\�\�Ư{w','approved');
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicationtransactions`
--

DROP TABLE IF EXISTS `applicationtransactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicationtransactions` (
  `transId` int NOT NULL,
  `dhash` longblob,
  `prevHash` longblob,
  `userid` longblob,
  `processedBy` longblob,
  `title` longblob,
  `appId` int DEFAULT NULL,
  `formId` int DEFAULT NULL,
  `docdesc` longblob,
  `dt` varchar(200) DEFAULT NULL,
  `tm` varchar(200) DEFAULT NULL,
  `skey` longblob,
  `filepath` longblob,
  `sts` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`transId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicationtransactions`
--

LOCK TABLES `applicationtransactions` WRITE;
/*!40000 ALTER TABLE `applicationtransactions` DISABLE KEYS */;
INSERT INTO `applicationtransactions` VALUES (1001,_binary '47dba1795c07b6d1cd5ffe62cf24d752a386f036e07bfe0bd655b9e79516f9ce',_binary 'NA',_binary '�I\r�t\�\�\�\�訜\�/�',_binary '�%L��K\�g\�@\�\�.#',_binary '\��a,������3\Z��	��H̲UL搬�ܠŏ',1003,1001,_binary '\��\�!%�f��N����','16/3/2022','23:49',_binary '\0�]��M�׻\�*',_binary '_�\���%f\�\�v\�N','approved'),(1002,_binary '8d9b863d4410d5b6f88b4c5a85815e52571b873f6aa73f4ceac1695534e6f9b6',_binary '47dba1795c07b6d1cd5ffe62cf24d752a386f036e07bfe0bd655b9e79516f9ce',_binary '����|�a���~\�\�',_binary '�\�G\�tC\�\�!�*\r�~\�',_binary '<B\�(C6\�Ў�k���A�V�\�c��\�\rCL�',1003,1001,_binary '\�r\�_�5&W\�;�Y\�L\�','17/3/2022','0:4',_binary '�v\�\�X|J\0D\�}2��',_binary '\�\�\��	T�.\�\�\�-u�W�','approved'),(1003,_binary '16416ff18a5a538ec3d1f3f1627cafce8106edad241f95bb646cb587129b1907',_binary '8d9b863d4410d5b6f88b4c5a85815e52571b873f6aa73f4ceac1695534e6f9b6',_binary '�/�WiG��/83�^�',_binary 'À�c��@�\�B\�4',_binary '\��I\�\rӳB\ru��\����a���\�%�UU�a\�',1004,1001,_binary '��2\�81�Ъ��W\�F�V','20/4/2022','12:5',_binary '\�\�_\�4�a�5���L��R',_binary '�\"M�Ɓu%K7|4X�n','approved'),(1004,_binary '133a66719540b30f4805089be59ab4e54698b4c8466481ecba07f2f404554255',_binary '16416ff18a5a538ec3d1f3f1627cafce8106edad241f95bb646cb587129b1907',_binary '8�\�\�#�\�\�N\�\�\�\"�',_binary 'u,�\�ѯD`	B��C',_binary '\'6�΢�w&28�2\�,D\�m7�}\�K�oy|�',1002,1001,_binary '���b��d\r�wˀ','20/4/2022','12:56',_binary '�K5��nE�C&��S',_binary '=\��l\�\��\�.#�([\�','declined'),(1005,_binary '66d7486bba7b142fde90c8de84661d0989f32eb10a625d204e2f4145b59a0fbe',_binary '133a66719540b30f4805089be59ab4e54698b4c8466481ecba07f2f404554255',_binary '_焦�\�iY�\�ܡ',_binary '���CL�-7\�\�\ZF5A\"',_binary '��M�5u������RxX���\'\\��r�O\�\�=\�',1006,1002,_binary 'E3G?�IO\�Ri���','20/4/2022','14:14',_binary '\�\�\�\�j�\�mO\�~{\�Z~',_binary '�s\�f�\�\�R\�h>6','approved'),(1006,_binary '995a4e98fd7f1db12e6c400bc869fa9ee34832f15bf53f6fb4c74b65005aee00',_binary '66d7486bba7b142fde90c8de84661d0989f32eb10a625d204e2f4145b59a0fbe',_binary 'q��X\�\�M���j\'',_binary 'bw��\'�\�\�\�;\�0�v',_binary '\r*�e\�8CU<��I\0{j�y\�ViU�\��\�\�B\�z\�',1008,1001,_binary '\�L\�A\"�j1:2g\r)�','20/4/2022','14:37',_binary 'EF��U�c9�)x¥�\�',_binary 'hY�<\�\�\�\�] �ޭE','approved');
/*!40000 ALTER TABLE `applicationtransactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `getapplications`
--

DROP TABLE IF EXISTS `getapplications`;
/*!50001 DROP VIEW IF EXISTS `getapplications`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `getapplications` AS SELECT 
 1 AS `docid`,
 1 AS `dhash`,
 1 AS `prevHash`,
 1 AS `userid`,
 1 AS `title`,
 1 AS `docdesc`,
 1 AS `dt`,
 1 AS `tm`,
 1 AS `skey`,
 1 AS `filepath`,
 1 AS `sts`,
 1 AS `formId`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `getapplicationtrans`
--

DROP TABLE IF EXISTS `getapplicationtrans`;
/*!50001 DROP VIEW IF EXISTS `getapplicationtrans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `getapplicationtrans` AS SELECT 
 1 AS `transId`,
 1 AS `dhash`,
 1 AS `prevHash`,
 1 AS `userid`,
 1 AS `title`,
 1 AS `docdesc`,
 1 AS `dt`,
 1 AS `tm`,
 1 AS `skey`,
 1 AS `filepath`,
 1 AS `sts`,
 1 AS `formId`,
 1 AS `appId`,
 1 AS `user_userid`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'notary_bc1_db'
--

--
-- Dumping routines for database 'notary_bc1_db'
--
/*!50003 DROP PROCEDURE IF EXISTS `getApplications1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getApplications1`(in uid varchar(200))
begin
 select * from getApplications where userid=uid;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getApplicationsApproved` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getApplicationsApproved`(in uid varchar(200))
begin
 select * from  getapplicationtrans where user_userid=uid and sts='approved';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getApplicationsPending` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getApplicationsPending`(in uid varchar(200))
begin
 select * from getApplications where userid=uid and sts='pending';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getApplicationsSubmitted` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getApplicationsSubmitted`(in uid varchar(200))
begin
 select * from getApplications where userid=uid and sts='submitted';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMaxIdApp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMaxIdApp`()
begin
select (ifnull(max(docid),1000)+1) as mxid from applications;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertApplication` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertApplication`(in userid1 varchar(200), in title1 text, in dt1 varchar(30), in tm1 varchar(200)
,docdesc1 varchar(300),in key1 varchar(200),in docpath1 varchar(200),in formid1 integer)
begin
declare mxid integer;
declare prevHash1 text;
IF EXISTS ((select dhash from applications where aes_decrypt(userid,docid)=userid1 and docid=(select max(docid) from applications where aes_decrypt(userid,docid)=userid1)))
 Then
  set prevHash1=(select dhash from applications where aes_decrypt(userid,docid)=userid1 and docid=(select max(docid) from applications where aes_decrypt(userid,docid)=userid1));
else
set prevHash1='NA';  
END if;
set mxid=(select ifnull(max(docid),1000) from applications);
set mxid=mxid+1;
insert into applications values(mxid,SHA2(concat(mxid,userid1),256),prevHash1,aes_encrypt(userid1,mxid),aes_encrypt(title1,mxid),formid1,aes_encrypt(docdesc1,mxid),dt1,tm1,aes_encrypt(key1,mxid),aes_encrypt(docpath1,mxid),'pending');
  
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertApplicationTrans` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertApplicationTrans`(in userid1 varchar(200), in title1 text, in dt1 varchar(30), in tm1 varchar(200)
,docdesc1 varchar(300),in key1 varchar(200),in docpath1 varchar(200),in formid1 integer,in appId1 integer,in offuid varchar(200),in sts1 varchar(200))
begin
declare mxid integer; 
declare prevHash1 text;
IF EXISTS ((select dhash from applicationtransactions where aes_decrypt(userid,transId)=userid1 and transId=(select max(transId) from applicationtransactions where aes_decrypt(userid,transId)=userid1)))
 Then
  set prevHash1=(select dhash from applicationtransactions where aes_decrypt(userid,transId)=userid1 and transId=(select max(transId) from applicationtransactions where aes_decrypt(userid,transId)=userid1));
else
set prevHash1='NA';  
END if;

set mxid=(select ifnull(max(transId),1000) from applicationtransactions);
set mxid=mxid+1;
insert into applicationtransactions values(mxid,SHA2(concat(mxid,userid1),256),prevHash1,aes_encrypt(userid1,mxid),aes_encrypt(offuid,mxid),aes_encrypt(title1,mxid),appId1,formid1,aes_encrypt(docdesc1,mxid),dt1,tm1,aes_encrypt(key1,mxid),aes_encrypt(docpath1,mxid),sts1);
update applications set sts=sts1 where docid=appId1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `notarydb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `notarydb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `notarydb`;

--
-- Table structure for table `application_forms`
--

DROP TABLE IF EXISTS `application_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application_forms` (
  `formId` int NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `formPath` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`formId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_forms`
--

LOCK TABLES `application_forms` WRITE;
/*!40000 ALTER TABLE `application_forms` DISABLE KEYS */;
INSERT INTO `application_forms` VALUES (1001,'Nationality Cerficiate','1001.jpeg'),(1002,'caste Certificate','1002.png');
/*!40000 ALTER TABLE `application_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `city` text,
  `state` text,
  `cityId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES ('city','state',1),('Cachar','Assam',2),('Darrang','Assam',3),('Dhemaji','Assam',4),('Dima Hasao','Assam',5),('Kamrup','Assam',6),('Karbi Anglong','Assam',7),('Lakhimpur','Assam',8),('Sivasagar','Assam',9),('Sonitpur','Assam',10),('Tinsukia','Assam',11),('Abhayapuri','Assam',12),('Amguri','Assam',13),('Anandnagaar','Assam',14),('Barpeta','Assam',15),('Barpeta Road','Assam',16),('Bilasipara','Assam',17),('Bongaigaon','Assam',18),('Dhekiajuli','Assam',19),('Dhubri','Assam',20),('Dibrugarh','Assam',21),('Digboi','Assam',22),('Diphu','Assam',23),('Dispur*','Assam',24),('Duliajan Oil Town','Assam',25),('Gauripur','Assam',26),('Goalpara','Assam',27),('Golaghat','Assam',28),('Guwahati','Assam',29),('Haflong','Assam',30),('Hailakandi','Assam',31),('Hojai','Assam',32),('Jorhat','Assam',33),('Karimganj','Assam',34),('Kokrajhar','Assam',35),('Lanka','Assam',36),('Lumding','Assam',37),('Mangaldoi','Assam',38),('Mankachar','Assam',39),('Margherita','Assam',40),('Mariani','Assam',41),('Marigaon','Assam',42),('Nagaon','Assam',43),('Nalbari','Assam',44),('North Lakhimpur','Assam',45),('Anantnag','Jammu and Kashmir',46),('Bandipora','Jammu and Kashmir',47),('Baramulla','Jammu and Kashmir',48),('Budgam','Jammu and Kashmir',49),('Doda','Jammu and Kashmir',50),('Jammu','Jammu and Kashmir',51),('Kargil','Jammu and Kashmir',52),('Kathua','Jammu and Kashmir',53),('Kupwara','Jammu and Kashmir',54),('Leh','Jammu and Kashmir',55),('Poonch','Jammu and Kashmir',56),('Pulwama','Jammu and Kashmir',57),('Rajouri','Jammu and Kashmir',58),('Reasi','Jammu and Kashmir',59),('Shopian','Jammu and Kashmir',60),('Srinagar','Jammu and Kashmir',61),('Udhampur','Jammu and Kashmir',62),('Achalpur','Maharashtra',63),('Ahmednagar','Maharashtra',64),('Ahmedpur','Maharashtra',65),('Ajra','Maharashtra',66),('Akkalkot','Maharashtra',67),('Akola','Maharashtra',68),('Akot','Maharashtra',69),('Alandi','Maharashtra',70),('Alibag','Maharashtra',71),('Amalner','Maharashtra',72),('Ambad','Maharashtra',73),('Ambejogai','Maharashtra',74),('Ambivali Tarf Wankhal','Maharashtra',75),('Amravati','Maharashtra',76),('Anjangaon','Maharashtra',77),('Arvi','Maharashtra',78),('Ashta','Maharashtra',79),('Aurangabad','Maharashtra',80),('Ausa','Maharashtra',81),('Baramati','Maharashtra',82),('Bhandara','Maharashtra',83),('Beed','Maharashtra',84),('Bhiwandi','Maharashtra',85),('Bhusawal','Maharashtra',86),('Buldhana','Maharashtra',87),('Chalisgaon','Maharashtra',88),('Chandrapur','Maharashtra',89),('Chinchani','Maharashtra',90),('Chiplun','Maharashtra',91),('Daund','Maharashtra',92),('Devgarh','Maharashtra',93),('Dhule','Maharashtra',94),('Dombivli','Maharashtra',95),('Durgapur','Maharashtra',96),('Gadchiroli','Maharashtra',97),('Ghatanji','Maharashtra',98),('Gondiya','Maharashtra',99),('Hingoli','Maharashtra',100),('Ichalkaranji','Maharashtra',101),('Jalgaon','Maharashtra',102),('Jalna','Maharashtra',103),('Junnar','Maharashtra',104),('Kalyan','Maharashtra',105),('Kamthi','Maharashtra',106),('Karad','Maharashtra',107),('karjat','Maharashtra',108),('Kolhapur','Maharashtra',109),('Latur','Maharashtra',110),('Loha','Maharashtra',111),('Lonar','Maharashtra',112),('Lonavla','Maharashtra',113),('Mahabaleswar','Maharashtra',114),('Mahad','Maharashtra',115),('Mahuli','Maharashtra',116),('Malegaon','Maharashtra',117),('Malkapur','Maharashtra',118),('Manchar','Maharashtra',119),('Mangalvedhe','Maharashtra',120),('Mangrulpir','Maharashtra',121),('Manjlegaon','Maharashtra',122),('Manmad','Maharashtra',123),('Manwath','Maharashtra',124),('Mehkar','Maharashtra',125),('Mhaswad','Maharashtra',126),('Mira-Bhayandar','Maharashtra',127),('Miraj','Maharashtra',128),('Morshi','Maharashtra',129),('Mukhed','Maharashtra',130),('Mul','Maharashtra',131),('Mumbai','Maharashtra',132),('Murtijapur','Maharashtra',133),('Nagpur','Maharashtra',134),('Nalasopara','Maharashtra',135),('Nanded-Waghala','Maharashtra',136),('Nandgaon','Maharashtra',137),('Nandura','Maharashtra',138),('Nandurbar','Maharashtra',139),('Narkhed','Maharashtra',140),('Nashik','Maharashtra',141),('Navi Mumbai','Maharashtra',142),('Nawapur','Maharashtra',143),('Nilanga','Maharashtra',144),('Osmanabad','Maharashtra',145),('Ozar','Maharashtra',146),('Pachora','Maharashtra',147),('Paithan','Maharashtra',148),('Palghar','Maharashtra',149),('Pandharkaoda','Maharashtra',150),('Pandharpur','Maharashtra',151),('Panvel','Maharashtra',152),('Parbhani','Maharashtra',153),('Parli','Maharashtra',154),('Parola','Maharashtra',155),('Partur','Maharashtra',156),('Pathardi','Maharashtra',157),('Pathri','Maharashtra',158),('Patur','Maharashtra',159),('Pauni','Maharashtra',160),('Pen','Maharashtra',161),('Phaltan','Maharashtra',162),('Pulgaon','Maharashtra',163),('Pune','Maharashtra',164),('Purna','Maharashtra',165),('Pusad','Maharashtra',166),('Raigad','Maharashtra',167),('Ratnagiri','Maharashtra',168),('Sangli','Maharashtra',169),('Satara','Maharashtra',170),('Sindhudurg','Maharashtra',171),('Solapur','Maharashtra',172),('Thane','Maharashtra',173),('Wardha','Maharashtra',174),('Washim','Maharashtra',175),('Yavatmal','Maharashtra',176),('Achhnera','Uttar Pradesh',177),('Adari','Uttar Pradesh',178),('Agra','Uttar Pradesh',179),('Aligarh','Uttar Pradesh',180),('Allahabad','Uttar Pradesh',181),('Ambedkar Nagar','Uttar Pradesh',182),('Amroha','Uttar Pradesh',183),('Auraiya','Uttar Pradesh',184),('Azamgarh','Uttar Pradesh',185),('Badaun','Uttar Pradesh',186),('Bagpat','Uttar Pradesh',187),('Bahraich','Uttar Pradesh',188),('Ballia','Uttar Pradesh',189),('Balrampur','Uttar Pradesh',190),('Banda','Uttar Pradesh',191),('Barabanki','Uttar Pradesh',192),('Bareilly','Uttar Pradesh',193),('Bharthana','Uttar Pradesh',194),('Bijnor','Uttar Pradesh',195),('Budaun','Uttar Pradesh',196),('Bulandshahr','Uttar Pradesh',197),('Chakeri','Uttar Pradesh',198),('Chandauli','Uttar Pradesh',199),('Chandausi','Uttar Pradesh',200),('Charkhari','Uttar Pradesh',201),('Chitrakoot','Uttar Pradesh',202),('Dadri','Uttar Pradesh',203),('Deoria','Uttar Pradesh',204),('Dhampur','Uttar Pradesh',205),('Etah','Uttar Pradesh',206),('Etawah','Uttar Pradesh',207),('Faizabad','Uttar Pradesh',208),('Farrukhabad','Uttar Pradesh',209),('Fatehabad','Uttar Pradesh',210),('Fatehgarh','Uttar Pradesh',211),('Fatehpur','Uttar Pradesh',212),('Fatehpur','Uttar Pradesh',213),('Fatehpur Chaurasi','Uttar Pradesh',214),('Fatehpur Sikri','Uttar Pradesh',215),('Firozabad','Uttar Pradesh',216),('Ghatampur','Uttar Pradesh',217),('Gautam Buddha Nagar','Uttar Pradesh',218),('Ghaziabad','Uttar Pradesh',219),('Ghazipur','Uttar Pradesh',220),('Gonda','Uttar Pradesh',221),('Gorakhpur','Uttar Pradesh',222),('Greater Noida','Uttar Pradesh',223),('Hamirpur','Uttar Pradesh',224),('Hapur','Uttar Pradesh',225),('Hardoi','Uttar Pradesh',226),('Hastinapur','Uttar Pradesh',227),('Hathras','Uttar Pradesh',228),('Jais','Uttar Pradesh',229),('Jajmau','Uttar Pradesh',230),('Jalaun','Uttar Pradesh',231),('Jaunpur','Uttar Pradesh',232),('Jhansi','Uttar Pradesh',233),('Jyotiba Phule Nagar','Uttar Pradesh',234),('Kannauj','Uttar Pradesh',235),('Kalpi','Uttar Pradesh',236),('Kanpur','Uttar Pradesh',237),('Kanpur Nagar','Uttar Pradesh',238),('Kaushambi','Uttar Pradesh',239),('Kheri','Uttar Pradesh',240),('Kota','Uttar Pradesh',241),('Kulpahar','Uttar Pradesh',242),('Kushinagar','Uttar Pradesh',243),('Laharpur','Uttar Pradesh',244),('Lakhimpur','Uttar Pradesh',245),('Lal Gopalganj Nindaura','Uttar Pradesh',246),('Lalganj','Uttar Pradesh',247),('Lalitpur','Uttar Pradesh',248),('Lar','Uttar Pradesh',249),('Loni','Uttar Pradesh',250),('Lucknow','Uttar Pradesh',251),('Mahoba','Uttar Pradesh',252),('Maharajganj','Uttar Pradesh',253),('Mainpuri','Uttar Pradesh',254),('Mathura','Uttar Pradesh',255),('Mau','Uttar Pradesh',256),('Meerut','Uttar Pradesh',257),('Mirzapur','Uttar Pradesh',258),('Modinagar','Uttar Pradesh',259),('Moradabad','Uttar Pradesh',260),('Muradnagar','Uttar Pradesh',261),('Muzaffarnagar','Uttar Pradesh',262),('Nagina','Uttar Pradesh',263),('Najibabad','Uttar Pradesh',264),('Nakur','Uttar Pradesh',265),('Nanpara','Uttar Pradesh',266),('Naraura','Uttar Pradesh',267),('Naugawan Sadat','Uttar Pradesh',268),('Nautanwa','Uttar Pradesh',269),('Nawabganj','Uttar Pradesh',270),('Nehtaur','Uttar Pradesh',271),('Noida','Uttar Pradesh',272),('Noorpur','Uttar Pradesh',273),('Obra','Uttar Pradesh',274),('Orai','Uttar Pradesh',275),('Padrauna','Uttar Pradesh',276),('Palia Kalan','Uttar Pradesh',277),('Parasi','Uttar Pradesh',278),('Phulpur','Uttar Pradesh',279),('Pihani','Uttar Pradesh',280),('Pilibhit','Uttar Pradesh',281),('Pilkhuwa','Uttar Pradesh',282),('Powayan','Uttar Pradesh',283),('Pratapgarh','Uttar Pradesh',284),('Pukhrayan','Uttar Pradesh',285),('Puranpur','Uttar Pradesh',286),('Purquazi','Uttar Pradesh',287),('Purwa','Uttar Pradesh',288),('Raebareli','Uttar Pradesh',289),('Ramabai Nagar','Uttar Pradesh',290),('Rampur','Uttar Pradesh',291),('Saharanpur','Uttar Pradesh',292),('Sant Kabir Nagar','Uttar Pradesh',293),('Sant Ravidas Nagar','Uttar Pradesh',294),('Shahjahanpur','Uttar Pradesh',295),('Shravasti','Uttar Pradesh',296),('Siddharthnagar','Uttar Pradesh',297),('Sitapur','Uttar Pradesh',298),('Sonbhadra','Uttar Pradesh',299),('Sultanpur','Uttar Pradesh',300),('Unnao','Uttar Pradesh',301),('Varanasi','Uttar Pradesh',302),('Adalaj','Gujarat',303),('Adityana','Gujarat',304),('Ahmedabad','Gujarat',305),('Alang','Gujarat',306),('Ambaji','Gujarat',307),('Ambaliyasan','Gujarat',308),('Amreli','Gujarat',309),('Anand','Gujarat',310),('Andada','Gujarat',311),('Anjar','Gujarat',312),('Anklav','Gujarat',313),('Ankleshwar','Gujarat',314),('Antaliya','Gujarat',315),('Arambhada','Gujarat',316),('Atul','Gujarat',317),('Banaskantha','Gujarat',318),('Bharuch','Gujarat',319),('Bhavnagar','Gujarat',320),('Bhuj','Gujarat',321),('Cambay','Gujarat',322),('Dahod','Gujarat',323),('Dang','Gujarat',324),('Deesa','Gujarat',325),('Dehgam','Gujarat',326),('Dharampur','Gujarat',327),('Dholka','Gujarat',328),('Dwarka','Gujarat',329),('Gandhidham','Gujarat',330),('Gandhinagar','Gujarat',331),('Godhra','Gujarat',332),('Himatnagar','Gujarat',333),('Idar','Gujarat',334),('Jamnagar','Gujarat',335),('Junagadh','Gujarat',336),('Kachchh','Gujarat',337),('Kadi','Gujarat',338),('Kalavad','Gujarat',339),('Kalol','Gujarat',340),('Kapadvanj','Gujarat',341),('Karjan','Gujarat',342),('Keshod','Gujarat',343),('Khambhalia','Gujarat',344),('Khambhat','Gujarat',345),('Kheda','Gujarat',346),('Khedbrahma','Gujarat',347),('Kheralu','Gujarat',348),('Kodinar','Gujarat',349),('Lathi','Gujarat',350),('Limbdi','Gujarat',351),('Lunawada','Gujarat',352),('Mahesana','Gujarat',353),('Mahuva','Gujarat',354),('Manavadar','Gujarat',355),('Mandvi','Gujarat',356),('Mangrol','Gujarat',357),('Mansa','Gujarat',358),('Mehmedabad','Gujarat',359),('Mithapur','Gujarat',360),('Modasa','Gujarat',361),('Morvi','Gujarat',362),('Nadiad','Gujarat',363),('Narmada','Gujarat',364),('Navsari','Gujarat',365),('Padra','Gujarat',366),('Palanpur','Gujarat',367),('Palitana','Gujarat',368),('Panchmahal','Gujarat',369),('Pardi','Gujarat',370),('Patan','Gujarat',371),('Petlad','Gujarat',372),('Porbandar','Gujarat',373),('Rajkot','Gujarat',374),('Sabarkantha','Gujarat',375),('Surat','Gujarat',376),('Surendranagar','Gujarat',377),('Tapi','Gujarat',378),('Vadodara','Gujarat',379),('Valsad','Gujarat',380),('Adoni','Andhra Pradesh',381),('Amadalavalasa','Andhra Pradesh',382),('Amalapuram','Andhra Pradesh',383),('Anakapalle','Andhra Pradesh',384),('Anantapur','Andhra Pradesh',385),('Badepalle','Andhra Pradesh',386),('Banganapalle','Andhra Pradesh',387),('Bapatla','Andhra Pradesh',388),('Bellampalle','Andhra Pradesh',389),('Bethamcherla','Andhra Pradesh',390),('Bhadrachalam','Andhra Pradesh',391),('Bhainsa','Andhra Pradesh',392),('Bheemunipatnam','Andhra Pradesh',393),('Bhimavaram','Andhra Pradesh',394),('Bhongir','Andhra Pradesh',395),('Bobbili','Andhra Pradesh',396),('Bodhan','Andhra Pradesh',397),('Chapirevula','Andhra Pradesh',398),('Chilakaluripet','Andhra Pradesh',399),('Chirala','Andhra Pradesh',400),('Chittoor','Andhra Pradesh',401),('Cuddapah','Andhra Pradesh',402),('Devarakonda','Andhra Pradesh',403),('Dharmavaram','Andhra Pradesh',404),('Eluru','Andhra Pradesh',405),('Farooqnagar','Andhra Pradesh',406),('Gadwal','Andhra Pradesh',407),('Gooty','Andhra Pradesh',408),('Gudivada','Andhra Pradesh',409),('Gudur','Andhra Pradesh',410),('Guntakal','Andhra Pradesh',411),('Guntur','Andhra Pradesh',412),('Hanuman Junction','Andhra Pradesh',413),('Hindupur','Andhra Pradesh',414),('Ichchapuram','Andhra Pradesh',415),('Jaggaiahpet','Andhra Pradesh',416),('Jagtial','Andhra Pradesh',417),('Jammalamadugu','Andhra Pradesh',418),('Jangaon','Andhra Pradesh',419),('Kadapa','Andhra Pradesh',420),('Kadiri','Andhra Pradesh',421),('Kagaznagar','Andhra Pradesh',422),('Kakinada','Andhra Pradesh',423),('Kalyandurg','Andhra Pradesh',424),('Kamareddy','Andhra Pradesh',425),('Kandukur','Andhra Pradesh',426),('Kavali','Andhra Pradesh',427),('Kodad','Andhra Pradesh',428),('Koratla','Andhra Pradesh',429),('Kothagudem','Andhra Pradesh',430),('Kothapeta','Andhra Pradesh',431),('Kovvur','Andhra Pradesh',432),('Kurnool','Andhra Pradesh',433),('Kyathampalle','Andhra Pradesh',434),('Macherla','Andhra Pradesh',435),('Machilipatnam','Andhra Pradesh',436),('Madanapalle','Andhra Pradesh',437),('Mancherial','Andhra Pradesh',438),('Mandamarri','Andhra Pradesh',439),('Mandapeta','Andhra Pradesh',440),('Mangalagiri','Andhra Pradesh',441),('Manuguru','Andhra Pradesh',442),('Markapur','Andhra Pradesh',443),('Miryalaguda','Andhra Pradesh',444),('Mogalthur','Andhra Pradesh',445),('Nagari','Andhra Pradesh',446),('Nagarkurnool','Andhra Pradesh',447),('Nandyal','Andhra Pradesh',448),('Narasapur','Andhra Pradesh',449),('Narasaraopet','Andhra Pradesh',450),('Narayanpet','Andhra Pradesh',451),('Narsipatnam','Andhra Pradesh',452),('Nellore','Andhra Pradesh',453),('Nidadavole','Andhra Pradesh',454),('Nirmal','Andhra Pradesh',455),('Nuzvid','Andhra Pradesh',456),('Ongole','Andhra Pradesh',457),('Palacole','Andhra Pradesh',458),('Palasa Kasibugga','Andhra Pradesh',459),('Palwancha','Andhra Pradesh',460),('Parvathipuram','Andhra Pradesh',461),('Pedana','Andhra Pradesh',462),('Peddapuram','Andhra Pradesh',463),('Pithapuram','Andhra Pradesh',464),('Pondur','Andhra Pradesh',465),('Ponnur','Andhra Pradesh',466),('Proddatur','Andhra Pradesh',467),('Punganur','Andhra Pradesh',468),('Puttur','Andhra Pradesh',469),('East godavari','Andhra Pradesh',470),('Krishna','Andhra Pradesh',471),('Prakasam','Andhra Pradesh',472),('Sri Potti Sriramulu Nellore','Andhra Pradesh',473),('Srikakulam','Andhra Pradesh',474),('Visakhapatanam','Andhra Pradesh',475),('Vizianagaram','Andhra Pradesh',476),('West Godavari','Andhra Pradesh',477),('YSR district','Andhra Pradesh',478),('Aalanavara','Karnataka',479),('Adyar','Karnataka',480),('Afzalpura','Karnataka',481),('Alandha','Karnataka',482),('Alur','Karnataka',483),('Ambikaanagara','Karnataka',484),('Anekal','Karnataka',485),('Ankola','Karnataka',486),('Annigeri','Karnataka',487),('Arkalgud','Karnataka',488),('Arsikere','Karnataka',489),('Athni','Karnataka',490),('Aurad','Karnataka',491),('Bagalkot','Karnataka',492),('Bellary','Karnataka',493),('Bangalore','Karnataka',494),('Belgaum','Karnataka',495),('Bengaluru','Karnataka',496),('Bidar','Karnataka',497),('Bijapur','Karnataka',498),('Chamarajanagara','Karnataka',499),('Chikaballapura','Karnataka',500),('Chikkamagalur','Karnataka',501),('Chikkodi','Karnataka',502),('Chinthaamani','Karnataka',503),('Chitradurga','Karnataka',504),('Davanagere','Karnataka',505),('Dharwad','Karnataka',506),('Gadhaga','Karnataka',507),('Gadag','Karnataka',508),('Gokak','Karnataka',509),('Gulbarga','Karnataka',510),('Gundlupet','Karnataka',511),('Hassan','Karnataka',512),('Haveri','Karnataka',513),('Hosapet','Karnataka',514),('Hubbali','Karnataka',515),('Hukkeri','Karnataka',516),('Kaarkala','Karnataka',517),('Kalburgi','Karnataka',518),('Karwar','Karnataka',519),('Kodagu','Karnataka',520),('Kolar','Karnataka',521),('Kota','Karnataka',522),('Koppal','Karnataka',523),('Lakshmishawara','Karnataka',524),('Lingsuguru','Karnataka',525),('Maagadi','Karnataka',526),('Maaluru','Karnataka',527),('Maanvi','Karnataka',528),('Maddhuru','Karnataka',529),('Madhugiri','Karnataka',530),('Madikeri','Karnataka',531),('Mahalingapura','Karnataka',532),('Malavalli','Karnataka',533),('Mandya','Karnataka',534),('Mangalooru','Karnataka',535),('Mudabidri','Karnataka',536),('Mudalagi','Karnataka',537),('Muddebihala','Karnataka',538),('Mudhola','Karnataka',539),('Mulabaagilu','Karnataka',540),('Mundaragi','Karnataka',541),('Mysore','Karnataka',542),('Nanjanagoodu','Karnataka',543),('Nippani','Karnataka',544),('Paavagada','Karnataka',545),('Pereyaapatna','Karnataka',546),('Puthooru','Karnataka',547),('Raichur','Karnataka',548),('Ramanagara','Karnataka',549),('Shimoga','Karnataka',550),('Tumkur','Karnataka',551),('Udupi','Karnataka',552),('Uttara Kannada','Karnataka',553),('Yadgir','Karnataka',554),('Adoor','Kerala',555),('Akathiyoor','Kerala',556),('Alappuzha','Kerala',557),('Ancharakandy','Kerala',558),('Aroor','Kerala',559),('Ashtamichira','Kerala',560),('Attingal','Kerala',561),('Avinissery','Kerala',562),('Chalakudy','Kerala',563),('Changanassery','Kerala',564),('Chendamangalam','Kerala',565),('Chengannur','Kerala',566),('Cherthala','Kerala',567),('Cheruthazham','Kerala',568),('Chittur-Thathamangalam','Kerala',569),('Chockli','Kerala',570),('Ernakulam','Kerala',571),('Erattupetta','Kerala',572),('Guruvayoor','Kerala',573),('Idukki','Kerala',574),('Irinjalakuda','Kerala',575),('Kadirur','Kerala',576),('Kalliasseri','Kerala',577),('Kalpetta','Kerala',578),('Kanhangad','Kerala',579),('Kanjikkuzhi','Kerala',580),('Kannur','Kerala',581),('Kasaragod','Kerala',582),('Kayamkulam','Kerala',583),('Kochi','Kerala',584),('Kodungallur','Kerala',585),('Kollam','Kerala',586),('Koothuparamba','Kerala',587),('Kothamangalam','Kerala',588),('Kottayam','Kerala',589),('Kozhikode','Kerala',590),('Kunnamkulam','Kerala',591),('Mahe','Kerala',592),('Malappuram','Kerala',593),('Mattannur','Kerala',594),('Mavelikkara','Kerala',595),('Mavoor','Kerala',596),('Muvattupuzha','Kerala',597),('Nedumangad','Kerala',598),('Neyyattinkara','Kerala',599),('Nilambur','Kerala',600),('Ottappalam','Kerala',601),('Palai','Kerala',602),('Palakkad','Kerala',603),('Panamattom','Kerala',604),('Panniyannur','Kerala',605),('Pappinisseri','Kerala',606),('Paravoor','Kerala',607),('Pathanamthitta','Kerala',608),('Peringathur','Kerala',609),('Perinthalmanna','Kerala',610),('Perumbavoor','Kerala',611),('Ponkunnam','Kerala',612),('Ponnani','Kerala',613),('Punalur','Kerala',614),('Puthuppally','Kerala',615),('Thrissur','Kerala',616),('Wayanad','Kerala',617),('Adra','West Bengal',618),('Alipurduar','West Bengal',619),('Arambagh','West Bengal',620),('Asansol','West Bengal',621),('Baharampur','West Bengal',622),('Bally','West Bengal',623),('Balurghat','West Bengal',624),('Bankura','West Bengal',625),('Barakar','West Bengal',626),('Barasat','West Bengal',627),('Bardhaman','West Bengal',628),('Barrackpur','West Bengal',629),('Bidhan Nagar','West Bengal',630),('Birbhum','West Bengal',631),('Chinsura','West Bengal',632),('Contai','West Bengal',633),('Cooch Behar','West Bengal',634),('Dakshin Dinajpur','West Bengal',635),('Dalkhola','West Bengal',636),('Darjeeling','West Bengal',637),('Dhulian','West Bengal',638),('Dumdum','West Bengal',639),('Durgapur','West Bengal',640),('Habra*','West Bengal',641),('Haldia','West Bengal',642),('Howrah','West Bengal',643),('Hugli-Chuchura','West Bengal',644),('Islampur','West Bengal',645),('Jalpaiguri','West Bengal',646),('Jhargram','West Bengal',647),('Kalimpong','West Bengal',648),('Kharagpur','West Bengal',649),('Kolkata','West Bengal',650),('Konnagar','West Bengal',651),('Krishnanagar','West Bengal',652),('Mainaguri','West Bengal',653),('Mal','West Bengal',654),('Maldah','West Bengal',655),('Mathabhanga','West Bengal',656),('Medinipur','West Bengal',657),('Memari','West Bengal',658),('Monoharpur','West Bengal',659),('Murshidabad','West Bengal',660),('Nabadwip','West Bengal',661),('Nadia','West Bengal',662),('Naihati','West Bengal',663),('Panchla','West Bengal',664),('Pandua','West Bengal',665),('Paschim Punropara','West Bengal',666),('Purulia','West Bengal',667),('North 24 Parganas','West Bengal',668),('Paschim Medinipur','West Bengal',669),('Purba Medinipur','West Bengal',670),('Purulia','West Bengal',671),('South 24 Parganas','West Bengal',672),('Uttar Dinajpur','West Bengal',673),('Agartala','Tripura',674),('Badharghat','Tripura',675),('Dhalai','Tripura',676),('North Tripura','Tripura',677),('South Tripura','Tripura',678),('West Tripura','Tripura',679),('Dharmanagar','Tripura',680),('Indranagar','Tripura',681),('Jogendranagar','Tripura',682),('Kailasahar','Tripura',683),('Khowai','Tripura',684),('Pratapgarh','Tripura',685),('Ahiwara','Chhattisgarh',686),('Akaltara','Chhattisgarh',687),('Ambagarh Chowki','Chhattisgarh',688),('Ambikapur','Chhattisgarh',689),('Arang','Chhattisgarh',690),('Bade Bacheli','Chhattisgarh',691),('Balod','Chhattisgarh',692),('Baloda Bazar','Chhattisgarh',693),('Bastar','Chhattisgarh',694),('Basna','Chhattisgarh',695),('Bemetra','Chhattisgarh',696),('Bhatapara','Chhattisgarh',697),('Bhilai','Chhattisgarh',698),('Bilaspur','Chhattisgarh',699),('Bijapur','Chhattisgarh',700),('Birgaon','Chhattisgarh',701),('Champa','Chhattisgarh',702),('Chirmiri','Chhattisgarh',703),('Dantewada','Chhattisgarh',704),('Dalli-Rajhara','Chhattisgarh',705),('Dhamtari','Chhattisgarh',706),('Dipka','Chhattisgarh',707),('Dongargarh','Chhattisgarh',708),('Durg-Bhilai Nagar','Chhattisgarh',709),('Gobranawapara','Chhattisgarh',710),('Jagdalpur','Chhattisgarh',711),('Janjgir','Chhattisgarh',712),('Jashpurnagar','Chhattisgarh',713),('Kabirdham','Chhattisgarh',714),('Kanker','Chhattisgarh',715),('Kawardha','Chhattisgarh',716),('Kondagaon','Chhattisgarh',717),('Korba','Chhattisgarh',718),('Koriya','Chhattisgarh',719),('Mahasamund','Chhattisgarh',720),('Mahendragarh','Chhattisgarh',721),('Mungeli','Chhattisgarh',722),('Naila Janjgir','Chhattisgarh',723),('Narayanpur','Chhattisgarh',724),('Raigarh','Chhattisgarh',725),('Raipur','Chhattisgarh',726),('Rajnandgaon','Chhattisgarh',727),('Surguja','Chhattisgarh',728),('Ahmedgarh','Punjab',729),('Amritsar','Punjab',730),('Barnala','Punjab',731),('Batala','Punjab',732),('Bathinda','Punjab',733),('Bhagha Purana','Punjab',734),('Budhlada','Punjab',735),('Dasua','Punjab',736),('Dhuri','Punjab',737),('Dinanagar','Punjab',738),('Faridkot','Punjab',739),('Fazilka','Punjab',740),('Firozpur','Punjab',741),('Firozpur Cantt.','Punjab',742),('Fatehgarh Sahib','Punjab',743),('Giddarbaha','Punjab',744),('Gobindgarh','Punjab',745),('Gurdaspur','Punjab',746),('Hoshiarpur','Punjab',747),('Jagraon','Punjab',748),('Jaitu','Punjab',749),('Jalalabad','Punjab',750),('Jalandhar','Punjab',751),('Jalandhar Cantt.','Punjab',752),('Jandiala','Punjab',753),('Kamahi Devi','Punjab',754),('Kapurthala','Punjab',755),('Karoran','Punjab',756),('Kartarpur','Punjab',757),('Khanna','Punjab',758),('Kharar','Punjab',759),('Kot Kapura','Punjab',760),('Kurali','Punjab',761),('Longowal','Punjab',762),('Ludhiana','Punjab',763),('Malerkotla','Punjab',764),('Malout','Punjab',765),('Mansa','Punjab',766),('Maur','Punjab',767),('Moga','Punjab',768),('Mohali','Punjab',769),('Morinda','Punjab',770),('Mukatsar','Punjab',771),('Mukerian','Punjab',772),('Muktsar','Punjab',773),('Nabha','Punjab',774),('Nakodar','Punjab',775),('Nangal','Punjab',776),('Nawanshahr','Punjab',777),('Pathankot','Punjab',778),('Patiala','Punjab',779),('Patran','Punjab',780),('Patti','Punjab',781),('Phagwara','Punjab',782),('Phillaur','Punjab',783),('Rupnagar','Punjab',784),('Sangrur','Punjab',785),('Shahid Bhagat Singh Nagar','Punjab',786),('Tarn Taran','Punjab',787),('Aizawl','Mizoram',788),('Champhai','Mizoram',789),('Kolasib','Mizoram',790),('Lawngtlai','Mizoram',791),('Lunglei','Mizoram',792),('Mamit','Mizoram',793),('Saiha','Mizoram',794),('Serchhip','Mizoram',795),('Ajmer','Rajasthan',796),('Alwar','Rajasthan',797),('Bali','Rajasthan',798),('Bandikui','Rajasthan',799),('Banswara','Rajasthan',800),('Baran','Rajasthan',801),('Barmer','Rajasthan',802),('Beawar','Rajasthan',803),('Bharatpur','Rajasthan',804),('Bhilwara','Rajasthan',805),('Bhinmal','Rajasthan',806),('Bikaner','Rajasthan',807),('Bilara','Rajasthan',808),('Biwani','Rajasthan',809),('Bundi','Rajasthan',810),('Chittorgarh','Rajasthan',811),('Churu','Rajasthan',812),('Dausa','Rajasthan',813),('Dholpur','Rajasthan',814),('Devgarh','Rajasthan',815),('Dungarpur','Rajasthan',816),('Falna','Rajasthan',817),('Fatehpur','Rajasthan',818),('Ganganagar','Rajasthan',819),('Hanumangarh','Rajasthan',820),('Harsawa','Rajasthan',821),('Jaipur','Rajasthan',822),('Jaisalmer','Rajasthan',823),('Jaitaran','Rajasthan',824),('Jalore','Rajasthan',825),('Jhalawar','Rajasthan',826),('Jhunjhunu','Rajasthan',827),('Jodhpur','Rajasthan',828),('Karauli','Rajasthan',829),('Kota','Rajasthan',830),('Lachhmangarh','Rajasthan',831),('Ladnu','Rajasthan',832),('Lakheri','Rajasthan',833),('Lalsot','Rajasthan',834),('Losal','Rajasthan',835),('Mahwa','Rajasthan',836),('Makrana','Rajasthan',837),('Malpura','Rajasthan',838),('Mandalgarh','Rajasthan',839),('Mandawa','Rajasthan',840),('Mangrol','Rajasthan',841),('Merta City','Rajasthan',842),('Mount Abu','Rajasthan',843),('Nadbai','Rajasthan',844),('Nagar','Rajasthan',845),('Nagaur','Rajasthan',846),('Nargund','Rajasthan',847),('Nasirabad','Rajasthan',848),('Nathdwara','Rajasthan',849),('Navalgund','Rajasthan',850),('Nawalgarh','Rajasthan',851),('Neem-Ka-Thana','Rajasthan',852),('Nelamangala','Rajasthan',853),('Nimbahera','Rajasthan',854),('Niwai','Rajasthan',855),('Nohar','Rajasthan',856),('Nokha','Rajasthan',857),('Pali','Rajasthan',858),('Phalodi','Rajasthan',859),('Phulera','Rajasthan',860),('Pilani','Rajasthan',861),('Pilibanga','Rajasthan',862),('Pindwara','Rajasthan',863),('Pipar City','Rajasthan',864),('Prantij','Rajasthan',865),('Pratapgarh','Rajasthan',866),('Rajsamand','Rajasthan',867),('Sawai Madhopur','Rajasthan',868),('Sikar','Rajasthan',869),('Sirohi','Rajasthan',870),('Tonk','Rajasthan',871),('Udaipur','Rajasthan',872),('Aldona','Goa',873),('Curchorem Cacora','Goa',874),('Goa Velha','Goa',875),('Madgaon','Goa',876),('Mapusa','Goa',877),('Margao','Goa',878),('Marmagao','Goa',879),('North Goa','Goa',880),('Panaji','Goa',881),('South Goa','Goa',882),('Almora','Uttarakhand',883),('Bageshwar','Uttarakhand',884),('Bazpur','Uttarakhand',885),('Berinag','Uttarakhand',886),('Chamoli','Uttarakhand',887),('Chamba','Uttarakhand',888),('Champawat','Uttarakhand',889),('Chaukori','Uttarakhand',890),('Dehradun','Uttarakhand',891),('Haldwani','Uttarakhand',892),('Haridwar','Uttarakhand',893),('Jaspur','Uttarakhand',894),('Kanda','Uttarakhand',895),('Kashipur','Uttarakhand',896),('kichha','Uttarakhand',897),('Kotdwara','Uttarakhand',898),('Manglaur','Uttarakhand',899),('Mussoorie','Uttarakhand',900),('Nagla','Uttarakhand',901),('Nainital','Uttarakhand',902),('Pauri','Uttarakhand',903),('Pithoragarh','Uttarakhand',904),('Rudraprayag','Uttarakhand',905),('Tehri Garhwal','Uttarakhand',906),('Udham Singh Nagar','Uttarakhand',907),('Uttarkashi','Uttarakhand',908),('Dibang Valley','Arunachal Pradesh',909),('East Kameng','Arunachal Pradesh',910),('East Siang','Arunachal Pradesh',911),('Kurung Kumey','Arunachal Pradesh',912),('Lohit','Arunachal Pradesh',913),('Lower Dibang Valley','Arunachal Pradesh',914),('Lower Subansiri','Arunachal Pradesh',915),('Papum Pare','Arunachal Pradesh',916),('Tawang','Arunachal Pradesh',917),('Tirap','Arunachal Pradesh',918),('Upper Siang','Arunachal Pradesh',919),('Upper Subansiri','Arunachal Pradesh',920),('West Kameng','Arunachal Pradesh',921),('West Siang','Arunachal Pradesh',922),('Amarpur','Bihar',923),('Araria','Bihar',924),('Areraj','Bihar',925),('Arrah','Bihar',926),('Arwal','Bihar',927),('Asarganj','Bihar',928),('Aurangabad','Bihar',929),('Bagaha','Bihar',930),('Bahadurganj','Bihar',931),('Bairgania','Bihar',932),('Bakhtiarpur','Bihar',933),('Banka','Bihar',934),('Banmankhi Bazar','Bihar',935),('Barahiya','Bihar',936),('Barauli','Bihar',937),('Barbigha','Bihar',938),('Barh','Bihar',939),('Begusarai','Bihar',940),('Behea','Bihar',941),('Bettiah','Bihar',942),('Bhabua','Bihar',943),('Bhagalpur','Bihar',944),('Bhojpur','Bihar',945),('Bihar Sharif','Bihar',946),('Bikramganj','Bihar',947),('Bodh Gaya','Bihar',948),('Buxar','Bihar',949),('Chandan Bara','Bihar',950),('Chanpatia','Bihar',951),('Chhapra','Bihar',952),('Colgong','Bihar',953),('Dalsinghsarai','Bihar',954),('Darbhanga','Bihar',955),('Daudnagar','Bihar',956),('Dehri-on-Sone','Bihar',957),('Dighwara','Bihar',958),('Dumraon','Bihar',959),('East Champaran','Bihar',960),('Fatwah','Bihar',961),('Forbesganj','Bihar',962),('Gaya','Bihar',963),('Gogri Jamalpur','Bihar',964),('Gopalganj','Bihar',965),('Hajipur','Bihar',966),('Hilsa','Bihar',967),('Hisua','Bihar',968),('Islampur','Bihar',969),('Jagdispur','Bihar',970),('Jamalpur','Bihar',971),('Jamui','Bihar',972),('Jehanabad','Bihar',973),('Jhajha','Bihar',974),('Jhanjharpur','Bihar',975),('Jogabani','Bihar',976),('Kaimur','Bihar',977),('Kanti','Bihar',978),('Katihar','Bihar',979),('Khagaria','Bihar',980),('Kharagpur','Bihar',981),('Kishanganj','Bihar',982),('Lakhisarai','Bihar',983),('Lalganj','Bihar',984),('Madhepura','Bihar',985),('Madhubani','Bihar',986),('Maharajganj','Bihar',987),('Mahnar Bazar','Bihar',988),('Makhdumpur','Bihar',989),('Maner','Bihar',990),('Manihari','Bihar',991),('Marhaura','Bihar',992),('Masaurhi','Bihar',993),('Mirganj','Bihar',994),('Mohania','Bihar',995),('Mokama','Bihar',996),('Mokameh','Bihar',997),('Motihari','Bihar',998),('Motipur','Bihar',999),('Munger','Bihar',1000);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offices`
--

DROP TABLE IF EXISTS `offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offices` (
  `userid` varchar(30) NOT NULL,
  `usernm` varchar(40) DEFAULT NULL,
  `usertype` varchar(30) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `pincode` varchar(30) DEFAULT NULL,
  `mobileno` varchar(10) DEFAULT NULL,
  `emailid` varchar(30) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `userstatus` varchar(30) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offices`
--

LOCK TABLES `offices` WRITE;
/*!40000 ALTER TABLE `offices` DISABLE KEYS */;
INSERT INTO `offices` VALUES ('SaiNagar','Sachin','officer','Sai Nagar, Amravati','444607','9878765654','adityaingole91@gmail.com','1990-12-12','Male','active','SaiNagar.png','Amravati','Maharashtra');
/*!40000 ALTER TABLE `offices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requireddocs`
--

DROP TABLE IF EXISTS `requireddocs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requireddocs` (
  `docId` int NOT NULL,
  `docName` varchar(200) DEFAULT NULL,
  `formId` int DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`docId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requireddocs`
--

LOCK TABLES `requireddocs` WRITE;
/*!40000 ALTER TABLE `requireddocs` DISABLE KEYS */;
INSERT INTO `requireddocs` VALUES (1001,'aadhar card',1001,'Nationality Cerficiate'),(1002,'Electric Bill',1001,'Nationality Cerficiate'),(1003,'aadhar card',1002,'caste Certificate'),(1004,'Electric Bill',1002,'caste Certificate');
/*!40000 ALTER TABLE `requireddocs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statemaster`
--

DROP TABLE IF EXISTS `statemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statemaster` (
  `state` varchar(200) NOT NULL,
  PRIMARY KEY (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statemaster`
--

LOCK TABLES `statemaster` WRITE;
/*!40000 ALTER TABLE `statemaster` DISABLE KEYS */;
INSERT INTO `statemaster` VALUES ('Andhra Pradesh'),('Arunachal Pradesh'),('Assam'),('Bihar'),('Chandigarh'),('Chhattisgarh'),('Dadra and Nagar Haveli'),('Daman and Diu'),('Delhi'),('Goa'),('Gujarat'),('Haryana'),('Himachal Pradesh'),('Jammu and Kashmir'),('Jharkhand'),('Karnataka'),('Kerala'),('Lakshadweep'),('Madhya Pradesh'),('Maharashtra'),('Mizoram'),('Orissa'),('Punjab'),('Rajasthan'),('Tamil Nadu'),('Tripura'),('Uttar Pradesh'),('Uttarakhand'),('West Bengal');
/*!40000 ALTER TABLE `statemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submitteddocs`
--

DROP TABLE IF EXISTS `submitteddocs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submitteddocs` (
  `subId` int NOT NULL,
  `docid` int DEFAULT NULL,
  `appId` int DEFAULT NULL,
  `formId` int DEFAULT NULL,
  `userid` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`subId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submitteddocs`
--

LOCK TABLES `submitteddocs` WRITE;
/*!40000 ALTER TABLE `submitteddocs` DISABLE KEYS */;
INSERT INTO `submitteddocs` VALUES (1001,1004,1001,1001,'Ramesh'),(1003,1005,1001,1001,'Ramesh'),(1004,1009,1003,1001,'jasmin'),(1005,1004,1002,1001,'Ramesh'),(1006,1004,1002,1001,'Ramesh'),(1007,1005,1002,1001,'Ramesh'),(1008,1010,1004,1001,'rahul'),(1009,1010,1006,1002,'rahul'),(1010,1006,1008,1001,'neha'),(1011,1006,1008,1001,'neha'),(1012,1007,1008,1001,'neha');
/*!40000 ALTER TABLE `submitteddocs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdetails`
--

DROP TABLE IF EXISTS `userdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userdetails` (
  `userid` varchar(30) NOT NULL,
  `usernm` varchar(40) DEFAULT NULL,
  `usertype` varchar(30) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `pincode` varchar(30) DEFAULT NULL,
  `mobileno` varchar(10) DEFAULT NULL,
  `emailid` varchar(30) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `userstatus` varchar(30) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetails`
--

LOCK TABLES `userdetails` WRITE;
/*!40000 ALTER TABLE `userdetails` DISABLE KEYS */;
INSERT INTO `userdetails` VALUES ('jasmin','Jasmin','user','amt','444607','9889876765','adityaingole91@gmail.com','1990-12-12','Female','active','jasmin.jpg','Amravati','Maharashtra'),('neha','neha','user','amravati','444605','9889876765','adityaingole91@gmail.com','1998-12-12','Female','active','neha.jpg','Amravati','Maharashtra'),('rahul','rahul','user','amt','444607','9889876765','adityaingole91@gmail.com','1990-12-12','Male','active','rahul.jpg','Amravati','Maharashtra'),('Ramesh','Ramesh','user','amt','444605','9878765654','adityaingole91@gmail.com','1999-12-12','Male','active','Ramesh.jpg','Amravati','Maharashtra');
/*!40000 ALTER TABLE `userdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userid` varchar(30) NOT NULL,
  `usernm` varchar(40) DEFAULT NULL,
  `pswd` varchar(30) DEFAULT NULL,
  `usertype` varchar(30) DEFAULT NULL,
  `userstatus` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','Admin','Admin@123','admin','active'),('jasmin','Jasmin','test','user','active'),('neha','neha','test','user','active'),('rahul','rahul','test','user','active'),('Ramesh','Ramesh','Test@123','user','active'),('SaiNagar','Sachin','Test@123','officer','active');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'notarydb'
--

--
-- Dumping routines for database 'notarydb'
--
/*!50003 DROP PROCEDURE IF EXISTS `changePassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `changePassword`(in userid1 varchar(200),in pass1 varchar(200))
BEGIN
update users set pswd=root where userid=userid1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `chkPass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `chkPass`(in userid1 varchar(200),in pass1 varchar(200))
BEGIN
select * from users where userid=userid1 and pswd=root;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getcities` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcities`(in state1 varchar(200))
begin
select * from cities where state=state1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getstates` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getstates`()
begin
select distinct(state) from statemaster;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateLoginSts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateLoginSts`(in userid1 varchar(200))
begin
 update loggedInUsers set sts='loggedOut' where userid=userid1 ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `notary_ipfs_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `notary_ipfs_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `notary_ipfs_db`;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `docid` int NOT NULL,
  `dhash` longblob,
  `prevHash` longblob,
  `userid` longblob,
  `title` longblob,
  `docdesc` longblob,
  `dt` varchar(200) DEFAULT NULL,
  `tm` varchar(200) DEFAULT NULL,
  `skey` longblob,
  `filepath` longblob,
  PRIMARY KEY (`docid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1001,_binary '98342546000f7fc10590a09b4c7a3d49a877ffbcd0319c6dae67c610b621442b',_binary 'NA',_binary '�\�,��U4�u��',_binary 'f-\�c��e�,�ȭp',_binary 'f-\�c��e�,�ȭp','13/12/2021','15:26',_binary '%�`�\�sn-9Z\��m',_binary '\�\�!6vj\�\�q��%�Ǜ'),(1002,_binary '0207282fb270cbef36212600079dc088e3f157e26d5c6e9e7ba04a60442ce87c',_binary '98342546000f7fc10590a09b4c7a3d49a877ffbcd0319c6dae67c610b621442b',_binary 'x&\��.\��Q\�iyCr�',_binary '��t}�$\n��DY\�',_binary '��t}�$\n��DY\�','13/12/2021','16:2',_binary '\'��R\�uX�c�A�#�:',_binary '\�\�\��\\�X.-\Z1\�h'),(1003,_binary '5cf0ff395d245400b025b07000c3a1a2df1e0120f3f01b2f94777381fd20423c',_binary '0207282fb270cbef36212600079dc088e3f157e26d5c6e9e7ba04a60442ce87c',_binary '\�I�`C)	Ϭ��}۪�',_binary '�\0\\ܔ\�\�E\�ƨ/���B',_binary '\'\�\�`���&||\���','13/12/2021','16:3',_binary '1\�$�	\���-�h\�mۿ\�',_binary '��/�T��\�4۾\�\�\�W'),(1004,_binary '0a617f408b48429c4dc79dc62dec229fa4d8126514f801a05583b968b5e037ca',_binary 'NA',_binary 'u,�\�ѯD`	B��C',_binary 'X�_:���N�|NJ�,\�\�',_binary '�&���b�@\�\n\�K|�','13/12/2021','18:25',_binary '󣢐WR��\�\�\�U\�',_binary 'v�+��s7L\�N\�_\0\�'),(1005,_binary '16503d6de099bef8e5d031be0ea2cb4faaaf1d3d2bb65c5166154af2826bbe55',_binary '0a617f408b48429c4dc79dc62dec229fa4d8126514f801a05583b968b5e037ca',_binary 'Y;jL�,�;a�\���\�',_binary '\�\�:�`\� �K�n��\�\�',_binary 'E3G?�IO\�Ri���','13/12/2021','18:33',_binary '\�w÷56�\n~h\�\����',_binary 'T�Y\�%���\�a��-<�]'),(1006,_binary '0b8664e15793978b400c61031a657144173c55191aa98d5287535ee14760d7ec',_binary 'NA',_binary 'bw��\'�\�\�\�;\�0�v',_binary '.m��\�%7�i�Z(J�t',_binary '.m��\�%7�i�Z(J�t','9/2/2022','23:10',_binary '�\�X\��n,�\�y��',_binary 'Z�����<�\0C\�\�F'),(1007,_binary '3238dc0b8ad427b926a1e010351d785336d3b3d88459b529aea3eef4152d3cb1',_binary '0b8664e15793978b400c61031a657144173c55191aa98d5287535ee14760d7ec',_binary '5�?UO �v\�\Z|�H\�',_binary 'q�/\��\�sƕ�\Z{\Z\�',_binary '�\�X$\�z�]d\�\�n\�\�č','9/2/2022','23:17',_binary '\'\���Y\���-)<z\�\�',_binary '\Z��,a�US�d\�ʼԞ'),(1008,_binary '792914ef0e3c4463779609bcae93ea5e6db640534fe04ef3a726f08ffd22f397',_binary '16503d6de099bef8e5d031be0ea2cb4faaaf1d3d2bb65c5166154af2826bbe55',_binary 'Œ9�@QŢ���v{{',_binary '\�|g^�\"�\�T0T\�|�V',_binary '\�\�Ƽ��k(�\nߊw','7/3/2022','0:35',_binary 'l\0R��W�	�\�	\�C',_binary '�K\�Y�\�Ϯ>U]s�'),(1009,_binary '8921368cdacbfd9f5deb091095f947a625611af8efeaa949a76387582cb386fe',_binary 'NA',_binary '���i���y\\�5k��{9',_binary '��@��;0\0y\�oڌ�9',_binary '���H\r �xF\�ޜ\�$�p','8/3/2022','15:28',_binary '�Я��H��\�,�\�',_binary '�_sZ2H�\�aX�\�ᆁ'),(1010,_binary 'fb9fc8c2c1412c1f298775ca649dd14968475a5517e3b69e59289281f6baad20',_binary 'NA',_binary '�\rDn-.�����g\���',_binary 'X��mYP\�Љ�PtDJ',_binary '�\�i�\Z\�EfeN�z:,E','8/3/2022','17:10',_binary '�`^ {u���Oh8\���a',_binary '!*\�FJH�3Px%�k\�\0');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `getdocuments`
--

DROP TABLE IF EXISTS `getdocuments`;
/*!50001 DROP VIEW IF EXISTS `getdocuments`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `getdocuments` AS SELECT 
 1 AS `docid`,
 1 AS `dhash`,
 1 AS `prevHash`,
 1 AS `userid`,
 1 AS `title`,
 1 AS `docdesc`,
 1 AS `dt`,
 1 AS `tm`,
 1 AS `skey`,
 1 AS `filepath`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'notary_ipfs_db'
--

--
-- Dumping routines for database 'notary_ipfs_db'
--
/*!50003 DROP PROCEDURE IF EXISTS `getDocuments1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDocuments1`(in uid varchar(200))
begin
 select * from getDocuments where userid=uid;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDocumentsShared` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDocumentsShared`(in docid1 varchar(200))
begin
 select * from getdocuments where docid in (docid1);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMaxIdDocs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMaxIdDocs`()
begin
select (ifnull(max(docid),1000)+1) as mxid from documents;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertDoc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertDoc`(in userid1 varchar(200), in title1 text, in dt1 varchar(30), in tm1 varchar(200)
,docdesc1 varchar(300),in key1 varchar(200),in docpath1 varchar(200))
begin
declare mxid integer;
declare prevHash1 text;
IF EXISTS ((select dhash from documents where aes_decrypt(userid,docid)=userid1 and docid=(select max(docid) from documents where aes_decrypt(userid,docid)=userid1)))
 Then
  set prevHash1=(select dhash from documents where aes_decrypt(userid,docid)=userid1 and docid=(select max(docid) from documents where aes_decrypt(userid,docid)=userid1));
else
set prevHash1='NA';  
END if;
set mxid=(select ifnull(max(docid),1000) from documents);
set mxid=mxid+1;
insert into documents values(mxid,SHA2(concat(mxid,userid1),256),prevHash1,aes_encrypt(userid1,mxid),aes_encrypt(title1,mxid),aes_encrypt(docdesc1,mxid),dt1,tm1,aes_encrypt(key1,mxid),aes_encrypt(docpath1,mxid));
  
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `notary_bc2_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `notary_bc2_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `notary_bc2_db`;

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applications` (
  `docid` int NOT NULL,
  `dhash` longblob,
  `prevHash` longblob,
  `userid` longblob,
  `title` longblob,
  `formId` int DEFAULT NULL,
  `docdesc` longblob,
  `dt` varchar(200) DEFAULT NULL,
  `tm` varchar(200) DEFAULT NULL,
  `skey` longblob,
  `filepath` longblob,
  `sts` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`docid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (1001,_binary '76e485ae91994d039b53d5a0732a8e69ba3a3323d5dd54d8aea71a9f39278d6e',_binary 'NA',_binary '\�\�\�3>-\�|?9�&xT',_binary '\��a,������3\Z��	��H̲UL搬�ܠŏ',1001,_binary '콧�\�#�RՆ�<��','7/3/2022','19:3',_binary '�����}\�\�l�K�++i)',_binary 'Z�`��\�\�>msP,]w<�镩�\r\Z\�˚q\�\�\�',NULL),(1002,_binary '66719a3bfa4e298781147e847dcec7aacee9ced6c35907724d5237ca024f6e1c',_binary 'NA',_binary '�\�G\�tC\�\�!�*\r�~\�',_binary '<B\�(C6\�Ў�k���A�V�\�c��\�\rCL�',1001,_binary '\�&�?\�\�H�U�[\�48','8/3/2022','15:27',_binary '0�U+�����x�g��M ',_binary '\�;mBz�uS�h^\�8$\�\�KX>�%��\��(q?�','pending'),(1003,_binary '8d06a6c334566df54d422103e480a7955423e565f8d7d3272d3371925c488cea',_binary 'NA',_binary 'À�c��@�\�B\�4',_binary '\��I\�\rӳB\ru��\����a���\�%�UU�a\�',1001,_binary 'J\�\����x��1pbC','8/3/2022','17:21',_binary '\�yh1����\�+@k',_binary '\�\�\�S�\�5\�i\�|N���A�\�\�\����\��3','approved'),(1004,_binary 'ab90efbd9beb5bfcbaa1771a8d0fba3f1a00b1ee73e0ca59d75fc7aa1f9a52c8',_binary '8d06a6c334566df54d422103e480a7955423e565f8d7d3272d3371925c488cea',_binary '6��N\�՛\�vuk6��ra',_binary '�|XD\�{�E⾠\�F\�~�̙�\r4w\�\�\r����',1002,_binary '�&���b�@\�\n\�K|�','20/4/2022','14:5',_binary 'ӵ��RN��eU2F��j\�',_binary '\�\�YI\�S�G\�y�$�B���)ӿs����`��','pending'),(1005,_binary '0775d71c0f28e01033a223899d6c7a50f7b78a3bd970f0910616ddee2a006a35',_binary 'NA',_binary 'eOM�Ȓ\�\��k>�\�\�',_binary '|\��=(\��~\�z�+Py隖�>)\�%\�\��L�u',1001,_binary '|\�0rx��0$�5w�','20/4/2022','14:32',_binary '�D�%��\��\�n�#',_binary '�Ol��\�>&{��^YL\�屴\����1�kX~x','pending'),(1006,_binary '0b8664e15793978b400c61031a657144173c55191aa98d5287535ee14760d7ec',_binary '0775d71c0f28e01033a223899d6c7a50f7b78a3bd970f0910616ddee2a006a35',_binary 'bw��\'�\�\�\�;\�0�v',_binary '\r*�e\�8CU<��I\0{j�y\�ViU�\��\�\�B\�z\�',1001,_binary '|�3\�\��:8\�+⪘ ^','20/4/2022','14:34',_binary '�9\�\�;��\\�m�]My',_binary '�Q{���\�����\��\��\�\��fR�z��SQ \�','pending'),(1007,_binary '3238dc0b8ad427b926a1e010351d785336d3b3d88459b529aea3eef4152d3cb1',_binary '0b8664e15793978b400c61031a657144173c55191aa98d5287535ee14760d7ec',_binary '5�?UO �v\�\Z|�H\�',_binary '�7v]\�(���\�e�֬[8���\"DBF�L\�*\�',1001,_binary 'q��v��P-\0��2','20/4/2022','14:34',_binary '�\�Z\�ܨ�\�$�����',_binary '6@-�+\�\"\�Y�1{�\�I[�l��ZAx\��\�_R','pending'),(1008,_binary '0847ec46e7597091b34c3de515c9b0e93054a28cc1ff217093ad4c0dae4929e8',_binary '3238dc0b8ad427b926a1e010351d785336d3b3d88459b529aea3eef4152d3cb1',_binary 'x\���\�	���y�F\�',_binary '��	~�\�\��\������m�l\�Խ�7���x\�!]�',1001,_binary '2�~ӯYAe^������','20/4/2022','14:34',_binary '��>8s�`\Z_�x��',_binary '�^\��۞mL�i]U\���\�G�\�\�\�Ư{w','approved');
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicationtransactions`
--

DROP TABLE IF EXISTS `applicationtransactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicationtransactions` (
  `transId` int NOT NULL,
  `dhash` longblob,
  `prevHash` longblob,
  `userid` longblob,
  `processedBy` longblob,
  `title` longblob,
  `appId` int DEFAULT NULL,
  `formId` int DEFAULT NULL,
  `docdesc` longblob,
  `dt` varchar(200) DEFAULT NULL,
  `tm` varchar(200) DEFAULT NULL,
  `skey` longblob,
  `filepath` longblob,
  `sts` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`transId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicationtransactions`
--

LOCK TABLES `applicationtransactions` WRITE;
/*!40000 ALTER TABLE `applicationtransactions` DISABLE KEYS */;
INSERT INTO `applicationtransactions` VALUES (1001,_binary '47dba1795c07b6d1cd5ffe62cf24d752a386f036e07bfe0bd655b9e79516f9ce',_binary 'NA',_binary '�I\r�t\�\�\�\�訜\�/�',_binary '�%L��K\�g\�@\�\�.#',_binary '\��a,������3\Z��	��H̲UL搬�ܠŏ',1003,1001,_binary '\��\�!%�f��N����','16/3/2022','23:49',_binary '\0�]��M�׻\�*',_binary '_�\���%f\�\�v\�N','approved'),(1002,_binary '8d9b863d4410d5b6f88b4c5a85815e52571b873f6aa73f4ceac1695534e6f9b6',_binary '47dba1795c07b6d1cd5ffe62cf24d752a386f036e07bfe0bd655b9e79516f9ce',_binary '����|�a���~\�\�',_binary '�\�G\�tC\�\�!�*\r�~\�',_binary '<B\�(C6\�Ў�k���A�V�\�c��\�\rCL�',1003,1001,_binary '#M`ە��vt1a^ǻ\�%','16/3/2022','23:49',_binary 'wYM\�2fu\�\�(�y�',_binary '\�\�\��	T�.\�\�\�-u�W�','approved'),(1003,_binary '16416ff18a5a538ec3d1f3f1627cafce8106edad241f95bb646cb587129b1907',_binary '8d9b863d4410d5b6f88b4c5a85815e52571b873f6aa73f4ceac1695534e6f9b6',_binary '�/�WiG��/83�^�',_binary '\�\�\\_\�*$�>ny�R\�\0�',_binary '\��I\�\rӳB\ru��\����a���\�%�UU�a\�',1003,1001,_binary ';}nT+2\�\�\r$tp\�A�','16/3/2022','23:49',_binary 'v�S\�\�r{732i��:n',_binary '��/�T��\�4۾\�\�\�W','approved'),(1004,_binary '133a66719540b30f4805089be59ab4e54698b4c8466481ecba07f2f404554255',_binary '16416ff18a5a538ec3d1f3f1627cafce8106edad241f95bb646cb587129b1907',_binary '8�\�\�#�\�\�N\�\�\�\"�',_binary '\�\�\���\�t-\�	��\�',_binary '\'6�΢�w&28�2\�,D\�m7�}\�K�oy|�',1003,1001,_binary 'S�\�\�nJͶ\�6��\�>S','16/3/2022','23:49',_binary 'EQ������_#���`�!',_binary '\���\�\�\��\��\\\�\�ƨc','approved'),(1005,_binary '66d7486bba7b142fde90c8de84661d0989f32eb10a625d204e2f4145b59a0fbe',_binary '133a66719540b30f4805089be59ab4e54698b4c8466481ecba07f2f404554255',_binary '_焦�\�iY�\�ܡ',_binary 'A�\nd\��Y�\�˴�7L��',_binary '|\��=(\��~\�z�+Py隖�>)\�%\�\��L�u',1003,1001,_binary '�,5d!/���\�\'^<','16/3/2022','23:49',_binary '2�(æ�k�z�ȶr��',_binary '1\�8_Pa\�2\�\���:','approved'),(1006,_binary '995a4e98fd7f1db12e6c400bc869fa9ee34832f15bf53f6fb4c74b65005aee00',_binary '66d7486bba7b142fde90c8de84661d0989f32eb10a625d204e2f4145b59a0fbe',_binary 'q��X\�\�M���j\'',_binary 'j`�e�\�\�C�\�b�g[',_binary '\r*�e\�8CU<��I\0{j�y\�ViU�\��\�\�B\�z\�',1003,1001,_binary '\�\�z\�\�mؘNB<\�P','16/3/2022','23:49',_binary '͟g{1s�j\'wVo�54',_binary '\�:�f6*�\�u�\�\�_�(\�','approved'),(1007,_binary '87e56e35383eb14951c66e17dbeff279f132b528fcfbb07cfd13064ef645a777',_binary '995a4e98fd7f1db12e6c400bc869fa9ee34832f15bf53f6fb4c74b65005aee00',_binary 'ŋ�\�5ʵ\�I:;ǈ',_binary '$#�\n�����׺�0�',_binary '�7v]\�(���\�e�֬[8���\"DBF�L\�*\�',1003,1001,_binary '{o��x\�as�Eg��2','16/3/2022','23:49',_binary '⦹1)\rnL��C��f\��',_binary 'S3M8���5*ڔ�z�\�','approved'),(1008,_binary 'aecadaa77eb5e741d3431b23c5683572e4b37ce003604cc7a90ce932646177ee',_binary '87e56e35383eb14951c66e17dbeff279f132b528fcfbb07cfd13064ef645a777',_binary 'S�\��[\��x�G�M',_binary '�t[\�0\���\�I\�/��',_binary '��	~�\�\��\������m�l\�Խ�7���x\�!]�',1003,1001,_binary '\�І��\�x @\�\�\Z2','16/3/2022','23:49',_binary '©�\�S�	���%@\�\�',_binary '�\�{���\�L�%4X\��','approved'),(1009,_binary '4150f613f53f8756c889098832252237a87e0350f1c14e5779823070187098f7',_binary 'aecadaa77eb5e741d3431b23c5683572e4b37ce003604cc7a90ce932646177ee',_binary '�`�j\�q}\�\�\�3',_binary '���i���y\\�5k��{9',_binary '�@���\n\�f� \�`��\�����\�-\�\�\���p�O',1003,1001,_binary 'l�\�Lį/\�=i띬�x','16/3/2022','23:49',_binary 'J��\�N����\�E�&�\\',_binary '2ua�@Jݒ�����1E','approved'),(1010,_binary 'a7f14c0449a2dd10367b53044ea7cc9035087d27b8bfe076ccb5bd408c2cac70',_binary '4150f613f53f8756c889098832252237a87e0350f1c14e5779823070187098f7',_binary '�V�	\�\�W\�qD\�ݫ',_binary '?9���gPzso�vn\\S',_binary '8�\��]\�S��u)���W־����B&*i\�',1003,1001,_binary 'uQ\�Q�&#2u>����\�\�','16/3/2022','23:49',_binary '\��j��ٷ\�1x�',_binary '�\�Ÿ8���L\�E','approved'),(1011,_binary 'e6de9683dcff4975131df3125fdf107ea2ea26fb053616b3d50cf90d0f6dbd6f',_binary 'a7f14c0449a2dd10367b53044ea7cc9035087d27b8bfe076ccb5bd408c2cac70',_binary '{i�ǱK\\�/l\�(/q�',_binary 'c6pkܚ�e����9:',_binary '\�OT��qbr\�\��+��%�Xr<\�\\ՈMA\�L��\�',1003,1001,_binary '���]\�7���\�˴G�n8','16/3/2022','23:49',_binary '\�&�\�h\��\�nG��R4?',_binary '�.|��T\�N�a�̀#','approved'),(1012,_binary '54e3ade5a5221254eccd94f15bdec81aa702402d7c1bf501c0b7d631acde0101',_binary 'e6de9683dcff4975131df3125fdf107ea2ea26fb053616b3d50cf90d0f6dbd6f',_binary '\"GGsd\�q�@�G.i5\�',_binary '�����\�b)\�(�y\�4',_binary '�\�<2K�\0x�\�\�]`*,�SzC�xĴEF_⢭',1003,1001,_binary '\�>W�\�R��\�]YF\�h�','16/3/2022','23:49',_binary '=��L\�y�Fk>��d',_binary 'O͊\�&_E�\�?�&U','approved'),(1013,_binary '1d718fc0c9b71edf5435d25e3de30eebfed5528fd9477d2e5895cc2c4e5c465f',_binary '54e3ade5a5221254eccd94f15bdec81aa702402d7c1bf501c0b7d631acde0101',_binary 'WH(9��\�\n�1\�\'h',_binary 'P��\ZEF9\�]��-�',_binary '�HZa\�i��P �\�\�\�\�s�\�Jw�N���$���',1003,1001,_binary '�J���@�\'�jW�\�>\�','16/3/2022','23:49',_binary '���]�\�Czmr5\�\�\\',_binary 'ŵZ���)\�\��u^�#��','approved'),(1014,_binary 'a3eb966fd400eed8809407852c76431653e9458a0c415e33608064385e27d954',_binary '1d718fc0c9b71edf5435d25e3de30eebfed5528fd9477d2e5895cc2c4e5c465f',_binary 'X���\��\nk9e�����',_binary '\��[\\__DĪ<y6>�\"',_binary '\�Ϡ&\�\�r�zC�\n(��A\�\�a���%�G\�\�\�dϿ',1003,1001,_binary '�o�p\�h��\�h�T','16/3/2022','23:49',_binary '��\��\rܽ\�\�&+=v',_binary '	2��=��\��\�\�fɦ','approved'),(1015,_binary '674001caeb57898ca6f3bb4570bb1051d7dce9cca65c7093674d5ba57667a878',_binary 'a3eb966fd400eed8809407852c76431653e9458a0c415e33608064385e27d954',_binary 'O\�\���^Q�U�U]\�,S',_binary '1p\�	=\��b�\�Sc\�P{',_binary '*��G\�<?+��[�:7�þ�Au���_U',1003,1001,_binary 'W��9���\�M�h�','16/3/2022','23:49',_binary 'S�Z\�\�D�.\�/�^�',_binary '`gTڦ�$lPU1\�\Z<','approved'),(1016,_binary '4c1571b5dddc1ebd72dc4bfdfa6d4283b0c7d8308120e0e4fe04639ab7843ca8',_binary '674001caeb57898ca6f3bb4570bb1051d7dce9cca65c7093674d5ba57667a878',_binary '��(ʁ��6�\�/�',_binary '\�P\�Pl��ͩ�o\�1̮',_binary '�%1�O��\0)�^0o��t\�ț��%?*',1003,1001,_binary '���U�F�\�\�vh�T','16/3/2022','23:49',_binary '�7Q\�\���y>����\�@',_binary '�ٕ\�u���;�\r\�n!]�','approved'),(1017,_binary '126408e3ab8af9d2ef54e3e2e4c9474bb4e5b760ce126f98c3d53088202bc38a',_binary '4c1571b5dddc1ebd72dc4bfdfa6d4283b0c7d8308120e0e4fe04639ab7843ca8',_binary 'i\�\nC\��*J\� 	\�\�',_binary 'n�\�\�+kw_W�vM�',_binary '\�-L�\��g��}�Ǿ\�L��\�UU\�\�\�e�Ј%\r�',1003,1001,_binary '���r���r\�r0as\�','16/3/2022','23:49',_binary '��r\�\r\�&��\�k���\��',_binary 'O\"��g3lQ$��\�\�:','approved'),(1018,_binary '1e31db028fc9c0378de9cf0d70f269500ec721c51e383f4801c2b652c8126665',_binary '126408e3ab8af9d2ef54e3e2e4c9474bb4e5b760ce126f98c3d53088202bc38a',_binary 'm�������\�zK\n�A1o',_binary '\�\��Ϭ\r�\���O�%_',_binary 'k\�U��e�:(/�勜\�?5f�\�\��\�\"\�bE',1003,1001,_binary 'z<�|�&.U���I\�\�\0','16/3/2022','23:49',_binary '\�\\�kǏ�G�ⷊ�C\�',_binary '���v�M�Y\�jN\�\�','approved'),(1019,_binary '317dbd12eeb053be86045350f4aa84ca171167a0fdd48b532d6bd6ec6f7697d5',_binary '1e31db028fc9c0378de9cf0d70f269500ec721c51e383f4801c2b652c8126665',_binary '�\�\�\�\�k��@\�̚w',_binary '�=\�*�ðe]Bw\��f',_binary '>\�$\�*�\�b+�K��L�կ&\�\�\�^�0�7�b�\�',1003,1001,_binary 'Jf@�T\�\�;{��T�','16/3/2022','23:49',_binary '���/\�\�\�Hľ_�',_binary ' ��\�z\�2����\���B','approved'),(1020,_binary 'ca85c014afe65d2c0fef8aaf669154d188fe467e8eecef0106ffdcd08a96c736',_binary '317dbd12eeb053be86045350f4aa84ca171167a0fdd48b532d6bd6ec6f7697d5',_binary '�?Ax��Y\�$�\���@',_binary '\n\�T,�����\"',_binary '���6\�9����u\�f��*l�\�:	�\�\nX��',1003,1001,_binary '\�[/��g5��X�b,>�','16/3/2022','23:49',_binary '�$���%\�\�\�\�֨T*�X',_binary '\�\n�Ϯ\"��e�N\�pK\�','approved'),(1021,_binary 'b5b724e19187f0348f1e53bf8746d2e372dd67344ddfc319b376c96c26759e4a',_binary 'ca85c014afe65d2c0fef8aaf669154d188fe467e8eecef0106ffdcd08a96c736',_binary '��78\�It�\Z�xK\\',_binary '�\�$���5�/\0�\�\�',_binary 'X3mm\�㘼����|+:�i�����\\�����-\�',1003,1001,_binary '\rG\��QQ�U\�b�H9S\�','16/3/2022','23:49',_binary '�F\�T��ȭ�:{R�x\�',_binary '\�\�o\�P2�\0�\�z>','approved'),(1022,_binary '287db69a9b200bb7d9ed8e4107ed456da02cd9b7104ad78335c33d71e9836d7a',_binary 'b5b724e19187f0348f1e53bf8746d2e372dd67344ddfc319b376c96c26759e4a',_binary '\�V���u�\�|����\�',_binary '\�i\�ށ\��\0\�\�k,�A',_binary '��J\�X��\�ɿQ�\�k|�\�\�	)E�f�\�Ƕ����',1003,1001,_binary 'L��\�zL��\�d\�\�\�E\�','16/3/2022','23:49',_binary '�n!>x\�YX	\�\�\�4',_binary '<\�,y���Z\�PB�_x','approved'),(1023,_binary 'f6e29bea00cee03d6a48dc98d602e52408b1e22ee27e0f4bb90b81d83f546174',_binary '287db69a9b200bb7d9ed8e4107ed456da02cd9b7104ad78335c33d71e9836d7a',_binary '�\�\��\�\�HIY���\\8',_binary 'q\�!�=����(K�\�\�',_binary 'r\��\�>�\���	\�\��b\�	A�&�G�N*��\'�',1003,1001,_binary '�A�\�\��$era8\�\�','16/3/2022','23:49',_binary '���{�\���tL�.*|',_binary '\�\�i`\�嫾\0	\0�Y','approved'),(1024,_binary '0a76dd7ac145470b06bbd6edcdec5b982a94bd9492fccac538fb08d83fa27381',_binary 'f6e29bea00cee03d6a48dc98d602e52408b1e22ee27e0f4bb90b81d83f546174',_binary '\�\��m�\�8tz�髳k1',_binary '�*�U�j�\�g>f�;@t�',_binary '�\�񸞕�����R�m\n�O�ɿ\�4�E�T9	',1003,1001,_binary '\�w�R�҇(��)\�\'ҳ','16/3/2022','23:49',_binary 'feiˮM|垷\�\�yf\�',_binary '�\�C��?��\�\Z�nV','approved'),(1025,_binary 'f3fe2ca9443f4644fba2cfcba5600530ecd63148c734ce24154d865d1909b762',_binary '0a76dd7ac145470b06bbd6edcdec5b982a94bd9492fccac538fb08d83fa27381',_binary '���\0B�����s\�5%\�\�',_binary 'o!\�]~�2_.$�u\�Da',_binary 'PP$�\�/\\7��@ u�Q\��\\d+6NM~1\�\�',1003,1001,_binary '����n9�,]\�$�G','16/3/2022','23:49',_binary '=�^���n\��J\"�0[',_binary 'Y�w��\�H��Q','approved'),(1026,_binary '9fcf6e6eb29a2d740a8ab180232ce0b9d02b3d84a99e7cd525413d7b57d79177',_binary 'f3fe2ca9443f4644fba2cfcba5600530ecd63148c734ce24154d865d1909b762',_binary '���j�t\�\�Agn�',_binary '����\rqBv.R�\�\�\�\�',_binary 'o\�*!������8֮@�﵍\�\�t$\�7\�\\-Qh',1003,1001,_binary '�\�:�\����\�FC�','16/3/2022','23:49',_binary '\�}�\�\�JX��ܑ\����',_binary '_*�4��?u�\'Q���#B','approved'),(1027,_binary '264b520176b43b57579c0746caeb673c0128931b14ee4f06dec0d0093df87471',_binary '9fcf6e6eb29a2d740a8ab180232ce0b9d02b3d84a99e7cd525413d7b57d79177',_binary '\Z��\�k�ݎ\�H@�Ϣ',_binary 'W\�9�3a\�1;\�~�h`',_binary '�\� \�\�\�auv�@	�H\�\�}&���\�*q�|\n)',1003,1001,_binary 'u\�o\�t�H\�\�\�\�0�.','16/3/2022','23:49',_binary 'z� �j\"��{Od\��L\�',_binary '!Z���Gխ\'���','approved'),(1028,_binary '593f0ec26446479701b91bc4d02c7f8239896605ff3fa93ea368396d807a0b3d',_binary '264b520176b43b57579c0746caeb673c0128931b14ee4f06dec0d0093df87471',_binary '�\r\�k�Ҙ�=r-�/�P\�',_binary '\�(�(�b\�tޢ��F\�',_binary '?D܉\�t-B=�m�ii����\�	(\�\��	e\"',1003,1001,_binary '5\0j�\��\�:B�\��ڸ�v','16/3/2022','23:49',_binary '1	k\�I\�\�\��P.\"',_binary 'M\�\�V��J�����\"\0','approved'),(1029,_binary 'e8e4a4d3ced87e889fc68b5424a0832715d565a43eb70360f7d0653b1ef6db34',_binary '593f0ec26446479701b91bc4d02c7f8239896605ff3fa93ea368396d807a0b3d',_binary 'B8ʽa\Z\�;�\n\r6\�q`�',_binary '\�n�u��@�k7\�{J',_binary '\�\���\�h\�\\\r>X�*@��\�\�\�\���~�Nx\�\�s:\�',1003,1001,_binary '�\��\�¨��q\�}�r','16/3/2022','23:49',_binary '�/I�y����\�[}',_binary '	FC���z!\��\�	','approved'),(1030,_binary '6ae7f719348c1270e90f622ded60b78a37dc158b85b8609262c4edb2187deb33',_binary 'e8e4a4d3ced87e889fc68b5424a0832715d565a43eb70360f7d0653b1ef6db34',_binary 'J\r\�{�i��S=\0��k�',_binary '�\�\�Y.�;�AK@w',_binary '���(��AK�\�8@�\�s�\�+\�\��\�>\�6~`�',1003,1001,_binary '\�\"�\�r�9O���� [','16/3/2022','23:49',_binary '\�GɬH��4㩡%\�\�u\�',_binary '�ݜ�1�F�P����\�','approved'),(1031,_binary '7286fa1fac2d467392e24a41b5fb2d000e8d3d9c0375b340862b2b428c4f70fd',_binary '6ae7f719348c1270e90f622ded60b78a37dc158b85b8609262c4edb2187deb33',_binary 'X�و�W�\���\�nA',_binary '\�Ӿ�\�vLJ�_��I',_binary 'm՜O�|�@��X\�\�c�֕UÆ4�&_��_%',1003,1001,_binary '\�\�E\�nW\��q]\�b9\Z�','16/3/2022','23:49',_binary 'n\"\0\�p���Yp;u�',_binary '&\�S\�\�\�\�O�c��_','approved'),(1032,_binary '336c28daa4f7655dba7e83d86f0e25fe90098da34efa01fe09dc43e0fb405ea3',_binary '7286fa1fac2d467392e24a41b5fb2d000e8d3d9c0375b340862b2b428c4f70fd',_binary '����u���\�,7���\�',_binary '��*�\�n� ��5�?R\�',_binary '�\�\�\�c\nW>\�\�9=u\�+��YL\\��`1?G�H��',1003,1001,_binary '\��\�ڙ<�w\�r��/d�','16/3/2022','23:49',_binary '�J$�󧤃\Z�JK˾[',_binary '�/>\�)\�@�\�\��-̂j','approved'),(1033,_binary 'd168e8dc07cceeb7f66aa35d4864d91bcac4d21dd59f836ea805fb32efb97eb0',_binary '336c28daa4f7655dba7e83d86f0e25fe90098da34efa01fe09dc43e0fb405ea3',_binary '\�ơU�Ű�:�lr�s�',_binary 'r<�4\�P���\Z̖v',_binary '!\�\�N�\�o����d�u�sI�\�7�{\r�`A\�\�',1003,1001,_binary '\�Mژ�P5\�\�`e��\�','16/3/2022','23:49',_binary '�-C�\�gt\�駞nt�\�',_binary 'o�z,�D�\�M��)\�1+�','approved'),(1034,_binary '5eeda487e3f9ac697ae2eb6be5de4003a083dca15a04f0d1250abe4b276d214a',_binary 'd168e8dc07cceeb7f66aa35d4864d91bcac4d21dd59f836ea805fb32efb97eb0',_binary '�d\�b��Y��v\�S',_binary '`\��\�K��l2�v\Z',_binary '��ә��\�H�Tr\n�u\�\�yC\0T�+\�%\n��\�b',1003,1001,_binary ':���[\�ܒ\�P\���2','16/3/2022','23:49',_binary '	�\�\��L1�<��m',_binary '7�E\�\�8�\��Ih\�','approved'),(1035,_binary 'b2e9068ce64b503add3c0d021cd6b5cfe086c9833f78a73f2f29ed56104545eb',_binary '5eeda487e3f9ac697ae2eb6be5de4003a083dca15a04f0d1250abe4b276d214a',_binary '\��MD\�\�\�\�]���',_binary 'y�=YH\�\�\�@\Z-j\�S',_binary '���\"/%<\�\���oq�\��۱�0\�]\��\��',1003,1001,_binary '\�\�/�\�����NR\�','16/3/2022','23:49',_binary '�v)�	�\�u��{2\�:\�',_binary '\��C�7\�4\�\n9t�9','approved'),(1036,_binary '35095fad6bc81f47b12322fe702473d7ded11e1f921a7c388a79d23704a3e80b',_binary 'b2e9068ce64b503add3c0d021cd6b5cfe086c9833f78a73f2f29ed56104545eb',_binary 'l�f�hJ�\�\n��.-��\�',_binary '\�#f��\ZMcsT�$�',_binary 'p��R$	�ש#�\Z����\�Gs\���~û4��\�',1003,1001,_binary '\�\���i\r#z��\�!','16/3/2022','23:49',_binary '(\�}�\'B@~�.g-�',_binary '\�ʃ��U�Me-����\�','approved'),(1037,_binary '15168d8e78a5d6bc4d83d7a64f9a056355bcba47fddda34802e22aeeab5070a4',_binary '35095fad6bc81f47b12322fe702473d7ded11e1f921a7c388a79d23704a3e80b',_binary '\�\n&\\\�v\n%��b�h�',_binary '�\n�����ąĦkd��',_binary '\�A�)�Oo�\�(?�]\���}\�\�\�k\�W�����a�',1003,1001,_binary 'h�\�\�\�re\�2�O�͌\r','16/3/2022','23:49',_binary '*/pk�\������RO�\�1',_binary '�Y�Z\�T�01v\�A','approved'),(1038,_binary '5daacb038691a4a563611be1b621a2f698daa5a0242f8c75c625168c66aad7a5',_binary '15168d8e78a5d6bc4d83d7a64f9a056355bcba47fddda34802e22aeeab5070a4',_binary '\�\�\�țL\� ����\�',_binary 'G�g\0�w~c�9C\���$',_binary '��B?�����{f�\�@Nm���\�DGY�5�F?',1003,1001,_binary '��7�\�/!d8�˿\\','16/3/2022','23:49',_binary '�$`{GL{abH�Z',_binary 'L{�\�&�\\� mf0��X','approved'),(1039,_binary 'b3abad38104f20acb0581ccd7e8f39692ee12c44ee08c5184e847b98ac5fbc56',_binary '5daacb038691a4a563611be1b621a2f698daa5a0242f8c75c625168c66aad7a5',_binary '��e➱�II&\�\�m4�',_binary '\�$�\\��\�\�\��\�',_binary 'ۊ�\��u��h�ݼ�\�o�o���Oߡ1��)ؔ',1003,1001,_binary 'a�jb0��g�F���\\','16/3/2022','23:49',_binary '\�\'\�9˕g�\n\Z�\�7�',_binary '\�rs��S�.\�u\�^,\�','approved'),(1040,_binary 'cbaadb7ecb8d304988375e4ef70663281084dcd72fd1df3adc0fa0c106f4f6d0',_binary 'b3abad38104f20acb0581ccd7e8f39692ee12c44ee08c5184e847b98ac5fbc56',_binary '\�m>\�O�Z-\���,',_binary '9\��\�\�E0guuzn\�4',_binary 'C\'\��Ē!8\r��- ��G\�C�zsV��\�K',1003,1001,_binary '#/�@s�g�!J4Je	','16/3/2022','23:49',_binary '��3�k�\�\��\0\�\�)�',_binary 'Zu�)ip.	�\�\n+A�S�','approved'),(1041,_binary 'b65ebe0081b20e3bfda413abaed29454629ae5f09f82b7502da07a7bb7998ca8',_binary 'cbaadb7ecb8d304988375e4ef70663281084dcd72fd1df3adc0fa0c106f4f6d0',_binary 'q\��Vc�7x��>}��',_binary '��\��<T�w˄R|ͧ�',_binary '���x\�\�`ߖ\�蹿�`h�6���a�%O\�\�\�:',1003,1001,_binary '�A\\(�ۘ\�/�K\��C','16/3/2022','23:49',_binary '=Y\"I����F��\�',_binary 'jE-�eN�M\�\�\�U4x?','approved'),(1042,_binary '7ed90ee6e8f97b62f1fe3ee0263ea001a85ec8c3cac62e601348d0d959c65958',_binary 'b65ebe0081b20e3bfda413abaed29454629ae5f09f82b7502da07a7bb7998ca8',_binary '׬I���\�g��\�^',_binary '����\�@��B\�@�E9',_binary 'bʏ��\���\�E\�bu�s�E�T�E;ʪJ',1003,1001,_binary '���y�SҲ|j \�@�','16/3/2022','23:49',_binary 'de&\�\�C֨�(vW\�U\\',_binary '��ڌ��B�\�L\�V2+�','approved'),(1043,_binary 'd39db1af85d961f4e24fb63bd2bade88324c76c2c2f9f7abbc9e14dc93f3d95d',_binary '7ed90ee6e8f97b62f1fe3ee0263ea001a85ec8c3cac62e601348d0d959c65958',_binary '���\�\�\�մؼ���\�$',_binary '��F\0�E�d3T̔At\�',_binary '�\�L6^��a��%�\�\��\�^R\��%�Wd>',1003,1001,_binary 'R\�/��<;ΰG\��Jt','16/3/2022','23:49',_binary '\�졦XT\�\��)�\�\�',_binary '\�C���\�8\�Q�$�\�<','approved'),(1044,_binary '1ea70447502a68acb66b90624aded8ff659df89db54f9820b128627899273c06',_binary 'd39db1af85d961f4e24fb63bd2bade88324c76c2c2f9f7abbc9e14dc93f3d95d',_binary '[i\�\r�>��s\�\"z�\�\r',_binary 'J�:S��\�\�Q\�\��\�I',_binary 'I\���nE�\�^Wn��Bw��0\�ie\�]x�\�`',1003,1001,_binary '\�Fn�<\�I&�cOQ_5�','16/3/2022','23:49',_binary '�,�\�&#P�F�|�',_binary '\�t\�E\�is�Za�\�����','approved'),(1045,_binary '30a01b6f7ea58feb9f33765824ca860ac8b69d1d6b8c3cc487995aca5884e955',_binary '1ea70447502a68acb66b90624aded8ff659df89db54f9820b128627899273c06',_binary '�Y]\�Sf��{忤',_binary '>�.��#]\��a=\�`',_binary '�\�{���7\�j�h�oT�U����T^\0K�Ѝ',1003,1001,_binary '\�꠭LX2�\�O�D��6L','16/3/2022','23:49',_binary 'U�\�\� \'\�\���\�w\�E',_binary '\�ND\�gEд�\���i','approved'),(1046,_binary '75a671517e686a0e00b40f1ceee39642012b9e5b418c03da7768f5f7b526614c',_binary '30a01b6f7ea58feb9f33765824ca860ac8b69d1d6b8c3cc487995aca5884e955',_binary '�T�\"ڢ%\�U/��Ng\�',_binary '��{���\�(�r�+\�s�',_binary '��L\�{�\r�N.\0B�����L\�;�Dsگ\�',1003,1001,_binary '-�3񇆨S��X~7xfm','16/3/2022','23:49',_binary '��\�\�\�U\�{�\�\�x\�',_binary '\�Љ�deR��_&��R','approved'),(1047,_binary 'd7014f6098622be70ceb14d8aa327dc06537cc54c993356f1c17a0f716e6cef0',_binary '75a671517e686a0e00b40f1ceee39642012b9e5b418c03da7768f5f7b526614c',_binary ':\rf\�\�\�\��}Sl��\\',_binary 'd4_ .\rhՙE3\�/9r',_binary 'y�a�\Z\��!\�\�s����\�/h:���Ѐ\�t˗q�',1003,1001,_binary '\'J�-��.�^i\�','16/3/2022','23:49',_binary '(����[\�]�0�',_binary '$v\�2|�Ri��%\�(N��','approved'),(1048,_binary '50a1255a2595e8b411db58fdea2df61f8822807bede732c0bc98a2ebb4339829',_binary 'd7014f6098622be70ceb14d8aa327dc06537cc54c993356f1c17a0f716e6cef0',_binary '\��>p\��\�\'}h��;�',_binary '�\�\�\�F	A|B唥�;',_binary '\����\0\��I\�)#B�d.\�W\�\�AD�SL@B',1003,1001,_binary '��ޝ#E��_S','16/3/2022','23:49',_binary '�q�)̃;�\�Z\Zi�@',_binary '�\";n��\�g]?���x\�','approved'),(1049,_binary 'a64783877814086b3950bd354595d4ce1b958f2ab257484a5fa3edca5c41d929',_binary '50a1255a2595e8b411db58fdea2df61f8822807bede732c0bc98a2ebb4339829',_binary 'x/\�bt�\��f\r\�\�y|',_binary '�E�$M��W��\�',_binary '>�<5\��;s\�01m\�S�\�Q#\Z\�S�\��,I\n',1003,1001,_binary '\�3��\�FV\�j���[i','16/3/2022','23:49',_binary '�80V)������fx�',_binary 'Q��r��|m_��\�\�>','approved'),(1050,_binary '592c8fdea3fdbbc7d241914ccd2e228fce053d77228128c6a2be1d60b536805d',_binary 'a64783877814086b3950bd354595d4ce1b958f2ab257484a5fa3edca5c41d929',_binary '�I_��\�j\06\�hM\�Gy',_binary '�\�g�Jĕmh\06pgu\\',_binary 'qJ�\�\�ۀ�ҡ����^�\�\n\�Jz\�Y \�F8a\n�',1003,1001,_binary 'qb5\\�\�\�O�2\���\�','16/3/2022','23:49',_binary 'v\�\�Y\�(\�(<�`s+:',_binary '\�A�6�6\�\�@c','approved'),(1051,_binary 'e25e4ec48f6af39570d563b122a47640fc3513872215a15fbb2fff43abd96d60',_binary '592c8fdea3fdbbc7d241914ccd2e228fce053d77228128c6a2be1d60b536805d',_binary 'f9ɞ\�\�@\�j�F',_binary '�d��\������	�jOR�',_binary '�լ�j˕>n\�ک\�f9\�,`8\�\��|���`�I�e',1003,1001,_binary '\�\n�H�\�;�h�F�d�','16/3/2022','23:49',_binary 'sQ��q�\�c\�3G�',_binary '���[j �\0��9+\�\�','approved'),(1052,_binary '655cd3c0deead20fbd4100ccd0b5080eb8359cb0a5f22f809fa9edf000e4d1c7',_binary 'e25e4ec48f6af39570d563b122a47640fc3513872215a15fbb2fff43abd96d60',_binary 'e.\�\�J^�sq\�s�z��>',_binary 'Zp\�#�\�	\�J\�\�\"��B',_binary '_\�{v�ԍ�5|��\��Լd�q\�\�\n龪',1003,1001,_binary '��\�d:)g�lA�\�\�\�','16/3/2022','23:49',_binary 'Q�X$n�.�����',_binary '\�\�2\�\ZH!T\�ج\�\�','approved'),(1053,_binary '7d4e468f8f5bc333e01e9587291480cc0d3e1124a013b4ba8bbcf2b54355fa8e',_binary '655cd3c0deead20fbd4100ccd0b5080eb8359cb0a5f22f809fa9edf000e4d1c7',_binary '�c�A��=R�\�@pI',_binary '�Ň\�\�\�GX\�\�\�C}2',_binary '�1W\�9\�܂�w�j|8\�ب�[�e\�f\�=}',1003,1001,_binary '5~�\�\�$�Y\�-HH�֦','16/3/2022','23:49',_binary '�\�1�c\���&b:/c\�',_binary '\nl��^Y\�_��\��\�&e','approved'),(1054,_binary '704bfc9a7bed70905f7ebe06b7c150fc3287e10900901d7d89cc0370d948e562',_binary '7d4e468f8f5bc333e01e9587291480cc0d3e1124a013b4ba8bbcf2b54355fa8e',_binary '\�Ħ\ZP\�D\�/\�\���4�',_binary '��8q�XHw��x�l�\�',_binary '�嘕�\�3\�$\�݁ϲtN߼�\�\�Բ͑8��\�',1003,1001,_binary '���:�vA\�?��\�\�\Z','16/3/2022','23:49',_binary '�$\�@A��O\�]٢\�p',_binary 'B1���,popV9^�','approved'),(1055,_binary '9e85084612ab6aa79cdcc1364316263f0b8125a1b4026c98ca4262e577679a7a',_binary '704bfc9a7bed70905f7ebe06b7c150fc3287e10900901d7d89cc0370d948e562',_binary '�\�K?II�\Z��\�\�c{M',_binary '�\�mo%A�\Z���*',_binary '��6\�`�w\�\�KY5�*�Wu9e3\'n0kf8D\�\�',1003,1001,_binary 'Y\�ܦA̾A��~�T','16/3/2022','23:49',_binary 'J\�\�v��g�+ys���\�',_binary 'R�A\0.P���`��N\�+','approved'),(1056,_binary '819069d8630062e5a76443544df555173d989b3242b3c3e031ceaabd7611be4e',_binary '9e85084612ab6aa79cdcc1364316263f0b8125a1b4026c98ca4262e577679a7a',_binary 'H\'\�\�\�wK��\�(/\�',_binary '�j�\�qS�a�̧���\�',_binary '��W�K\�{)7N�\Z\�:��i�\�F4.\'�\"\�\�?',1003,1001,_binary '\�1>�\"�\�\���\\�@\�','16/3/2022','23:49',_binary '�S�T�-	����\�Y',_binary '\�	|IB-m��˜bg\�&','approved'),(1057,_binary '02c76c54b0ee99db08edffeb5159365ce312d50faf1c259ee0876ecbfb46a104',_binary '819069d8630062e5a76443544df555173d989b3242b3c3e031ceaabd7611be4e',_binary '>S�ZQ�I*�r¼\�',_binary '���\�\��ߒ%�\� ˧�',_binary '%L{�`�0M~�D�۹�I{\�e?c�w \�>�\�',1003,1001,_binary 'b�\�j}\�*��D����D','16/3/2022','23:49',_binary '�\�\�r&\���\\��7\\',_binary 'ӵ+=�+\�\�\����Q�','approved'),(1058,_binary 'a4de3f620179a71358926c5ed958a0caf3a521bb507ee8e4cec61d3f19b6f9e3',_binary '02c76c54b0ee99db08edffeb5159365ce312d50faf1c259ee0876ecbfb46a104',_binary 'HX��-\\\r��-=�e\��\�',_binary '����\�q\���A+$;',_binary '�/�#B��iN�t�wV�I����\�@\��N.�k��\�',1003,1001,_binary 'z��\"H�\��\�@�\'�\�','16/3/2022','23:49',_binary '�vCPEN\��y޵�',_binary '�\�8\�\�l\0�S\rqu�','approved'),(1059,_binary '4742865f67f7d3031d33158c2df1e770cabd3df9fd1581a3d2c378047436624a',_binary 'a4de3f620179a71358926c5ed958a0caf3a521bb507ee8e4cec61d3f19b6f9e3',_binary 'hː\�\�\�\�e3�\�,T',_binary '\��n:�(�\�@�:%Q)0',_binary '\�3ss\�J\�_\"�,s�:\�S���\��\�\�)\�\�\�4�(�',1003,1001,_binary 'B\\r#\�����G/���','16/3/2022','23:49',_binary '\�\�`5?B\ZE��և\�&\r',_binary '�۽\���\�5\n�6\0	;�','approved'),(1060,_binary '1ec427e4932ac2f46c273f2e59a7e8d4677df88128f2e9c3ecd9a907f3dc3efc',_binary '4742865f67f7d3031d33158c2df1e770cabd3df9fd1581a3d2c378047436624a',_binary '��\�ȓ\�0\�\0\� ڗ',_binary '\�(�x1\�\0�5k\�:\�',_binary '\�\�\�!\�s�QgهϿ$���\�W^�) J\��\�8',1003,1001,_binary '���\�\�\�D%�W��=�','16/3/2022','23:49',_binary '\�4qp&�tۊ\��\�Y',_binary '\�\��rЭb\nS����','approved'),(1061,_binary '64032c9f13db13bea0eabb39d35709e5041d8d3995fff97ae6cf1a3660863ba7',_binary '1ec427e4932ac2f46c273f2e59a7e8d4677df88128f2e9c3ecd9a907f3dc3efc',_binary '���a����F\�s�f',_binary '�\�}2�͝s��9��|',_binary '/\'q�Bj\"ώ\�\�\�*\�\�}��i\�1\�\��\�',1003,1001,_binary '\�zsd/\"G7\"|?#�','16/3/2022','23:49',_binary 'p�jk�J\�;�	�B&��',_binary 'z�\r�r�	�\�Z�','approved'),(1062,_binary '7251551a7a8d5ecf0ebb0218d40536765c78dd16e1b39cde61ad73946d98e5aa',_binary '64032c9f13db13bea0eabb39d35709e5041d8d3995fff97ae6cf1a3660863ba7',_binary '�\�\������B=\�',_binary '?\\�7��Ag/�^t',_binary 'Q�l%r DC�\�IX\�b�-Z<ڬ`\Z\�\�\���\�;�\�',1003,1001,_binary 'A���\�\��\�\�\�\�!�I��','16/3/2022','23:49',_binary '�\�`\�B?X\�\�\�\���\"�',_binary '�\�U	o5*\�)9\�\��\�\�t','approved'),(1063,_binary 'a50af9f26166e5227cd2b7277a05a48a88cc5a6e76ede3df7458821190242ecc',_binary '7251551a7a8d5ecf0ebb0218d40536765c78dd16e1b39cde61ad73946d98e5aa',_binary 'ߏZ&�\�H 7=t�\��',_binary 'X\�\�\�<�\�]�T\�.\�\�z',_binary '��\�S^%P:f��\�\�Av�ް�-\�u�@����',1003,1001,_binary 'j\�u��F������\�','16/3/2022','23:49',_binary '\�\���U/xRU}:�',_binary '��8nGM=Y\�m\�<j/p','approved'),(1064,_binary '898fa8abf9685a3e49d85adf6bb380996fc82c6aca383a96aa86603344f439cc',_binary 'a50af9f26166e5227cd2b7277a05a48a88cc5a6e76ede3df7458821190242ecc',_binary '<�\�_ѫ�ǑUB\��1F',_binary '�A��x�\�O\����\�',_binary '/\�L項b9ڴ;��\'p\�K�\�h7c\�T\���>',1003,1001,_binary '�J�:����#t��\�','16/3/2022','23:49',_binary '��f#/�$t��\�\�\�q|',_binary '��7Ņ7�\�\�96$','approved'),(1065,_binary 'b0e47cf8db8c01025d2543b2c1491531461304ef7973859feaf9f816501ac52e',_binary '898fa8abf9685a3e49d85adf6bb380996fc82c6aca383a96aa86603344f439cc',_binary '\'�\�>qL8Տ�v�\�Ѹ�',_binary '$\�02\�a�M\"�\"\�',_binary '&{\n\���dv�+�\�y�L\�W\�N&\\ Z�ת�',1003,1001,_binary '\�lTގ\�d�ҹ���vq','17/3/2022','0:4',_binary '΍\�\�Z\�$\�\�\'�Tߚ',_binary '\�&\�fB���[Qb\�\��','approved'),(1066,_binary 'c094136d8034ff4301dc87ef188bab95061c688cca943927b187b30fcdd5d75e',_binary 'b0e47cf8db8c01025d2543b2c1491531461304ef7973859feaf9f816501ac52e',_binary '�q\�<|�����Z]D\�\�',_binary '�V��#5e�SO\���',_binary '\r>-\�GɁ��S\�;V/��\�[@�/\�\�\��[',1004,0,_binary '\�N筈����>P�w!�','20/4/2022','12:5',_binary '�t��\�\r\�2���N�.�',_binary ',��4ܯ�&\�\\J��խ','approved'),(1067,_binary 'b1e0d831fc0cbf3a8f7aa45de05cee628e1179ac88aee716b50bb32edb999cb4',_binary 'c094136d8034ff4301dc87ef188bab95061c688cca943927b187b30fcdd5d75e',_binary '�nJ�6\�jZ\�\��m�',_binary '1�;E\�\�7�F&',_binary '/�`pƅ�ڍ\�2�\���s�	��\�k#��!�',1006,0,_binary '�׃�\�,{�\�-�\�ݤ','20/4/2022','14:14',_binary '27.؋[�����ʾe',_binary '8��^�Ns6\�\�$��\�q','approved'),(1068,_binary '2acdba81096605019ea4b4a1d3ea72766f5289e08c85303f4065b2dfc4ec57eb',_binary 'b1e0d831fc0cbf3a8f7aa45de05cee628e1179ac88aee716b50bb32edb999cb4',_binary '��\n\'\�+nNٓ\"w+b\�)',_binary '�V�\0Kͅ�T�+���}�',_binary 'b���\���n�\"�\�\�\�\�$�-c\�$�N9\�1d�',1008,1001,_binary '%\�\�y\�ho�ٕI�˫:4','20/4/2022','14:37',_binary '=\����\�m뵥\��\�>',_binary '=Ck�0L�6C \�cHզ','approved');
/*!40000 ALTER TABLE `applicationtransactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `getapplications`
--

DROP TABLE IF EXISTS `getapplications`;
/*!50001 DROP VIEW IF EXISTS `getapplications`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `getapplications` AS SELECT 
 1 AS `docid`,
 1 AS `dhash`,
 1 AS `prevHash`,
 1 AS `userid`,
 1 AS `title`,
 1 AS `docdesc`,
 1 AS `dt`,
 1 AS `tm`,
 1 AS `skey`,
 1 AS `filepath`,
 1 AS `sts`,
 1 AS `formId`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `getapplicationtrans`
--

DROP TABLE IF EXISTS `getapplicationtrans`;
/*!50001 DROP VIEW IF EXISTS `getapplicationtrans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `getapplicationtrans` AS SELECT 
 1 AS `transId`,
 1 AS `dhash`,
 1 AS `prevHash`,
 1 AS `userid`,
 1 AS `title`,
 1 AS `docdesc`,
 1 AS `dt`,
 1 AS `tm`,
 1 AS `skey`,
 1 AS `filepath`,
 1 AS `sts`,
 1 AS `formId`,
 1 AS `appId`,
 1 AS `Name_exp_14`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'notary_bc2_db'
--

--
-- Dumping routines for database 'notary_bc2_db'
--
/*!50003 DROP PROCEDURE IF EXISTS `getApplications1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getApplications1`(in uid varchar(200))
begin
 select * from getApplications where userid=uid;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getApplicationsApproved` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getApplicationsApproved`(in uid varchar(200))
begin
 select * from getApplications where userid=uid and sts='approved';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getApplicationsPending` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getApplicationsPending`(in uid varchar(200))
begin
 select * from getApplications where userid=uid and sts='pending';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getApplicationsSubmitted` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getApplicationsSubmitted`(in uid varchar(200))
begin
 select * from getApplications where userid=uid and sts='submitted';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMaxIdApp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMaxIdApp`()
begin
select (ifnull(max(docid),1000)+1) as mxid from applications;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertApplication` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertApplication`(in userid1 varchar(200), in title1 text, in dt1 varchar(30), in tm1 varchar(200)
,docdesc1 varchar(300),in key1 varchar(200),in docpath1 varchar(200),in formid1 integer)
begin
declare mxid integer;
declare prevHash1 text;
IF EXISTS ((select dhash from applications where aes_decrypt(userid,docid)=userid1 and docid=(select max(docid) from applications where aes_decrypt(userid,docid)=userid1)))
 Then
  set prevHash1=(select dhash from applications where aes_decrypt(userid,docid)=userid1 and docid=(select max(docid) from applications where aes_decrypt(userid,docid)=userid1));
else
set prevHash1='NA';  
END if;
set mxid=(select ifnull(max(docid),1000) from applications);
set mxid=mxid+1;
insert into applications values(mxid,SHA2(concat(mxid,userid1),256),prevHash1,aes_encrypt(userid1,mxid),aes_encrypt(title1,mxid),formid1,aes_encrypt(docdesc1,mxid),dt1,tm1,aes_encrypt(key1,mxid),aes_encrypt(docpath1,mxid),'pending');
  
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertApplicationTrans` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertApplicationTrans`(in userid1 varchar(200), in title1 text, in dt1 varchar(30), in tm1 varchar(200)
,docdesc1 varchar(300),in key1 varchar(200),in docpath1 varchar(200),in formid1 integer,in appId1 integer,in offuid varchar(200),in sts1 varchar(200))
begin
declare mxid integer; 
declare prevHash1 text;
IF EXISTS ((select dhash from applicationtransactions where aes_decrypt(userid,transId)=userid1 and transId=(select max(transId) from applicationtransactions where aes_decrypt(userid,transId)=userid1)))
 Then
  set prevHash1=(select dhash from applicationtransactions where aes_decrypt(userid,transId)=userid1 and transId=(select max(transId) from applicationtransactions where aes_decrypt(userid,transId)=userid1));
else
set prevHash1='NA';  
END if;

set mxid=(select ifnull(max(transId),1000) from applicationtransactions);
set mxid=mxid+1;
insert into applicationtransactions values(mxid,SHA2(concat(mxid,userid1),256),prevHash1,aes_encrypt(userid1,mxid),aes_encrypt(offuid,mxid),aes_encrypt(title1,mxid),appId1,formid1,aes_encrypt(docdesc1,mxid),dt1,tm1,aes_encrypt(key1,mxid),aes_encrypt(docpath1,mxid),sts1);
update applications set sts=sts1 where docid=appId1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `notary_bc1_db`
--

USE `notary_bc1_db`;

--
-- Final view structure for view `getapplications`
--

/*!50001 DROP VIEW IF EXISTS `getapplications`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `getapplications` AS select `applications`.`docid` AS `docid`,`applications`.`dhash` AS `dhash`,`applications`.`prevHash` AS `prevHash`,aes_decrypt(`applications`.`userid`,`applications`.`docid`) AS `userid`,aes_decrypt(`applications`.`title`,`applications`.`docid`) AS `title`,aes_decrypt(`applications`.`docdesc`,`applications`.`docid`) AS `docdesc`,`applications`.`dt` AS `dt`,`applications`.`tm` AS `tm`,aes_decrypt(`applications`.`skey`,`applications`.`docid`) AS `skey`,aes_decrypt(`applications`.`filepath`,`applications`.`docid`) AS `filepath`,`applications`.`sts` AS `sts`,`applications`.`formId` AS `formId` from `applications` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `getapplicationtrans`
--

/*!50001 DROP VIEW IF EXISTS `getapplicationtrans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `getapplicationtrans` AS select `applicationtransactions`.`transId` AS `transId`,`applicationtransactions`.`dhash` AS `dhash`,`applicationtransactions`.`prevHash` AS `prevHash`,aes_decrypt(`applicationtransactions`.`userid`,`applicationtransactions`.`transId`) AS `userid`,aes_decrypt(`applicationtransactions`.`title`,`applicationtransactions`.`transId`) AS `title`,aes_decrypt(`applicationtransactions`.`docdesc`,`applicationtransactions`.`transId`) AS `docdesc`,`applicationtransactions`.`dt` AS `dt`,`applicationtransactions`.`tm` AS `tm`,aes_decrypt(`applicationtransactions`.`skey`,`applicationtransactions`.`transId`) AS `skey`,aes_decrypt(`applicationtransactions`.`filepath`,`applicationtransactions`.`transId`) AS `filepath`,`applicationtransactions`.`sts` AS `sts`,`applicationtransactions`.`formId` AS `formId`,`applicationtransactions`.`appId` AS `appId`,aes_decrypt(`applicationtransactions`.`processedBy`,`applicationtransactions`.`transId`) AS `user_userid` from `applicationtransactions` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `notarydb`
--

USE `notarydb`;

--
-- Current Database: `notary_ipfs_db`
--

USE `notary_ipfs_db`;

--
-- Final view structure for view `getdocuments`
--

/*!50001 DROP VIEW IF EXISTS `getdocuments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `getdocuments` AS select `documents`.`docid` AS `docid`,`documents`.`dhash` AS `dhash`,`documents`.`prevHash` AS `prevHash`,aes_decrypt(`documents`.`userid`,`documents`.`docid`) AS `userid`,aes_decrypt(`documents`.`title`,`documents`.`docid`) AS `title`,aes_decrypt(`documents`.`docdesc`,`documents`.`docid`) AS `docdesc`,`documents`.`dt` AS `dt`,`documents`.`tm` AS `tm`,aes_decrypt(`documents`.`skey`,`documents`.`docid`) AS `skey`,aes_decrypt(`documents`.`filepath`,`documents`.`docid`) AS `filepath` from `documents` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `notary_bc2_db`
--

USE `notary_bc2_db`;

--
-- Final view structure for view `getapplications`
--

/*!50001 DROP VIEW IF EXISTS `getapplications`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `getapplications` AS select `applications`.`docid` AS `docid`,`applications`.`dhash` AS `dhash`,`applications`.`prevHash` AS `prevHash`,aes_decrypt(`applications`.`userid`,`applications`.`docid`) AS `userid`,aes_decrypt(`applications`.`title`,`applications`.`docid`) AS `title`,aes_decrypt(`applications`.`docdesc`,`applications`.`docid`) AS `docdesc`,`applications`.`dt` AS `dt`,`applications`.`tm` AS `tm`,aes_decrypt(`applications`.`skey`,`applications`.`docid`) AS `skey`,aes_decrypt(`applications`.`filepath`,`applications`.`docid`) AS `filepath`,`applications`.`sts` AS `sts`,`applications`.`formId` AS `formId` from `applications` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `getapplicationtrans`
--

/*!50001 DROP VIEW IF EXISTS `getapplicationtrans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `getapplicationtrans` AS select `applicationtransactions`.`transId` AS `transId`,`applicationtransactions`.`dhash` AS `dhash`,`applicationtransactions`.`prevHash` AS `prevHash`,aes_decrypt(`applicationtransactions`.`userid`,`applicationtransactions`.`transId`) AS `userid`,aes_decrypt(`applicationtransactions`.`title`,`applicationtransactions`.`transId`) AS `title`,aes_decrypt(`applicationtransactions`.`docdesc`,`applicationtransactions`.`transId`) AS `docdesc`,`applicationtransactions`.`dt` AS `dt`,`applicationtransactions`.`tm` AS `tm`,aes_decrypt(`applicationtransactions`.`skey`,`applicationtransactions`.`transId`) AS `skey`,aes_decrypt(`applicationtransactions`.`filepath`,`applicationtransactions`.`transId`) AS `filepath`,`applicationtransactions`.`sts` AS `sts`,`applicationtransactions`.`formId` AS `formId`,`applicationtransactions`.`appId` AS `appId`,aes_decrypt(`applicationtransactions`.`processedBy`,`applicationtransactions`.`transId`) AS `Name_exp_14` from `applicationtransactions` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-20 14:47:39
