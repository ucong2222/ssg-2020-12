-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: textBoard
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

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
-- Current Database: `textBoard`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `textBoard` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `textBoard`;

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
  `hitCount` int(10) unsigned NOT NULL,
  `likesCount` int(10) unsigned NOT NULL,
  `commentsCount` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'2020-12-08 11:04:36','2021-01-17 19:36:06','HeyCong blog에 오신걸 환영합니다😊','안녕하세요! HeyCong blog의 운영자 김유경입니다.\r\n이 블로그는 저의 개인블로그이자 포토폴리오 작품입니다.\r\n이 곳에서 앞으로의 저의 일상과 JAVA, SQL, HTML, CSS 등 IT관련 학습내용을 공유할것입니다.\r\n아직 배우는 단계라 블로그의 디자인이나 구성이 다소 부족하지만 앞으로 공부하며 보완해나갈것입니다!\r\n항상 건강하시고 즐거운하루 보내세요 🤗❣',1,1,4,2,1),(2,'2020-12-17 19:05:22','2021-01-17 19:36:06','JAVA 출력하기','# JAVA) Hello 출력하기\r\n\r\n# JAVA 예시\r\n```java\r\npublic class Main(){\r\n    public static void main(String[] args){\r\n        System.out.println(\"Hello\");\r\n    }\r\n}\r\n```',1,3,0,0,1),(3,'2020-12-17 19:08:41','2021-01-17 19:36:05','JAVA 입력하기','# JAVA) Scanner class 이용해 입력하기\r\n\r\n# JAVA 예시\r\n```java\r\nimport java.util.Scanner;\r\n\r\npublic class Main(){\r\n    public static void main(String[] args){\r\n        Scanner sc = new Scanner(System.in);\r\n        String cmd = sc.nextLine();\r\n    }\r\n}\r\n```',1,3,0,0,0),(4,'2020-12-18 11:11:54','2021-01-17 19:36:05','오늘의 저녁 is 핏zza🍕','![](https://postfiles.pstatic.net/MjAxOTA4MTBfMTE2/MDAxNTY1MzY4MDM3MzM4.ZUitMm-j30Fnz71QdFVY8EqdFu6OhHmklz82zqVeFLgg.4zR1d0PqYpAWtW9Tu1FR28n64T59uMMurlVPKuv7p6wg.JPEG.dnjdn21/SE-a022ac35-2893-4fa9-b831-c488e4e65ab0.jpg?type=w773)\r\n오늘의 저녁은 핏짜! \r\n오늘은 내가 알바하던 청년피자에서 피자를 시켜먹었다.\r\n너무너무너무너무 맛있옹 (❁´◡`❁)',1,2,0,0,0),(5,'2020-12-22 22:45:35','2021-01-17 19:36:05','날씨가 춥군🥶','오늘은 대면수업이라 아침일찍일어나 준비하고 밖을 나갔는데 날씨 왜이렇게 추운거야😖\r\n안그래도 아침에 나가기 싫은데 추우면 더 나가기 싫엉~~\r\n근데 눈은 펑펑 내렸으면 좋겠다 ㅎㅎ❤ ',1,2,1,0,0),(6,'2020-12-22 22:45:37','2021-01-17 19:36:04','SQL 테이블 생성','# SQL) 테이블 생성하기\r\n\r\nsql 예시\r\n```sql\r\nCREATE TABLE 테이블명(\r\n    컬럼명 dataType [defult 형식],\r\n        . . .\r\n    컬럼명 dataType [defult 형식];\r\n)\r\n```',1,3,0,0,0),(7,'2020-12-22 22:45:40','2021-01-17 19:36:04','사이트맵이란?','# 사이트맵이란?\r\n- 사이트맵 파일을 만들고 각각의 포털사이트나 검색 엔진에 업로드 시켜주면 내 블로그나 홈페이지의 목차를 제공',1,3,0,0,0),(8,'2020-12-22 22:45:43','2021-01-17 19:36:04','구글 애널리틱스란?','# 구글 애널리틱스란?\r\n- 구글에서 무료로 제공하고 있는 웹 분석 서비스',1,3,0,0,0),(9,'2020-12-22 22:45:46','2021-01-17 19:36:03','웹분석이란?','# 웹분석\r\n- 웹사이트 이용 현황을 이해하고 사용자의 경험을 최적화 하기 위해 웹데이터를 측정, 수집, 분석 및 보고하는 것',1,3,3,0,0),(11,'2020-12-23 19:06:30','2021-01-17 19:36:03','마라탕탕탕🍜','오늘의 점저로 마라탕탕탕을 먹었다.\r\n4단계로 먹었더니 속이 지금 엉망😭\r\n그렇지만 포기할수 없th ㅓ~...🤪',1,2,3,0,1),(12,'2021-01-07 13:01:06','2021-01-17 19:36:03','API란?','# API (Application Programing Interface)\r\n- 응용프로그램에서 사용할 수 있도록, 운영 체제나 프로그래밍 언어가 제공하는 기능을 제어할 수 있게 만든 인터페이스\r\n\r\n   - 인터페이스 - 어떤 기계간의 장치끼리 정보를 교환하기 위한 수단이나 방법\r\n\r\n- 즉, 프로그램들이 서로 상호작용하는 것을 도와주는 매개체\r\n\r\n## API 사용이유\r\n- 구현방식을 알지 못해도 제품 도는 서비스가 서로 커뮤니케이션 할수있게 한다.\r\n\r\n- 애플리케이션 개발을 간소화하여 시간과 비용절약\r\n\r\n## API 유형\r\n- 공개 API : 누구나 쉽게 접근하여 정보를 공유하기 위해 만들어진 규격\r\n\r\n- 비공개 API : 권한이 있는 일부 사용자들에게만 정보를 제공하기 위해 만들어진 규격',1,3,0,0,0),(13,'2021-01-10 00:38:28','2021-01-17 19:36:03','youtube 영상 올리기 test','# 영상 올리기 test\r\n- 첫 공부 vlog\r\n```youtube\r\nk6dzRw-6MAQ\r\n```',1,3,0,0,0),(14,'2021-01-11 22:25:26','2021-01-17 19:36:02','코드펜 올리기 and 2개 이상의 뷰어 및 에디터 허용 test','# 글씨 색상\r\n```codepen\r\nhttps://codepen.io/ucong2222/embed/WNGgzaV?height=265&theme-id=light&default-tab=js,result\r\n```\r\n\r\n# 배경 색상\r\n```codepen\r\nhttps://codepen.io/ucong2222/embed/WNGgzVN?height=265&theme-id=light&default-tab=css,result&editable=true\r\n```\r\n\r\n# 콘솔 출력\r\n```codepen\r\nhttps://codepen.io/ucong2222/embed/JjRavme?height=265&theme-id=light&default-tab=js,result\r\n```',1,3,4,0,0),(15,'2021-01-17 19:08:27','2021-01-17 19:36:02','HTML 예시','```html\r\n<script>\r\nvar a = 10 ;\r\n</script>\r\n```',1,3,0,0,0);
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
-- Table structure for table `ga4DataPagePath`
--

