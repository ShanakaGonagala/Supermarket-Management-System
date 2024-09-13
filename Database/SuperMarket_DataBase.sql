CREATE DATABASE  IF NOT EXISTS `super_market_management_system` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `super_market_management_system`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: super_market_management_system
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_login` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_login`
--

LOCK TABLES `admin_login` WRITE;
/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
INSERT INTO `admin_login` VALUES ('admin','admin'),('Pamoda','admin'),('Hasara','admin'),('Shanaka','admin'),('Isira','admin');
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bills` (
  `Bill_No` char(5) NOT NULL,
  `EMP_ID` char(5) NOT NULL,
  `EMP_LastName` varchar(100) NOT NULL,
  `Bil_Amount` double(10,2) NOT NULL,
  PRIMARY KEY (`Bill_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES ('BN001','EMP01','Dewarathne',2630.00),('BN002','EMP02','Maligaspe',4740.00),('BN003','EMP04','Perera',700.00);
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cashier_login`
--

DROP TABLE IF EXISTS `cashier_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cashier_login` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashier_login`
--

LOCK TABLES `cashier_login` WRITE;
/*!40000 ALTER TABLE `cashier_login` DISABLE KEYS */;
INSERT INTO `cashier_login` VALUES ('user','user'),('Pamoda','user'),('Hasara','user'),('Shanaka','user'),('Isira','user');
/*!40000 ALTER TABLE `cashier_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_details`
--

DROP TABLE IF EXISTS `emp_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_details` (
  `EMP_ID` char(5) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Gender` char(1) NOT NULL,
  `NIC` char(12) NOT NULL,
  `Contact_No` char(10) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`EMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_details`
--

LOCK TABLES `emp_details` WRITE;
/*!40000 ALTER TABLE `emp_details` DISABLE KEYS */;
INSERT INTO `emp_details` VALUES ('EMP01','Pamoda','Dewarathne','F','200114756892','0762431890','Galle','Pamoda','user'),('EMP02','Hasara','Maligaspe','M','200123451397','0772456863','Galle','Hasara','user'),('EMP03','Shanaka','Gonagala','M','200003562976','0773624705','Radawana','Shanaka','user'),('EMP04','Isira','Perera','M','200201346792','0714587987','Kelaniya','Isira','user');
/*!40000 ALTER TABLE `emp_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_bpicks`
--

DROP TABLE IF EXISTS `product_bpicks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_bpicks` (
  `BP_ID` char(4) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Quantity` int NOT NULL,
  `Price` double(8,2) NOT NULL,
  PRIMARY KEY (`BP_ID`),
  CONSTRAINT `chk_BP_ID` CHECK ((`BP_ID` like _utf8mb4'BP%'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_bpicks`
--

LOCK TABLES `product_bpicks` WRITE;
/*!40000 ALTER TABLE `product_bpicks` DISABLE KEYS */;
INSERT INTO `product_bpicks` VALUES ('BP01','Glow & Lovely Face Wash 50g',21,570.00),('BP02','Ayush Turmeric Face Wash 50g',32,1000.00),('BP03','4ever Body Cream 100ml',28,650.00),('BP04','Chandanalepa Herbal Cream 40g',56,490.00),('BP05','Ponds Daycream 23g',11,680.00),('BP06','Janet Strawberry Lip Balm 3.5g',31,300.00),('BP07','Dove Body Lotion 100ml',30,1200.00);
/*!40000 ALTER TABLE `product_bpicks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_fmeat`
--

DROP TABLE IF EXISTS `product_fmeat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_fmeat` (
  `FM_ID` char(4) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Quantity` int NOT NULL,
  `Price` double(8,2) NOT NULL,
  PRIMARY KEY (`FM_ID`),
  CONSTRAINT `chk_FM_ID` CHECK ((`FM_ID` like _utf8mb4'FM%'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_fmeat`
--

LOCK TABLES `product_fmeat` WRITE;
/*!40000 ALTER TABLE `product_fmeat` DISABLE KEYS */;
INSERT INTO `product_fmeat` VALUES ('FM01','Chicken Full Breast Skinless 1kg',15,2200.00),('FM02','Chicken Drumstick 1kg',16,1980.00),('FM03','Chicken Liver 1kg',13,1380.00),('FM04','Pork Leg Bone 1kg',10,2660.00),('FM05','Pork Belly Boneless 1kg',8,2580.00),('FM06','Mutton Leg Boneless 1kg',12,7900.00),('FM07','Lamb Shoulder Chop 1kg',5,2830.00);
/*!40000 ALTER TABLE `product_fmeat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_hware`
--

DROP TABLE IF EXISTS `product_hware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_hware` (
  `HW_ID` char(4) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Quantity` int NOT NULL,
  `Price` double(8,2) NOT NULL,
  PRIMARY KEY (`HW_ID`),
  CONSTRAINT `chk_HW_ID` CHECK ((`HW_ID` like _utf8mb4'HW%'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_hware`
--

LOCK TABLES `product_hware` WRITE;
/*!40000 ALTER TABLE `product_hware` DISABLE KEYS */;
INSERT INTO `product_hware` VALUES ('HW01','Vim Dishwash Liquid Lime 500ml',11,450.00),('HW02','Lifeboy Soap Kohomba 100g',72,160.00),('HW03','Sunlight Soap 110g',87,150.00),('HW04','Clogard Toothpaste 200g',40,360.00),('HW05','Dettol Handwash 200ml ',55,580.00),('HW06','Panasonic LED Bulb 9W',23,1380.00);
/*!40000 ALTER TABLE `product_hware` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_juice`
--

DROP TABLE IF EXISTS `product_juice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_juice` (
  `J_ID` char(4) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Quantity` int NOT NULL,
  `Price` double(8,2) NOT NULL,
  PRIMARY KEY (`J_ID`),
  CONSTRAINT `chk_J_ID` CHECK ((`J_ID` like _utf8mb4'JU%'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_juice`
--

LOCK TABLES `product_juice` WRITE;
/*!40000 ALTER TABLE `product_juice` DISABLE KEYS */;
INSERT INTO `product_juice` VALUES ('JU01','My Juice Fruit Drink Mango 1L',20,600.00),('JU02','Kist Nectar Apple 1L',16,580.00),('JU03','Smack Nectar Aloevera 1L',11,540.00),('JU04','Kotmale Chololate Milk 170ml',52,100.00),('JU05','Nestle Milo 180ml',35,130.00),('JU06','Fanta Orange 1.5L',19,380.00);
/*!40000 ALTER TABLE `product_juice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_snacks`
--

DROP TABLE IF EXISTS `product_snacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_snacks` (
  `S_ID` char(4) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Quantity` int NOT NULL,
  `Price` double(8,2) NOT NULL,
  PRIMARY KEY (`S_ID`),
  CONSTRAINT `chk_S_ID` CHECK ((`S_ID` like _utf8mb4'SN%'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_snacks`
--

LOCK TABLES `product_snacks` WRITE;
/*!40000 ALTER TABLE `product_snacks` DISABLE KEYS */;
INSERT INTO `product_snacks` VALUES ('SN01','Mr.Potato Crisps Tin 150g',28,1400.00),('SN02','Uswatte Tipitip Cheese Balls 50g',16,200.00),('SN03','Runcrips Casava Chips Spicy 100g',26,250.00),('SN04','Scan Jumbo Peanuts 35g',48,150.00),('SN05','Roasted Cashew Nuts 250g',10,1550.00);
/*!40000 ALTER TABLE `product_snacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_vegetables`
--

DROP TABLE IF EXISTS `product_vegetables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_vegetables` (
  `V_ID` char(4) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Quantity` int NOT NULL,
  `Price` double(8,2) NOT NULL,
  PRIMARY KEY (`V_ID`),
  CONSTRAINT `chk_V_ID` CHECK ((`V_ID` like _utf8mb4'VG%'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_vegetables`
--

LOCK TABLES `product_vegetables` WRITE;
/*!40000 ALTER TABLE `product_vegetables` DISABLE KEYS */;
INSERT INTO `product_vegetables` VALUES ('VG01','Packed-Big Onions 1kg',23,300.00),('VG02','Carrot 1kg',27,220.00),('VG03','Mushroom 200g',28,180.00),('VG04','Potatoes 1kg',38,300.00),('VG05','Organic Gotukola 1 unit',20,140.00);
/*!40000 ALTER TABLE `product_vegetables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `no` int NOT NULL AUTO_INCREMENT,
  `Bill_No` char(5) NOT NULL,
  `EMP_ID` char(5) NOT NULL,
  `PID` char(4) NOT NULL,
  `Qty` int NOT NULL,
  `Total` double(10,2) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-26 12:48:01
