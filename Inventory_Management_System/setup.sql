UNLOCK TABLES;
DROP DATABASE IF EXISTS `inventory`;
CREATE DATABASE  IF NOT EXISTS `inventory` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `inventory`;

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

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `productcode` varchar(45) NOT NULL,
  `productname` varchar(45) NOT NULL,
  `costprice` double NOT NULL,
  `totalprice` varchar(45) NOT NULL,
  `supplier` varchar(45) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `productcode_UNIQUE` (`productcode`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'6220','Salad Mix 4/5#',28.95,28.95,'Brigotta',3),(2,'776','Banana*Petite*150ct STG6 Yello',29.95,29.95,'Brigotta',1),(3,'3540','Cucumber, Super Select',1.25,5.00,'Brigotta',4),(4,'3365','Carrot, Mini Peel 200ct.',43.95,43.95,'Brigotta',1),(5,'48990','Dorito Tortilla Chip Nachochse R',27.36,54.72,'Maplevale',2),(6,'ML516721','144/1.24OZ Oatmeal Choc Chip Bar',50.85,50.85,'Latina',1),(7,'37024','44/4.23OZ Ardmore 100% Fruit Punch',13.78,206.70,'Latina',15),(8,'003765','DI WHI STK RL 6P 15Z',2.04,44.88,'Bimbo',22);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `purchaseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseinfo` (
  `purchaseID` int NOT NULL AUTO_INCREMENT,
  `suppliercode` varchar(45) NOT NULL,
  `productcode` varchar(45) NOT NULL,
  `productname` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `costprice` double NOT NULL,
  `totalcost` varchar(45) NOT NULL,
  `supplier` varchar(45) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`purchaseID`)
) ENGINE=InnoDB AUTO_INCREMENT=1012 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `purchaseinfo` WRITE;
/*!40000 ALTER TABLE `purchaseinfo` DISABLE KEYS */;
INSERT INTO `purchaseinfo` VALUES (1001,'4','6220','Salad Mix 4/5#','Wed Jan 14 00:15:19 IST 2023',4,12,'Brigiotta',4),(1002,'4','776','Banana*Petite*150ct STG6 Yello','Wed Jan 14 00:15:19 IST 2023',4,12,'Brigiotta',3),(1003,'4','3540','Cucumber, Super Select','Wed Jan 14 00:15:19 IST 2023',4,12,'Brigiotta',3),(1004,'3','48990','Dorito Tortilla Chip Nachochse R','Wed Jan 14 00:15:19 IST 2023',4,12,'Maplevalesid',3);
/*!40000 ALTER TABLE `purchaseinfo` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `salesinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesinfo` (
  `salesid` int NOT NULL AUTO_INCREMENT,
  `date` varchar(45) NOT NULL,
  `productcode` varchar(45) NOT NULL,
  `productname` varchar(45) NOT NULL,
  `quantity` int NOT NULL,
  `soldby` varchar(45) NOT NULL,
  PRIMARY KEY (`salesid`)
) ENGINE=InnoDB AUTO_INCREMENT=2013 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `salesinfo` WRITE;
/*!40000 ALTER TABLE `salesinfo` DISABLE KEYS */;
INSERT INTO `salesinfo` VALUES (2001,'Tue Sep 26 23:12:40 IST 2023','6220','Salad Mix 4/5#',1,'Trial Admin'),(2002,'Tue Sep 26 23:12:40 IST 2023','776','Banana*Petite*150ct STG6 Yello',2,'Trial Admin');
/*!40000 ALTER TABLE `salesinfo` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `suppliercode` varchar(45) NOT NULL,
  `suppliername` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `repname` varchar(45) NOT NULL,
  `repphone` varchar(10) NOT NULL,
  `account` varchar(45) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=409 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'1','Bimbo','Horsham, PA','18009840989','John','1234567','12345'),(2,'2','Latina','Cheektowaga, NY','7166568400','John','1234567','12345'),(3,'3','Maplevale','Falconer, NY','7164834000','John','1234567','12345'),(4,'4','Brigiotta','Jamestown, NY','7164831916','John','1234567','12345');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `userlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlogs` (
  `username` varchar(45) NOT NULL,
  `in_time` varchar(45) NOT NULL,
  `out_time` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `usertype` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Trial Admin','Local','9876543210','root','root','ADMINISTRATOR'),(2,'Trial Employee','Local','1122334455','emp1','emp1','EMPLOYEE');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

