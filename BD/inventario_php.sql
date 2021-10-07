-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: inventario_php
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulos` (
  `idArticulo` int NOT NULL AUTO_INCREMENT,
  `idCategoria` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Imagen` varchar(45) DEFAULT NULL,
  `slug_url` varchar(45) DEFAULT NULL,
  `Texto_Corto` varchar(45) DEFAULT NULL,
  `Texto_Largo` text,
  `Fecha_Registro` datetime NOT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idArticulo`),
  KEY `idCategoria_idx` (`idCategoria`),
  CONSTRAINT `idCategoria` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES (1,1,'RES CARNE PARA GUISAR 500 G',NULL,NULL,NULL,NULL,'2021-10-04 00:00:00',NULL),(2,1,'RES CARNE PARA FREIR 500 G',NULL,NULL,NULL,NULL,'2021-10-04 00:00:00',NULL),(3,1,'RES CARNE MOLIDA 500 G 90/10',NULL,NULL,NULL,NULL,'2021-10-04 00:00:00',NULL),(4,2,'CEBOLLA CABEZONA BLANCA X KG',NULL,NULL,NULL,NULL,'2021-10-04 00:00:00',NULL),(5,2,'BANANO MADURO X KG',NULL,NULL,NULL,NULL,'2021-10-04 00:00:00',NULL),(6,2,'ZANAHORIA PRIMERA X KILO',NULL,NULL,NULL,NULL,'2021-10-04 00:00:00',NULL),(7,3,'PONQUE RAMO TRADICIONAL 230 G',NULL,NULL,NULL,NULL,'2021-10-04 00:00:00',NULL),(8,3,'PAN ROLLO OLIMPICA 450 G',NULL,NULL,NULL,NULL,'2021-10-04 00:00:00',NULL),(9,3,'PAN CON QUESO OLIMPICA 400 G',NULL,NULL,NULL,NULL,'2021-10-04 00:00:00',NULL),(10,4,'HUEVO SANTA ANITA A ROJO 30 UND PANAL',NULL,NULL,NULL,'','2021-10-04 00:00:00',NULL),(11,4,'QUESO MOZZARELLA MEDALLA ORO TAJADO 250g',NULL,NULL,NULL,'','2021-10-04 00:00:00',NULL),(12,4,'LECHE UHT COLANTA ENTERA 1.1 L X6',NULL,NULL,NULL,'','2021-10-04 00:00:00',NULL),(13,5,'ACEITE DE MEZCLA VEGETAL MEDALLA DE ORO 3 L',NULL,NULL,NULL,'','2021-10-04 00:00:00',NULL),(14,5,'PASTA ESPAGUETTI DORIA 1 Kg',NULL,NULL,NULL,'','2021-10-04 00:00:00',NULL),(15,5,'GALLETA SALTIN NOEL ROJO TACO X 3 300 G',NULL,NULL,NULL,'','2021-10-04 00:00:00',NULL),(18,1,'POLLO PECHUGA MERCAPOLLO X KG',NULL,NULL,NULL,NULL,'2021-10-05 00:00:00',NULL);
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `Categoria` varchar(45) NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Carnes','Carnes y Embutidos'),(2,'Frutas','Frutas y Verduras'),(3,'Panaderia','Panaderia y dulces'),(4,'Lacteos','Huevos, lacteos y cafe'),(5,'Despensa','Aceite, pasta y legumbres');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `idRole` int NOT NULL AUTO_INCREMENT,
  `nameRole` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`idRole`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador','Permite administrar  los usuarios y datos'),(2,'Usuario','Permite gestionar los articulos');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_Usuario` int NOT NULL AUTO_INCREMENT,
  `idRole` int NOT NULL,
  `Primer_Nombre` varchar(45) NOT NULL,
  `Segundo_Nombre` varchar(45) DEFAULT NULL,
  `Primer_Apellido` varchar(45) NOT NULL,
  `Segundo_Apelido` varchar(45) DEFAULT NULL,
  `Email` varchar(45) NOT NULL,
  `Contraseña` varchar(45) NOT NULL,
  `Celular` varchar(45) DEFAULT NULL,
  `Fecha_Registro` datetime NOT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_Usuario`),
  KEY `idRole_idx` (`idRole`),
  CONSTRAINT `idRole` FOREIGN KEY (`idRole`) REFERENCES `roles` (`idRole`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,1,'Sandra',NULL,'Silva','Silva','sdra051997@gmail.com','Colombia2020*','3172546512','2021-10-04 00:00:00',NULL),(2,2,'Laura','Natalia','Rodriguez',NULL,'laurarod@gmail.com','Colombia2020-','3013626845','2021-10-04 00:00:00',NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-06 18:56:29
