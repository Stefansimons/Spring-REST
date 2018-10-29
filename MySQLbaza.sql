-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: biblioteka
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `authors` (
  `authorID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  PRIMARY KEY (`authorID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (2,'Mario','Vargas Ljosa'),(3,'Fjodor','Mihajlovic Dostojevski'),(4,'Lav','Nikolajevic Tolstoj'),(5,'Ivo','Andric'),(6,'Dobrica','Cosic'),(7,'Stevan','Sremac');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `books` (
  `bookID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `description` varchar(500) NOT NULL,
  `authorID` int(11) NOT NULL,
  PRIMARY KEY (`bookID`),
  KEY `fk_books_authors1_idx` (`authorID`),
  CONSTRAINT `fk_books_authors1` FOREIGN KEY (`authorID`) REFERENCES `authors` (`authorid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (2,'Zelena kuca','U Pijuri, pustinji u peruanskom priobalju, jedan starac, don Anselmo, podiže zelenu kuću, kuću uživanja. Mnogi će je posećivati i širiti priču o razvratnim uslugama koje su tu pronašli sve dok Zelena kuća ne preraste u mit.',2),(3,'Zlocin i kazna','Rodion Romanovič Raskoljnikov, siromašni student, živi na trošnom tavanu u propaloj zgradi u Petrogradu. Bolešljiv je, sav u dronjcima, ali je veoma naočit i inteligentan. Jednoga dana razvio je teoriju po kojoj izuzetni ljudi imaju prava da počine zločin ukoliko je to za dobrobit čovečanstva. Kako bi do tančina isplanirao zločin, Raskoljnikov posećuje staricu gde zalaže svoj sat kako bi dobio novac zauzvrat.',3),(4,'Rat i mir','Roman se bavi životom nekoliko aristokratskih ruskih obitelji: Bezuhov, Bolkonski i Rostov te njihovim sudjelovanjem u povijesnom razdoblju od 1805. do 1813. godine, posebno u vrijeme Napoleonove invazije na Rusiju. Tekst je podijeljen u četiri knjige (petnaest dijelova) i dva epiloga.',4),(5,'Ana Karenjina','Glavna tema Ane Karenjine je problem braka, ljubavi i preljube osvetljen sa svih aspekata – između traganja za ličnom srećom i idealom, društvenih konvencija i moralnog zakona.',4),(6,'Na Drini cuprija','Roman Na Drini ćuprija je najpoznatije delo našeg nobelovca Ive Andrića. U romanu se radnja odigrava oko mosta na Drini u Višegradu. Na početku romana Andrić objašnjava kako su se ljudi snalazili dok mosta nije bilo, izgradnja most i kasnije životne priče ljudi koji su živeli oko njega.',5),(7,'Aska i vuk','Aska je neobična ovčica iz ovčijeg sveta na strmim Livadama koja je volela balet i želela da postane poznata balerina.',5),(8,'Prokleta avlija','Roman Prokleta avlija je napisao naš poznati nobelovac Ivo Andrić. U ovom delu Andrić piše o fra Petru. On je otišao poslom u Istanbul, gde je kasnije bio uhapšen i poslat u zatvor Deposito, poznat po imenu Prokleta avlija.',5),(9,'Koreni','“Koreni” je roman Dobrice Ćosića, izašao 1954. godine. Spada u društveno-istorijski roman te nam verno prikazuje događaje u porodici Katić, kao i ekonomske i političke prilike Srbije s kraja 19. veka.',6),(10,'Vreme smrti','Radnja romana smještena je u središnju Srbiju u vrijeme neposredno prije i početkom Prvog svjetskog rata. Glavna značajka romana, sastavljenog iz 4 dijela jeste unutarnji sukob koji se odvija u pojedincima, izazvan ratnim zbivanjima i strahotama nastalim kršenjem moralnih normi.',6),(11,'Zona Zamfirova','A priča o Zoni, bogatoj mezimici ćerki, i za nju nepriličnom kujundžiji Manetu, iskazana zavodljivim staroniškim dijalektom, ispričana je tako da objedinjuje bajkovitost ljubavne priče i erotsku suptilnost, čaršijsko ogovaranje i etnografsku faktografiju, novinske paskvile i simboliku detalja, dobronamerni humor i britkost satire – i, što je posebno značajno, pripovedačku samoironiju i autoparodiju.',7);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-29 15:55:38