DROP TABLE IF EXISTS `ga4DataPagePath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ga4DataPagePath` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `pagePath` char(100) NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pagePath` (`pagePath`)
) ENGINE=InnoDB AUTO_INCREMENT=671 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ga4DataPagePath`
--

LOCK TABLES `ga4DataPagePath` WRITE;
/*!40000 ALTER TABLE `ga4DataPagePath` DISABLE KEYS */;
INSERT INTO `ga4DataPagePath` VALUES (440,'2021-01-07 21:17:34','2021-01-07 21:17:34','/article_detail_5.html',1),(450,'2021-01-08 13:56:26','2021-01-08 13:56:26','/?dummy=sd1111111111111111111111111111sd32f4sd6f5sd4f6sdf857sd8f96sdf',1),(559,'2021-01-11 23:18:04','2021-01-11 23:18:04','/article_detail_9.html',3),(661,'2021-01-17 19:36:09','2021-01-17 19:36:09','/',40),(662,'2021-01-17 19:36:09','2021-01-17 19:36:09','/article_list_study_1.html',9),(663,'2021-01-17 19:36:09','2021-01-17 19:36:09','/index.html',8),(664,'2021-01-17 19:36:09','2021-01-17 19:36:09','/article_search.html',7),(665,'2021-01-17 19:36:09','2021-01-17 19:36:09','/index_2.html',5),(666,'2021-01-17 19:36:09','2021-01-17 19:36:09','/article_detail_1.html',4),(667,'2021-01-17 19:36:09','2021-01-17 19:36:09','/article_detail_14.html',4),(668,'2021-01-17 19:36:09','2021-01-17 19:36:09','/article_list_daily_1.html',4),(669,'2021-01-17 19:36:09','2021-01-17 19:36:09','/article_list_notice_1.html',4),(670,'2021-01-17 19:36:09','2021-01-17 19:36:09','/article_detail_11.html',3);
/*!40000 ALTER TABLE `ga4DataPagePath` ENABLE KEYS */;
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

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `relTypeCode` char(20) NOT NULL,
  `relId` int(10) unsigned NOT NULL,
  `body` char(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `relTypeCode_2` (`relTypeCode`,`relId`,`body`),
  KEY `relTypeCode` (`relTypeCode`,`body`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'2021-01-13 20:25:10','2021-01-13 20:25:10','article',2,'SQL'),(2,'2021-01-13 20:25:10','2021-01-13 20:25:10','article',2,'INSERT'),(3,'2021-01-13 20:25:10','2021-01-13 20:25:10','article',2,'DB'),(4,'2021-01-15 16:51:02','2021-01-15 16:51:02','article',1,'DB'),(5,'2021-01-15 16:51:02','2021-01-15 16:51:02','article',1,'SELECT'),(6,'2021-01-15 16:51:02','2021-01-15 16:51:02','article',1,'SQL');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-17 19:38:50
