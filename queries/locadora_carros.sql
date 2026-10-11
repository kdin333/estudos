-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: locadora_carros
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `aluguel`
--

DROP TABLE IF EXISTS `aluguel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluguel` (
  `id_aluguel` int NOT NULL AUTO_INCREMENT,
  `data_aluguel` date NOT NULL,
  `devolucao_aluguel` date NOT NULL,
  `id_cliente` int NOT NULL,
  `id_inventario` int NOT NULL,
  `id_funcionario` int NOT NULL,
  PRIMARY KEY (`id_aluguel`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_inventario` (`id_inventario`),
  KEY `id_funcionario` (`id_funcionario`),
  CONSTRAINT `aluguel_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `aluguel_ibfk_2` FOREIGN KEY (`id_inventario`) REFERENCES `inventario` (`id_inventario`),
  CONSTRAINT `aluguel_ibfk_3` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionarios` (`id_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluguel`
--

LOCK TABLES `aluguel` WRITE;
/*!40000 ALTER TABLE `aluguel` DISABLE KEYS */;
INSERT INTO `aluguel` VALUES (1,'2026-06-28','2026-07-01',1,1,1),(2,'2026-07-10','2026-07-15',1,7,2),(3,'2026-07-25','2026-07-28',1,12,3),(4,'2026-06-30','2026-07-03',2,4,2),(5,'2026-07-14','2026-07-18',2,9,4),(6,'2026-07-26','2026-07-30',2,15,1),(7,'2026-06-29','2026-07-02',3,2,5),(8,'2026-07-12','2026-07-17',3,8,6),(9,'2026-07-24','2026-07-29',3,13,2),(10,'2026-07-01','2026-07-04',4,5,3),(11,'2026-07-16','2026-07-19',4,10,1),(12,'2026-07-27','2026-07-31',4,16,4),(13,'2026-07-02','2026-07-05',5,3,5),(14,'2026-07-17','2026-07-20',5,11,2),(15,'2026-07-29','2026-08-01',5,14,6),(16,'2026-07-03','2026-07-06',6,6,1),(17,'2026-07-18','2026-07-21',6,7,3),(18,'2026-07-30','2026-08-02',6,17,4);
/*!40000 ALTER TABLE `aluguel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cliente_veiculo_valor`
--

DROP TABLE IF EXISTS `cliente_veiculo_valor`;
/*!50001 DROP VIEW IF EXISTS `cliente_veiculo_valor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cliente_veiculo_valor` AS SELECT 
 1 AS `id_aluguel`,
 1 AS `nome`,
 1 AS `sobrenome`,
 1 AS `nome_marca`,
 1 AS `modelo`,
 1 AS `valor`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Andre','Iacono','Rua 1'),(2,'Ricardo','Pinheiro','Rua 2'),(3,'Gloria','Pinheiro','Rua 3'),(4,'Aparecido','Lima','Rua 4'),(5,'Marcela','Marques','Rua 5'),(6,'Aquiles','Silva','Rua 6');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `id_funcionario` int NOT NULL AUTO_INCREMENT,
  `nome_funcionario` varchar(100) NOT NULL,
  `sobrenome_funcionario` varchar(100) NOT NULL,
  `admissao` date NOT NULL,
  `demissao` date DEFAULT NULL,
  `id_loja` int NOT NULL,
  PRIMARY KEY (`id_funcionario`),
  KEY `id_loja` (`id_loja`),
  CONSTRAINT `funcionarios_ibfk_1` FOREIGN KEY (`id_loja`) REFERENCES `lojas` (`id_loja`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'Carlos','Silva','2022-01-10',NULL,1),(2,'Mariana','Oliveira','2022-05-18',NULL,1),(3,'Lucas','Santos','2021-09-03','2024-02-28',2),(4,'Fernanda','Costa','2023-03-12',NULL,2),(5,'João','Pereira','2020-11-25','2025-01-15',3),(6,'Amanda','Almeida','2024-04-08','2024-04-09',3),(7,'Rafael','Souza','2023-07-20',NULL,1);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `id_inventario` int NOT NULL AUTO_INCREMENT,
  `modelo` varchar(50) NOT NULL,
  `transmissao` varchar(50) NOT NULL,
  `motor` varchar(50) NOT NULL,
  `combustivel` varchar(50) NOT NULL,
  `status` enum('Disponível','Alugado','Manutenção') DEFAULT 'Disponível',
  `id_marca` int NOT NULL,
  PRIMARY KEY (`id_inventario`),
  KEY `id_marca` (`id_marca`),
  CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1,'Gol','Manual','1.6','Flex','Disponível',1),(2,'Jetta GLI','Automática','2.0 Turbo','Gasolina','Disponível',1),(3,'Polo','Manual','1.0 TSI','Flex','Disponível',1),(4,'Onix','Manual','1.0 Turbo','Flex','Disponível',2),(5,'Cruze','Automática','1.4 Turbo','Flex','Disponível',2),(6,'S10','Automática','2.8 Turbo Diesel','Diesel','Disponível',2),(7,'BR-800','Manual','0.8','Gasolina','Disponível',3),(8,'Supermini','Manual','0.8','Gasolina','Disponível',3),(9,'320i','Automática','2.0 Turbo','Gasolina','Disponível',4),(10,'X1','Automática','2.0 Turbo','Flex','Disponível',4),(11,'M3','Automática','3.0 Turbo','Gasolina','Disponível',4),(12,'911 Carrera','Automática','3.0 Biturbo','Gasolina','Disponível',5),(13,'Cayenne','Automática','3.0 V6','Gasolina','Disponível',5),(14,'Macan','Automática','2.0 Turbo','Gasolina','Disponível',5),(15,'Civic','Automática','2.0','Flex','Disponível',6),(16,'HR-V','CVT','1.5','Flex','Disponível',6),(17,'City','CVT','1.5','Flex','Disponível',6);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lojas`
--

DROP TABLE IF EXISTS `lojas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lojas` (
  `id_loja` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `rua_numero` varchar(100) NOT NULL,
  PRIMARY KEY (`id_loja`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lojas`
--

LOCK TABLES `lojas` WRITE;
/*!40000 ALTER TABLE `lojas` DISABLE KEYS */;
INSERT INTO `lojas` VALUES (1,'Loja Centro','São Paulo','São Paulo','Av. Paulista, 1000'),(2,'Loja Norte','São Paulo','São Paulo','Av. Cruzeiro do Sul, 2500'),(3,'Loja Sul','São Paulo','São Paulo','Av. Interlagos, 450');
/*!40000 ALTER TABLE `lojas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `id_marca` int NOT NULL AUTO_INCREMENT,
  `nome_marca` varchar(50) NOT NULL,
  `origem` varchar(50) NOT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'Volkswagen','Alemanha'),(2,'Chevrolet','Estados Unidos'),(3,'Gurgel','Brasil'),(4,'BMW','Alemanha'),(5,'Porsche','Alemanha'),(6,'Honda','Japão');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamentos`
--

DROP TABLE IF EXISTS `pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamentos` (
  `id_pagamento` int NOT NULL AUTO_INCREMENT,
  `valor` decimal(10,2) NOT NULL,
  `data_pagamento` date NOT NULL,
  `id_aluguel` int NOT NULL,
  PRIMARY KEY (`id_pagamento`),
  KEY `id_aluguel` (`id_aluguel`),
  CONSTRAINT `pagamentos_ibfk_1` FOREIGN KEY (`id_aluguel`) REFERENCES `aluguel` (`id_aluguel`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamentos`
--

LOCK TABLES `pagamentos` WRITE;
/*!40000 ALTER TABLE `pagamentos` DISABLE KEYS */;
INSERT INTO `pagamentos` VALUES (1,150.00,'2026-07-01',1),(2,320.50,'2026-07-15',2),(3,89.90,'2026-07-28',3),(4,210.00,'2026-07-03',4),(5,175.75,'2026-07-18',5),(6,450.00,'2026-07-30',6),(7,99.90,'2026-07-02',7),(8,280.00,'2026-07-17',8),(9,360.40,'2026-07-29',9),(10,500.00,'2026-07-04',10),(11,220.00,'2026-07-19',11),(12,185.50,'2026-07-31',12),(13,130.00,'2026-07-05',13),(14,275.90,'2026-07-20',14),(15,410.00,'2026-08-01',15),(16,160.00,'2026-07-06',16),(17,299.99,'2026-07-21',17),(18,120.00,'2026-08-02',18);
/*!40000 ALTER TABLE `pagamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `cliente_veiculo_valor`
--

/*!50001 DROP VIEW IF EXISTS `cliente_veiculo_valor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cliente_veiculo_valor` AS select `alu`.`id_aluguel` AS `id_aluguel`,`cli`.`nome` AS `nome`,`cli`.`sobrenome` AS `sobrenome`,`mar`.`nome_marca` AS `nome_marca`,`inv`.`modelo` AS `modelo`,`pag`.`valor` AS `valor` from ((((`aluguel` `alu` join `clientes` `cli` on((`alu`.`id_cliente` = `cli`.`id_cliente`))) join `inventario` `inv` on((`alu`.`id_inventario` = `inv`.`id_inventario`))) join `marcas` `mar` on((`inv`.`id_marca` = `mar`.`id_marca`))) join `pagamentos` `pag` on((`alu`.`id_aluguel` = `pag`.`id_aluguel`))) */;
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

-- Dump completed on 2026-10-11 16:13:06
