-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: textBoard
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `title` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  `boardId` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'2020-12-08 11:04:36','2020-12-08 11:04:42','HeyCong blog에 오신걸 환영합니다😊','안녕하세요! HeyCong blog의 운영자 김유경입니다.\r\n이 블로그는 저의 개인블로그이자 포토폴리오 작품입니다.\r\n이 곳에서 앞으로의 저의 일상과 JAVA, SQL, HTML, CSS 등 IT관련 학습내용을 공유할것입니다.\r\n아직 배우는 단계라 블로그의 디자인이나 구성이 다소 부족하지만 앞으로 공부하며 보완해나갈것입니다!\r\n항상 건강하시고 즐거운하루 보내세요 🤗❣',1,1,0),(2,'2020-12-17 19:05:22','2020-12-17 19:05:22','JAVA 출력하기','# JAVA) Hello 출력하기\r\n\r\n# JAVA 예시\r\n```java\r\npublic class Main(){\r\n    public static void main(String[] args){\r\n        System.out.println(\"Hello\");\r\n    }\r\n}\r\n```',1,3,0),(3,'2020-12-17 19:08:41','2020-12-17 19:08:41','JAVA 입력하기','# JAVA) Scanner class 이용해 입력하기\r\n\r\n# JAVA 예시\r\n```java\r\nimport java.util.Scanner;\r\n\r\npublic class Main(){\r\n    public static void main(String[] args){\r\n        Scanner sc = new Scanner(System.in);\r\n        String cmd = sc.nextLine();\r\n    }\r\n}\r\n```',1,3,0),(4,'2020-12-18 11:11:54','2020-12-18 11:12:01','오늘의 저녁 is 핏zza🍕','![](https://postfiles.pstatic.net/MjAxOTA4MTBfMTE2/MDAxNTY1MzY4MDM3MzM4.ZUitMm-j30Fnz71QdFVY8EqdFu6OhHmklz82zqVeFLgg.4zR1d0PqYpAWtW9Tu1FR28n64T59uMMurlVPKuv7p6wg.JPEG.dnjdn21/SE-a022ac35-2893-4fa9-b831-c488e4e65ab0.jpg?type=w773)\r\n오늘의 저녁은 핏짜! \r\n오늘은 내가 알바하던 청년피자에서 피자를 시켜먹었다.\r\n너무너무너무너무 맛있옹 (❁´◡`❁)',1,2,1),(5,'2020-12-22 22:45:35','2020-12-22 22:45:35','날씨가 춥군🌬','오늘은 대면수업이라 아침일찍일어나 준비하고 밖을 나갔는데 날씨 왜이렇게 추운거야😖\r\n안그래도 아침에 나가기 싫은데 추우면 더 나가기 싫엉~~\r\n근데 눈은 펑펑 내렸으면 좋겠다 ㅎㅎ❤ ',1,2,0),(6,'2020-12-22 22:45:37','2020-12-22 22:45:37','SQL 테이블 생성','# SQL) 테이블 생성하기\r\n\r\nsql 예시\r\n```sql\r\nCREATE TABLE 테이블명(\r\n    컬럼명 dataType [defult 형식],\r\n        . . .\r\n    컬럼명 dataType [defult 형식];\r\n)\r\n```',1,3,0),(7,'2020-12-22 22:45:40','2020-12-22 22:45:40','사이트맵이란?','# 사이트맵이란?\r\n- 사이트맵 파일을 만들고 각각의 포털사이트나 검색 엔진에 업로드 시켜주면 내 블로그나 홈페이지의 목차를 제공',1,3,0),(8,'2020-12-22 22:45:43','2020-12-22 22:45:43','구글 애널리틱스란?','# 구글 애널리틱스란?\r\n- 구글에서 무료로 제공하고 있는 웹 분석 서비스',1,3,0),(9,'2020-12-22 22:45:46','2020-12-22 22:45:46','웹분석이란?','# 웹분석\r\n- 웹사이트 이용 현황을 이해하고 사용자의 경험을 최적화 하기 위해 웹데이터를 측정, 수집, 분석 및 보고하는 것',1,3,0);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articleReply`
--

DROP TABLE IF EXISTS `articleReply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articleReply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  `articleId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articleReply`
--

LOCK TABLES `articleReply` WRITE;
/*!40000 ALTER TABLE `articleReply` DISABLE KEYS */;
/*!40000 ALTER TABLE `articleReply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `name` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'2020-12-17 19:05:22','2020-12-17 19:05:22','공지사항','notice'),(2,'2020-12-17 19:05:22','2020-12-17 19:05:22','일상','daily'),(3,'2020-12-17 19:05:22','2020-12-17 19:05:22','공부','study');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `loginId` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loginPw` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'2020-12-17 19:05:22','2020-12-17 19:05:22','admin','admin','김유콩');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommand`
--

DROP TABLE IF EXISTS `recommand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `articleId` int(10) unsigned NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommand`
--

LOCK TABLES `recommand` WRITE;
/*!40000 ALTER TABLE `recommand` DISABLE KEYS */;
/*!40000 ALTER TABLE `recommand` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-23 14:36:16
