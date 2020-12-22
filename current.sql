/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.4.6-MariaDB : Database - textBoard
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`textBoard` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `textBoard`;

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `regDate` DATETIME NOT NULL,
  `updateDate` DATETIME NOT NULL,
  `title` CHAR(100) NOT NULL,
  `body` TEXT NOT NULL,
  `memberId` INT(10) UNSIGNED NOT NULL,
  `boardId` INT(10) UNSIGNED NOT NULL,
  `hit` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `article` */

INSERT  INTO `article`(`id`,`regDate`,`updateDate`,`title`,`body`,`memberId`,`boardId`,`hit`) VALUES 
(1, '2020-12-08 11:04:36', '2020-12-08 11:04:42', 'HeyCong blog에 오신걸 환영합니다 :)', '안녕하세요! HeyCong blog의 운영자 김유경입니다.\r\n이 블로그는 저의 개인블로그이자 포토폴리오 작품입니다.\r\n이 곳에서 앞으로의 저의 일상과 JAVA, SQL, HTML, CSS 등 IT관련 학습내용을 공유할것입니다.\r\n아직 배우는 단계라 블로그의 디자인이나 구성이 다소 부족하지만 앞으로 공부하며 보완해나갈것입니다!\r\n항상 건강하시고 즐거운하루 보내세요 >3<~ ', 1, 1, 0); 
(2,'2020-12-17 19:05:22','2020-12-17 19:05:22','1강, JAVA 출력하기','# JAVA) Hello 출력하기\r\n\r\n# JAVA 예시\r\n```java\r\npublic class Main(){\r\n    public static void main(String[] args){\r\n        System.out.println(\"Hello\");\r\n    }\r\n}\r\n```',1,3,0),
(3,'2020-12-17 19:08:41','2020-12-17 19:08:41','2강, JAVA 입력하기','# JAVA) Scanner class 이용해 입력하기\r\n\r\n# JAVA 예시\r\n```java\r\nimport java.util.Scanner;\r\n\r\npublic class Main(){\r\n    public static void main(String[] args){\r\n        Scanner sc = new Scanner(System.in);\r\n        String cmd = sc.nextLine();\r\n    }\r\n}\r\n```',1,3,0);
(4, '2020-12-18 11:11:54', '2020-12-18 11:12:01', '오늘의 저녁 is 핏zza', '![](https://postfiles.pstatic.net/MjAxOTA4MTBfMTE2/MDAxNTY1MzY4MDM3MzM4.ZUitMm-j30Fnz71QdFVY8EqdFu6OhHmklz82zqVeFLgg.4zR1d0PqYpAWtW9Tu1FR28n64T59uMMurlVPKuv7p6wg.JPEG.dnjdn21/SE-a022ac35-2893-4fa9-b831-c488e4e65ab0.jpg?type=w773)\r\n오늘의 저녁은 핏짜! \r\n오늘은 내가 알바하던 청년피자에서 피자를 시켜먹었다.\r\n너무너무너무너무 맛있옹 @\r\n', 1, 2, 1); 
/*Table structure for table `articleReply` */

DROP TABLE IF EXISTS `articleReply`;

CREATE TABLE `articleReply` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `regDate` DATETIME NOT NULL,
  `body` TEXT NOT NULL,
  `memberId` INT(10) UNSIGNED NOT NULL,
  `articleId` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `articleReply` */

/*Table structure for table `board` */

DROP TABLE IF EXISTS `board`;

CREATE TABLE `board` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `regDate` DATETIME DEFAULT NULL,
  `updateDate` DATETIME DEFAULT NULL,
  `name` CHAR(20) NOT NULL,
  `code` CHAR(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `board` */

INSERT  INTO `board`(`id`,`regDate`,`updateDate`,`name`,`code`) VALUES 
(1,'2020-12-17 19:05:22','2020-12-17 19:05:22','공지사항','notice'),
(2,'2020-12-17 19:05:22','2020-12-17 19:05:22','일상','daily'),
(3,'2020-12-17 19:05:22','2020-12-17 19:05:22','공부','study');

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `regDate` DATETIME NOT NULL,
  `updateDate` DATETIME NOT NULL,
  `loginId` CHAR(30) NOT NULL,
  `loginPw` VARCHAR(50) NOT NULL,
  `name` CHAR(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `member` */

INSERT  INTO `member`(`id`,`regDate`,`updateDate`,`loginId`,`loginPw`,`name`) VALUES 
(1,'2020-12-17 19:05:22','2020-12-17 19:05:22','admin','admin','김유콩');

/*Table structure for table `recommand` */

DROP TABLE IF EXISTS `recommand`;

CREATE TABLE `recommand` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `regDate` DATETIME NOT NULL,
  `updateDate` DATETIME NOT NULL,
  `articleId` INT(10) UNSIGNED NOT NULL,
  `memberId` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `recommand` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

SELECT * FROM article;
