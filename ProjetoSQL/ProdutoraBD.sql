-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: projeto_bd
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `CNPJ` varchar(14) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CNPJ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('11111111000111','Cliente 1','(11) 1111-1111'),('22222222000222','Cliente 2','(22) 2222-2222'),('33333333000333','Cliente 3','(33) 3333-3333'),('44444444000444','Cliente 4','(44) 4444-4444'),('55555555000555','Cliente 5','(55) 5555-5555'),('66666666000666','Cliente 6','(66) 6666-6666');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipamento`
--

DROP TABLE IF EXISTS `equipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipamento` (
  `ID` int NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipamento`
--

LOCK TABLES `equipamento` WRITE;
/*!40000 ALTER TABLE `equipamento` DISABLE KEYS */;
INSERT INTO `equipamento` VALUES (1,'Câmera 4K'),(2,'Microfone Shotgun'),(3,'Tripé'),(4,'Luz LED'),(5,'Drone'),(6,'Lente Grande Angular'),(7,'Microfone de Lapela'),(8,'Estabilizador de Câmera'),(9,'Softbox de Iluminação'),(10,'Gravador de Áudio');
/*!40000 ALTER TABLE `equipamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `Matricula` int NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Cargo` varchar(100) DEFAULT NULL,
  `Endereco` varchar(100) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `Matricula_Chefe` int DEFAULT NULL,
  PRIMARY KEY (`Matricula`),
  KEY `Matricula_Chefe` (`Matricula_Chefe`),
  CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`Matricula_Chefe`) REFERENCES `funcionario` (`Matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'João Silva','Diretor','Rua X, 789, São Paulo','(11) 5555-5555',NULL),(2,'Maria Oliveira','Roteirista','Avenida Y, 101, Rio de Janeiro','(22) 6666-6666',1),(3,'Pedro Santos','Assistente','Rua Z, 111, São Paulo','(11) 7777-7777',1),(4,'Ana Souza','Editor de Vídeo','Avenida W, 202, Rio de Janeiro','(22) 8888-8888',1),(5,'Laura Santos','Assistente','Rua Q, 789, São Paulo','(11) 9999-9999',1),(6,'Bruno Oliveira','Editor de Vídeo','Avenida T, 101, Rio de Janeiro','(22) 1010-1010',1),(7,'Julia Silva','Roteirista','Rua W, 111, São Paulo','(11) 1212-1212',1),(8,'Lucas Souza','Assistente','Avenida X, 202, Rio de Janeiro','(22) 1313-1313',1);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario_projeto`
--

DROP TABLE IF EXISTS `funcionario_projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario_projeto` (
  `Matricula_Funcionario` int NOT NULL,
  `ID_Projeto` int NOT NULL,
  `Data_entrada` date DEFAULT NULL,
  `Data_Saida` date DEFAULT NULL,
  PRIMARY KEY (`Matricula_Funcionario`,`ID_Projeto`),
  KEY `ID_Projeto` (`ID_Projeto`),
  CONSTRAINT `funcionario_projeto_ibfk_1` FOREIGN KEY (`Matricula_Funcionario`) REFERENCES `funcionario` (`Matricula`),
  CONSTRAINT `funcionario_projeto_ibfk_2` FOREIGN KEY (`ID_Projeto`) REFERENCES `projeto` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario_projeto`
--

LOCK TABLES `funcionario_projeto` WRITE;
/*!40000 ALTER TABLE `funcionario_projeto` DISABLE KEYS */;
INSERT INTO `funcionario_projeto` VALUES (2,1,'2023-01-10','2023-02-20'),(3,1,'2023-01-15','2023-02-25'),(3,3,'2023-05-05','2023-05-15'),(4,2,'2023-03-01','2023-04-15'),(4,4,'2023-06-01','2023-06-10'),(5,5,'2023-07-10','2023-08-20'),(6,6,'2023-08-01','2023-09-15'),(7,7,'2023-09-05','2023-09-15'),(8,8,'2023-10-01','2023-10-10');
/*!40000 ALTER TABLE `funcionario_projeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtora`
--

DROP TABLE IF EXISTS `produtora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtora` (
  `CNPJ` varchar(14) NOT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `Endereco` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CNPJ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtora`
--

LOCK TABLES `produtora` WRITE;
/*!40000 ALTER TABLE `produtora` DISABLE KEYS */;
INSERT INTO `produtora` VALUES ('12345678000100','(11) 1234-5678','Rua A, 123, São Paulo');
/*!40000 ALTER TABLE `produtora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projeto`
--

DROP TABLE IF EXISTS `projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projeto` (
  `ID` int NOT NULL,
  `Tipo` varchar(50) DEFAULT NULL,
  `Genero` varchar(50) DEFAULT NULL,
  `Titulo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projeto`
--

LOCK TABLES `projeto` WRITE;
/*!40000 ALTER TABLE `projeto` DISABLE KEYS */;
INSERT INTO `projeto` VALUES (1,'Documentário','História','Documentário Histórico'),(2,'Longa','Drama','O Último Suspiro'),(3,'Videoclipe','Pop','Cantarolando'),(4,'Curta','Comédia','Rindo à Toa'),(5,'Documentário','Ciência','Explorando o Universo'),(6,'Longa','Ação','A Grande Aventura'),(7,'Videoclipe','Rock','Caminhos do Rock'),(8,'Curta','Suspense','Segredos do Passado');
/*!40000 ALTER TABLE `projeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projeto_equipamento`
--

DROP TABLE IF EXISTS `projeto_equipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projeto_equipamento` (
  `ID_Projeto` int NOT NULL,
  `ID_Equipamento` int NOT NULL,
  `Data_Locacao` date DEFAULT NULL,
  `Data_Devolucao` date DEFAULT NULL,
  PRIMARY KEY (`ID_Projeto`,`ID_Equipamento`),
  KEY `ID_Equipamento` (`ID_Equipamento`),
  CONSTRAINT `projeto_equipamento_ibfk_1` FOREIGN KEY (`ID_Projeto`) REFERENCES `projeto` (`ID`),
  CONSTRAINT `projeto_equipamento_ibfk_2` FOREIGN KEY (`ID_Equipamento`) REFERENCES `equipamento` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projeto_equipamento`
--

LOCK TABLES `projeto_equipamento` WRITE;
/*!40000 ALTER TABLE `projeto_equipamento` DISABLE KEYS */;
INSERT INTO `projeto_equipamento` VALUES (1,1,'2023-01-10','2023-02-20'),(1,2,'2023-01-10','2023-02-20'),(2,1,'2023-03-01','2023-04-15'),(2,3,'2023-03-01','2023-04-15'),(3,1,'2023-05-05','2023-05-15'),(4,4,'2023-06-01','2023-06-10'),(5,6,'2023-07-10','2023-08-20'),(5,7,'2023-07-10','2023-08-20'),(6,8,'2023-08-01','2023-09-15'),(6,9,'2023-08-01','2023-09-15'),(7,10,'2023-09-05','2023-09-15'),(8,9,'2023-10-01','2023-10-10');
/*!40000 ALTER TABLE `projeto_equipamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-19 23:40:01
