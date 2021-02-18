-- MariaDB dump 10.17  Distrib 10.4.6-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: textBoard
-- ------------------------------------------------------
-- Server version	10.4.6-MariaDB

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'2020-12-08 11:04:36','2021-02-18 09:31:11','HeyCong blog에 오신걸 환영합니다😊','안녕하세요! HeyCong blog의 운영자 김유경입니다.\r\n이 블로그는 저의 개인블로그이자 포토폴리오 작품입니다.\r\n이 곳에서 앞으로의 저의 일상과 JAVA, SQL, HTML, CSS 등 IT관련 학습내용을 공유할것입니다.\r\n아직 배우는 단계라 블로그의 디자인이나 구성이 다소 부족하지만 앞으로 공부하며 보완해나갈것입니다!\r\n항상 건강하시고 즐거운하루 보내세요 🤗❣',1,1,15,2,1),(2,'2020-12-17 19:05:22','2021-02-18 09:31:11','JAVA 출력하기','# JAVA) Hello 출력하기\r\n\r\n# JAVA 예시\r\n```java\r\npublic class Main(){\r\n    public static void main(String[] args){\r\n        System.out.println(\"Hello\");\r\n    }\r\n}\r\n```',1,4,7,0,1),(3,'2020-12-17 19:08:41','2021-02-18 09:31:11','JAVA 입력하기','# JAVA) Scanner class 이용해 입력하기\r\n\r\n# JAVA 예시\r\n```java\r\nimport java.util.Scanner;\r\n\r\npublic class Main(){\r\n    public static void main(String[] args){\r\n        Scanner sc = new Scanner(System.in);\r\n        String cmd = sc.nextLine();\r\n    }\r\n}\r\n```',1,4,1,0,0),(4,'2020-12-18 11:11:54','2021-02-18 09:31:10','오늘의 저녁 is 핏zza🍕','![](https://postfiles.pstatic.net/MjAxOTA4MTBfMTE2/MDAxNTY1MzY4MDM3MzM4.ZUitMm-j30Fnz71QdFVY8EqdFu6OhHmklz82zqVeFLgg.4zR1d0PqYpAWtW9Tu1FR28n64T59uMMurlVPKuv7p6wg.JPEG.dnjdn21/SE-a022ac35-2893-4fa9-b831-c488e4e65ab0.jpg?type=w773)\r\n오늘의 저녁은 핏짜! \r\n오늘은 내가 알바하던 청년피자에서 피자를 시켜먹었다.\r\n너무너무너무너무 맛있옹 (❁´◡`❁)',1,2,9,0,0),(5,'2020-12-22 22:45:35','2021-02-18 09:31:10','날씨가 춥군🥶','오늘은 대면수업이라 아침일찍일어나 준비하고 밖을 나갔는데 날씨 왜이렇게 추운거야😖\r\n안그래도 아침에 나가기 싫은데 추우면 더 나가기 싫엉~~\r\n근데 눈은 펑펑 내렸으면 좋겠다 ㅎㅎ❤ ',1,2,10,0,0),(6,'2020-12-22 22:45:37','2021-02-18 09:31:10','SQL 테이블 생성','# SQL) 테이블 생성하기\r\n\r\nsql 예시\r\n```sql\r\nCREATE TABLE 테이블명(\r\n    컬럼명 dataType [defult 형식],\r\n        . . .\r\n    컬럼명 dataType [defult 형식];\r\n)\r\n```',1,3,3,0,0),(7,'2020-12-22 22:45:40','2021-02-18 09:31:09','사이트맵이란?','# 사이트맵이란?\r\n- 사이트맵 파일을 만들고 각각의 포털사이트나 검색 엔진에 업로드 시켜주면 내 블로그나 홈페이지의 목차를 제공',1,4,5,0,0),(8,'2020-12-22 22:45:43','2021-02-18 09:31:09','구글 애널리틱스란?','# 구글 애널리틱스란?\r\n- 구글에서 무료로 제공하고 있는 웹 분석 서비스',1,4,2,0,0),(9,'2020-12-22 22:45:46','2021-02-18 09:31:09','웹분석이란?','# 웹분석\r\n- 웹사이트 이용 현황을 이해하고 사용자의 경험을 최적화 하기 위해 웹데이터를 측정, 수집, 분석 및 보고하는 것',1,4,9,0,0),(11,'2020-12-23 19:06:30','2021-02-18 09:31:08','마라탕탕탕🍜','오늘의 점저로 마라탕탕탕을 먹었다.\r\n4단계로 먹었더니 속이 지금 엉망😭\r\n그렇지만 포기할수 없th ㅓ~...🤪',1,2,14,0,1),(12,'2021-01-07 13:01:06','2021-02-18 09:31:08','API란?','# API (Application Programing Interface)\r\n- 응용프로그램에서 사용할 수 있도록, 운영 체제나 프로그래밍 언어가 제공하는 기능을 제어할 수 있게 만든 인터페이스\r\n\r\n   - 인터페이스 - 어떤 기계간의 장치끼리 정보를 교환하기 위한 수단이나 방법\r\n\r\n- 즉, 프로그램들이 서로 상호작용하는 것을 도와주는 매개체\r\n\r\n## API 사용이유\r\n- 구현방식을 알지 못해도 제품 도는 서비스가 서로 커뮤니케이션 할수있게 한다.\r\n\r\n- 애플리케이션 개발을 간소화하여 시간과 비용절약\r\n\r\n## API 유형\r\n- 공개 API : 누구나 쉽게 접근하여 정보를 공유하기 위해 만들어진 규격\r\n\r\n- 비공개 API : 권한이 있는 일부 사용자들에게만 정보를 제공하기 위해 만들어진 규격',1,4,3,0,0),(13,'2021-01-10 00:38:28','2021-02-18 09:31:08','youtube 영상 올리기 test','# 영상 올리기 test\r\n- 첫 공부 vlog\r\n```youtube\r\nk6dzRw-6MAQ\r\n```',1,2,6,0,0),(14,'2021-01-11 22:25:26','2021-02-18 09:31:08','코드펜 올리기 and 2개 이상의 뷰어 및 에디터 허용 test','# 글씨 색상\r\n```codepen\r\nhttps://codepen.io/ucong2222/embed/WNGgzaV?height=265&theme-id=light&default-tab=js,result\r\n```\r\n\r\n# 배경 색상\r\n```codepen\r\nhttps://codepen.io/ucong2222/embed/WNGgzVN?height=265&theme-id=light&default-tab=css,result&editable=true\r\n```\r\n\r\n# 콘솔 출력\r\n```codepen\r\nhttps://codepen.io/ucong2222/embed/JjRavme?height=265&theme-id=light&default-tab=js,result\r\n```',1,2,6,0,0),(15,'2021-01-17 19:08:27','2021-02-18 09:31:07','HTML 예시','```html\r\n<script>\r\nvar a = 10 ;\r\n</script>\r\n```',1,2,5,0,0),(16,'2021-01-20 00:29:46','2021-02-18 09:31:07','[JSP 개발일지] 유콩의 개발일지 #1','# 👀나의 첫번째 개발일지\r\n\r\n## 📕 만든기능\r\n### 메인페이지, 공지사항 게시물 리스트 페이지, 상세페이지, 글작성 페이지, 글수정 페이지 생성\r\n\r\n### ☑ 회원가입\r\n- 입력란이 한칸이라도 비어있으면 가입 불가능\r\n- 이미 회원가입 되어있는 아이디일 경우 가입 불가능\r\n- 비밀번호 1차, 2차 일치해야 가입가능\r\n\r\n### ☑ 로그인\r\n- 입력칸이 한칸이라도 비어있으면 로그인 불가능\r\n- 아이디 존재하지 않으면 로그인 불가능\r\n- 비밀번호 불일치시 로그인 불가능\r\n- 로그인 되어있으면 회원가입, 로그인 불가능\r\n\r\n### ☑ 로그아웃\r\n- 로그아웃 되있으면 로그아웃 불가능\r\n\r\n### ☑ 다중게시판 글 CRUD\r\n- 로그인 했을 경우에만 글작성, 수정, 삭제 가능\r\n- 게시글에 대한 권한이 없을경우 수정, 삭제 불가능\r\n\r\n```youtube\r\nYE9AhILNQ5g\r\n```\r\n\r\n## 📘 다음계획\r\n### ◻ 회원가입시 중복체크 ( Ajax 사용 )\r\n### ◻ 메인화면 디자인\r\n### ◻ 다양한 게시물 리스트 생성',1,1,4,0,0),(17,'2021-01-21 17:49:24','2021-02-18 09:31:07','마크다운','# 마크다운이란?\r\n- 글을 쉽게 쓸수 있도록 해주고 읽는 사람에게도 쉽게 읽힐 수 있도록 해주는 __글쓰기 도구__\r\n- README 파일이나 온라인 문서, 혹은 일반 텍스트 편집기로 문서 양식을 편집할 때 쓰인다.\r\n- 마크다운을 이용해 작성된 문서는 __쉽게 HTML 등 다른 문서형태로 변환 가능하다.__',1,2,2,0,0),(18,'2021-01-21 22:10:27','2021-02-18 09:31:06','마크다운 작성문법 1탄','# 마크다운 작성문법 1탄 ( 제목 / 목록 / 폰트 스타일 / 색상 )\r\n---\r\n## 📕 제목 ( Header )\r\n### h1 ~ h6 까지 표현 가능 : #의 개수로 표현\r\n\r\n#### 마크다운 작성시\r\n```text\r\n# h1\r\n## h2\r\n### h3\r\n#### h4\r\n##### h5\r\n###### h6\r\n```\r\n#### 마크다운 결과\r\n# h1\r\n## h2\r\n### h3\r\n#### h4\r\n##### h5\r\n###### h6\r\n---\r\n## 📕 목록\r\n- ### 순서 표기 O\r\n #### 마크다운 작성시\r\n```text\r\n1. 첫번째\r\n2. 두번째\r\n3. 세번째\r\n1. 네번째 (1이라고 썼지만 마크다운 결과는 4로 뜸!)\r\n```\r\n #### 마크다운 결과\r\n1. 첫번째\r\n2. 두번째\r\n3. 세번째\r\n1. 네번째\r\n\r\n- ### 순서 표기 X - ( - , * , + ) 세개 중 아무 기호를 써도 된다.\r\n#### 마크다운 작성시\r\n```text\r\n- 나는\r\n   - 김유경\r\n      - 천재야\r\n```\r\n#### 마크다운 결과\r\n- 나는\r\n   - 김유경\r\n      - 천재야\r\n---\r\n## 📕 폰트 스타일\r\n#### 마크다운 작성시\r\n```text\r\n__굵게__\r\n**굵게**\r\n_기울여쓰기_\r\n*기울여쓰기*\r\n___굵게기울여쓰기___\r\n***굵게기울여쓰기***\r\n~~취소선~~\r\n```\r\n#### 마크다운 결과\r\n__굵게__\r\n**굵게**\r\n_기울여쓰기_\r\n*기울여쓰기*\r\n___굵게기울여쓰기___\r\n***굵게기울여쓰기***\r\n~~취소선~~\r\n\r\n---\r\n## 📕 글 색상 \r\n#### 마크다운 작성시\r\n```text\r\n<span style=\"color:pink\">핑크 글씨</span>\r\n```\r\n#### 마크다운 결과\r\n<span style=\"color:pink\">핑크 글씨</span>\r\n',1,2,4,0,0),(19,'2021-01-27 08:51:33','2021-02-18 09:31:06','JAVA Math Class - 올림, 내림, 반올림','# JAVA Math Class 사용하기\r\n\r\n## 올림\r\n\r\n### 메소드 \r\n```c\r\ndouble ceil(double a)\r\n```\r\n- 예제코드\r\n```c\r\ndouble v1 = Math.ceil(1.3); // v1 = 2.0\r\ndouble v2 = Math.ceil(-1.3); // v2 = -1.0\r\n```\r\n\r\n## 내림\r\n\r\n### 메소드 \r\n```c\r\ndouble floor(double a)\r\n```\r\n- 예제코드\r\n```c\r\ndouble v1 = Math.floor(1.3); // v1 = 1.0\r\ndouble v2 = Math.floor(-1.3); // v2 = -2.0\r\n```\r\n\r\n## 반올림\r\n\r\n### 메소드 \r\n```c\r\nlong round(double a)\r\n```\r\n- 예제코드\r\n```c\r\ndouble v1 = Math.round(1.3); // v1 = 1\r\ndouble v2 = Math.round(-1.3); // v2 = 2\r\n```\r\n',1,4,0,0,0),(20,'2021-02-02 10:24:16','2021-02-18 09:31:06','[JSP 개발일지] 유콩의 개발일지 #2','# 👀나의 두번째 개발일지\r\n\r\n## 📙 진행한 내용 LIST \r\n\r\n- [x] 로그인 아이디 중복체크 ( AJAX )\r\n- [x] 권한에 따라 글쓰기, 수정, 삭제 화면에 보이기\r\n- [x] 회원가입 아이디 입력란 공백일때 중복체크시 오류 수정\r\n- [x] 메일 발송 테스트\r\n\r\n```youtube\r\npbdhR2TTSlo\r\n```\r\n\r\n##  📗 추후 계획 LIST \r\n- [ ] 패스워드 해쉬 암호화\r\n- [ ] 로그인 아이디 찾기\r\n- [ ] 로그인 비밀번호 찾기\r\n- [ ] 게시물 검색\r\n- [ ] 글 작성시 토스트 UI 에디터 적용\r\n- [ ] 회원정보 수정\r\n- [ ] 임시패스 워드 사용시 알림\r\n- [ ] 비밀번호 일정시간 사용시 변경권유 경고\r\n- [ ] 추천\r\n- [ ] 댓글\r\n- [ ] 내 글에 새 댓글 알림\r\n- [ ] 내 댓글에 추가 댓글 알림\r\n- [ ] 댓글멘션\r\n- [ ] 대댓글\r\n- [ ] 댓글, ajax화\r\n- [ ] 파일업로드\r\n- [ ] 회원인증\r\n- [ ] 관리자페이지\r\n- [ ] 1:1 쪽지\r\n- [ ] 신고\r\n- [ ] 게시물 블라인드\r\n- [ ] 좋아요, 싫어요\r\n\r\n## 📘 완료 LIST \r\n✔ 프레임워크 기초\r\n✔ 회원가입\r\n✔ 로그인 ( 아이디 중복체크 AJAX )\r\n✔ 로그아웃\r\n✔ 다중게시판 글 CRUD\r\n✔ 인터셉터\r\n✔ 로그인 / 로그아웃 상태에 따른 권한체크\r\n✔ 게시글 수정, 삭제 권한체크\r\n✔ 권한에 따라 글쓰기, 수정, 삭제기능 숨기기\r\n✔ 메일 발송 테스트',1,1,0,0,0),(21,'2021-02-02 10:24:21','2021-02-18 09:31:05','[JSP 개발일지] 유콩의 개발일지 #3','# 👀나의 세번째 개발일지\r\n\r\n## 📙 진행한 내용 LIST \r\n\r\n- [x] 패스워드 암호화\r\n- 회원가입, 로그인 시 브라우저단에서 패스워드 해쉬 암호화\r\n- 기존회원의 패스워드 해쉬 암호화 \r\n\r\n- [x] 로그인 아이디 찾기\r\n- 가입되어 있지 않은 회원이거나 회원정보가 불일치시 찾기 불가능\r\n\r\n- [x] 로그인 비밀번호 찾기 \r\n- 가입되어 있지 않은 회원이거나 회원정보가 불일치시 찾기 불가능\r\n- 등록된 이메일로 임시패스워드 전송\r\n- 임시패스워드로 로그인\r\n- 메일발송 실패시 임시 패스워드로 변경하는 것 취소\r\n\r\n- [x] 총게시물 출력\r\n\r\n```youtube\r\nM2QGKPNIk_c\r\n```\r\n\r\n##  📗 추후 계획 LIST \r\n- [ ] 게시물 검색\r\n- [ ] 글 작성시 토스트 UI 에디터 적용\r\n- [ ] 회원정보 수정\r\n- [ ] 임시패스 워드 사용시 알림\r\n- [ ] 비밀번호 일정시간 사용시 변경권유 경고\r\n- [ ] 추천\r\n- [ ] 댓글\r\n- [ ] 내 글에 새 댓글 알림\r\n- [ ] 내 댓글에 추가 댓글 알림\r\n- [ ] 댓글멘션\r\n- [ ] 대댓글\r\n- [ ] 댓글, ajax화\r\n- [ ] 파일업로드\r\n- [ ] 회원인증\r\n- [ ] 관리자페이지\r\n- [ ] 1:1 쪽지\r\n- [ ] 신고\r\n- [ ] 게시물 블라인드\r\n- [ ] 좋아요, 싫어요\r\n\r\n## 📘 완료 LIST \r\n✔ 프레임워크 기초\r\n✔ 회원가입\r\n✔ 로그인 ( 아이디 중복체크 AJAX )\r\n✔ 로그아웃\r\n✔ 다중게시판 글 CRUD\r\n✔ 인터셉터\r\n✔ 로그인 / 로그아웃 상태에 따른 권한체크\r\n✔ 게시글 수정, 삭제 권한체크\r\n✔ 권한에 따라 글쓰기, 수정, 삭제기능 숨기기\r\n✔ 메일 발송 테스트\r\n✔ 패스워드 암호화\r\n✔ 로그인 아이디 찾기\r\n✔ 로그인 비밀번호 찾기\r\n✔ 총 게시물 수 출력',1,1,0,0,0),(22,'2021-02-02 10:24:21','2021-02-18 09:31:05','[JSP 개발일지] 유콩의 개발일지 #4','# 👀나의 네번째 개발일지\r\n\r\n## 📙 진행한 내용 LIST \r\n\r\n- [x] 게시물 검색\r\n- 본문 / 제목 분류해서 검색가능 \r\n\r\n- [x] 페이지 파라미터에 따라 각 페이지에 맞는 게시물 30개만 노출\r\n\r\n- [x] 게시물 리스트 하단에 페이징 메뉴 구현 \r\n\r\n- [x] 글쓰기, 글 상세페이지에 토스트 UI 에디터 적용\r\n\r\n```youtube\r\nOzIiUliD6t4\r\n```\r\n\r\n##  📗 추후 계획 LIST \r\n- [ ] 회원정보 수정\r\n- [ ] 임시패스 워드 사용시 알림\r\n- [ ] 비밀번호 일정시간 사용시 변경권유 경고\r\n- [ ] 추천\r\n- [ ] 댓글\r\n- [ ] 내 글에 새 댓글 알림\r\n- [ ] 내 댓글에 추가 댓글 알림\r\n- [ ] 댓글멘션\r\n- [ ] 대댓글\r\n- [ ] 댓글, ajax화\r\n- [ ] 파일업로드\r\n- [ ] 회원인증\r\n- [ ] 관리자페이지\r\n- [ ] 1:1 쪽지\r\n- [ ] 신고\r\n- [ ] 게시물 블라인드\r\n- [ ] 좋아요, 싫어요\r\n\r\n## 📘 완료 LIST \r\n✔ 프레임워크 기초\r\n✔ 회원가입\r\n✔ 로그인 ( 아이디 중복체크 AJAX )\r\n✔ 로그아웃\r\n✔ 다중게시판 글 CRUD\r\n✔ 인터셉터\r\n✔ 로그인 / 로그아웃 상태에 따른 권한체크\r\n✔ 게시글 수정, 삭제 권한체크\r\n✔ 권한에 따라 글쓰기, 수정, 삭제기능 숨기기\r\n✔ 메일 발송 테스트\r\n✔ 패스워드 암호화\r\n✔ 로그인 아이디 찾기\r\n✔ 로그인 비밀번호 찾기\r\n✔ 총 게시물 수 출력\r\n✔ 게시물 검색\r\n✔ 게시물 페이징\r\n✔ 글쓰기, 상세페이지에 토스트 UI 에디터 적용',1,1,0,0,0),(23,'2021-02-02 10:24:21','2021-02-18 09:31:05','[JSP 개발일지] 유콩의 개발일지 #5','# 👀나의 다섯번째 개발일지\r\n\r\n## 📙 진행한 내용 LIST \r\n\r\n- [x] 수정게시물 토스트 에디터 적용  \r\n\r\n- [x] 회원정보수정 \r\n- 로그인 비밀번호 제외한 나머지 입력란 공백시 경고\r\n- 권한 없으면 접근 불가능\r\n\r\n```youtube\r\nWX8HEzIcrA4\r\n```\r\n\r\n##  📗 추후 계획 LIST \r\n- [ ] 임시패스 워드 사용시 알림\r\n- [ ] 비밀번호 일정시간 사용시 변경권유 경고\r\n- [ ] 추천\r\n- [ ] 댓글\r\n- [ ] 내 글에 새 댓글 알림\r\n- [ ] 내 댓글에 추가 댓글 알림\r\n- [ ] 댓글멘션\r\n- [ ] 대댓글\r\n- [ ] 댓글, ajax화\r\n- [ ] 파일업로드\r\n- [ ] 회원인증\r\n- [ ] 관리자페이지\r\n- [ ] 1:1 쪽지\r\n- [ ] 신고\r\n- [ ] 게시물 블라인드\r\n- [ ] 좋아요, 싫어요\r\n\r\n## 📘 완료 LIST \r\n✔ 프레임워크 기초\r\n✔ 회원가입\r\n✔ 로그인 ( 아이디 중복체크 AJAX )\r\n✔ 로그아웃\r\n✔ 다중게시판 글 CRUD\r\n✔ 인터셉터\r\n✔ 로그인 / 로그아웃 상태에 따른 권한체크\r\n✔ 게시글 수정, 삭제 권한체크\r\n✔ 권한에 따라 글쓰기, 수정, 삭제기능 숨기기\r\n✔ 메일 발송 테스트\r\n✔ 패스워드 암호화\r\n✔ 로그인 아이디 찾기\r\n✔ 로그인 비밀번호 찾기\r\n✔ 총 게시물 수 출력\r\n✔ 게시물 검색\r\n✔ 게시물 페이징\r\n✔ 글쓰기, 상세페이지, 수정페이지에 토스트 UI 에디터 적용\r\n✔ 회원정보수정\r\n',1,1,0,0,0),(24,'2021-02-02 10:24:21','2021-02-18 09:31:04','[JSP 개발일지] 유콩의 개발일지 #6','# 👀나의 여섯번째 개발일지\r\n\r\n## 📙 진행한 내용 LIST \r\n\r\n- [x] 임시패스워드 사용시 알림\r\n- 임시패스워드로 로그인시, 경고창 띄우고 회원정보 수정 페이지로 연결\r\n- 임시패스워드로 로그인시, 화면상단에 항상 \'비밀번호 변경해주세요.\' 알람바 표시\r\n- 비밀번호 변경시 경고창, 알람바 제거\r\n\r\n- [x] 인터셉터에 의해 로그인 필요로 저지당한 경우, 로그인 성공시 원래 목적지로 연결\r\n\r\n```youtube\r\n9rIk1vEx4bA\r\n```\r\n\r\n##  📗 추후 계획 LIST \r\n- [ ] 조회수\r\n- [ ] 비밀번호 일정시간 사용시 변경권유 경고\r\n- [ ] 비밀번호 유효성 검사\r\n- [ ] 추천\r\n- [ ] 댓글\r\n- [ ] 내 글에 새 댓글 알림\r\n- [ ] 내 댓글에 추가 댓글 알림\r\n- [ ] 댓글멘션\r\n- [ ] 대댓글\r\n- [ ] 댓글, ajax화\r\n- [ ] 파일업로드\r\n- [ ] 회원인증\r\n- [ ] 관리자페이지\r\n- [ ] 1:1 쪽지\r\n- [ ] 신고\r\n- [ ] 게시물 블라인드\r\n- [ ] 좋아요, 싫어요\r\n\r\n## 📘 완료 LIST \r\n✔ 프레임워크 기초\r\n✔ 회원가입\r\n✔ 로그인 ( 아이디 중복체크 AJAX )\r\n✔ 로그아웃\r\n✔ 다중게시판 글 CRUD\r\n✔ 인터셉터\r\n✔ 로그인 / 로그아웃 상태에 따른 권한체크\r\n✔ 게시글 수정, 삭제 권한체크\r\n✔ 권한에 따라 글쓰기, 수정, 삭제기능 숨기기\r\n✔ 메일 발송 테스트\r\n✔ 패스워드 암호화\r\n✔ 로그인 아이디 찾기\r\n✔ 로그인 비밀번호 찾기\r\n✔ 총 게시물 수 출력\r\n✔ 게시물 검색\r\n✔ 게시물 페이징\r\n✔ 글쓰기, 상세페이지, 수정페이지에 토스트 UI 에디터 적용\r\n✔ 회원정보수정\r\n✔ 임시패스워드 사용시 경고문구',1,1,0,0,0),(25,'2021-02-03 10:39:35','2021-02-18 09:31:04','[LINUX] 데몬이란?','# 데몬 (Daemon)\r\n- 멀티태스킹이 가능한 운영체제에서 사용자에 의해 제어 및 관리되지 않고, 시스템에 관련된 작업을 백그라운드에서 수행하는 프로세스',1,4,0,0,0),(26,'2021-02-09 08:52:10','2021-02-18 09:31:04','배경이미지 스크롤바 따라다니기','# 배경이미지 스크롤바 따라다니기\r\n## background attachment fixed \r\n\r\n```codepen\r\nhttps://codepen.io/ucong2222/embed/xxRVojY?height=1000&theme-id=light&default-tab=css,result&editable=true\r\n```',1,2,0,2,0),(27,'2021-02-18 09:12:26','2021-02-18 09:31:04','GSAP란?','# GSAP (The GreenSock Animation Platform )\r\n- 프론트엔드 개발자와 디자이너들이쉽게 사용할 수 있는 아주 강력한 타임라인기반의 애니메이션 **자바스크립트 라이브러리**\r\n\r\n## CDN 이용해 추가 방법\r\n```html\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js\"></script>\r\n```',1,2,0,0,0),(28,'2021-02-18 09:24:10','2021-02-18 09:31:03','한줄 글 말줄임(...) 표시','# 한줄 글 말줄임(...) 표시\r\n\r\n```codepen \r\nhttps://codepen.io/ucong2222/embed/NWbjQJJ?height=265&theme-id=light&default-tab=css,result&editable=true\r\n```\r\n',1,2,0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'2020-12-17 19:05:22','2020-12-17 19:05:22','개발일지','devlog'),(2,'2020-12-17 19:05:22','2020-12-17 19:05:22','HTML/CSS','publishing'),(3,'2020-12-17 19:05:22','2020-12-17 19:05:22','MYSQL','mysql'),(4,'2021-02-16 10:50:19','2021-02-16 10:50:22','JAVA','java');
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
  `pagePath` text NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pagePath` (`pagePath`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ga4DataPagePath`
--

LOCK TABLES `ga4DataPagePath` WRITE;
/*!40000 ALTER TABLE `ga4DataPagePath` DISABLE KEYS */;
INSERT INTO `ga4DataPagePath` VALUES (1,'2021-01-27 20:28:21','2021-01-27 20:28:21','/',125),(2,'2021-01-27 20:28:21','2021-01-27 20:28:21','/index.html',28),(3,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_list_study_1.html',25),(4,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_list_notice_1.html',19),(5,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_list_daily_1.html',17),(6,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_11.html',14),(7,'2021-01-27 20:28:21','2021-01-27 20:28:21','/stat.html',13),(8,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_1.html',10),(9,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_5.html',10),(10,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_search.html',10),(11,'2021-01-27 20:28:21','2021-01-27 20:28:21','/index_2.html',10),(12,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_4.html',9),(13,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_9.html',9),(14,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_list_it_1.html',8),(15,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_2.html',7),(16,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_14.html',6),(17,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_list_free_1.html',6),(18,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_15.html',5),(19,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_7.html',5),(20,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_18.html',4),(21,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_12.html',3),(22,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_13.html',3),(23,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_16.html',3),(24,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_6.html',3),(25,'2021-01-27 20:28:21','2021-01-27 20:28:21','/ssg-fake/',3),(26,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_17.html',2),(27,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_8.html',2),(28,'2021-01-27 20:28:21','2021-01-27 20:28:21','/?dummy=2222222222222222222sd1f564sdf12sd3f165sd41321sd53sf4536sd4f13sd2f4s56df4s3df',1),(29,'2021-01-27 20:28:21','2021-01-27 20:28:21','/?dummy=sd1111111111111111111111111111sd32f4sd6f5sd4f6sdf857sd8f96sdf',1),(30,'2021-01-27 20:28:21','2021-01-27 20:28:21','/?dummy=sd1111111111111111111111111111sd32f4sd6f5sd4f6sdf857sd8f96sdfsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsd',1),(31,'2021-01-27 20:28:21','2021-01-27 20:28:21','/?dummy=sd1111111111111111111111111111sd32f4sd6f5sd4f6sdf857sd8f96sdfsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdfkdsjflsd',1),(32,'2021-01-27 20:28:21','2021-01-27 20:28:21','/?dummy=sdfdsdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',1),(33,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_1.html?dummy=sdf4dsf5ds5',1),(34,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_1.html?dummy=sdfsdf231sd5',1),(35,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_1.html?dummy=sdfsdf231sd5sdfsdf',1),(36,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_1.html?dummy=sdfsdf231sd\\',1),(37,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_1.html?dummy=sdifjosd',1),(38,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_13.html?dummy=sda21231sad23f1sda65f4sda132f1awe684fsd53af1ds23af1asd32f41aw65g4123sd1af2s3af1ds23af15ewa6f12sd3a1f23sda1f231as3d1f2asd',1),(39,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_13.html?dummy=sda21231sad23f1sda65f4sda132f1awe684fsd53af1ds23af1asd32f41aw65g4123sd1af2s3af1ds23af15ewa6f12sd3a1f23sda1f231as3d1f2asdasd5f444sda56f4sa6d5f456sad4f56sad4f56as5e4faew',1),(40,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_13.html?dummy=sda21231sad23f1sda65f4sda132f1awe684fsd53af1ds23af1asd32f41aw65g4123sd1af2s3af1ds23af15ewa6f12sd3a1f23sda1f231as3d1f2asdasd5f444sda56f4sa6d5f456sad4f56sad4f56as5e4faewsdf65sdf6sd4f56sd4f635',1),(41,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_16.html?dummy=sdaf465asd4f6awe7f86sda545555555555555555555555555555555555555555555555a4sd6f54asd65fas5d4f65as',1),(42,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_detail_3.html',1),(43,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_list_notice_1.html?dummy=sdfklsdj56465496874sd65f4sd8967f456sd4f8sd74f56sdf786sd',1),(44,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_list_study_1.html?dummy=sda21231sad23f1sda65f4sda132f1awe684fsd53af1ds23af1asd32f41aw65g4123sd1af2s3af1ds23af15ewa6f12sd3a1f23sda1f231as3d1f2asdasd5f444sda56f4sa6d5f456sad4f56sad4f56as5e4faew',1),(45,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_list_study_1.html?dummy=sdfds',1),(46,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_list_study_1.html?dummy=sdfdsasd23f13sd2a4f5sa6f4sda98f74sa5d3f13sd5f1asd',1),(47,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_list_study_1.html?dummy=sdfdsasd23f13sd2a4f5sa6f4sda98f74sa5d3f13sd5f1asdsd21fsdf231sdf653s4df23sd1f21sd23f12s3d1f23sd1f231sd23f123sd1f231sd2f13sd1fsd23f132sd1f',1),(48,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_list_study_1.html?dummy=sdfdsasd23f13sd2a4f5sa6f4sda98f74sa5d3f13sd5f1asdsd21fsdf231sdf653s4df23sd1f21sd23f12s3d1f23sd1f231sd23f123sd1f231sd2f13sd1fsd23f132sd1fsdf5sd4f65sd4f56sd',1),(49,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_list_study_1.html?dummy=sdfdsasd23f13sd2a4f5sa6f4sda98f74sa5d3f13sd5f1asdsd21fsdf231sdf653s4df23sd1f21sd23f12s3d1f23sd1f231sd23f123sd1f231sd2f13sd1fsd23f132sd1fsdf5sd4f65sd4f56sdsd231f32sd4f',1),(50,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_list_study_2.html',1),(51,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_search.html?dummy=sdfskdjflsdf132ds1f231555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555',1),(52,'2021-01-27 20:28:21','2021-01-27 20:28:21','/article_search.html?dummy=sdfskdjflsdf132ds1f231555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555dsfklsdjflsd',1),(53,'2021-01-27 20:28:21','2021-01-27 20:28:21','/index.html?dummy=sddddddddddd111111111111111115ewwwwwwwwwsdfsdf56s4df687sd89f74we56rf74we98r453es4r86wwwwwwwwwwwsdf5465sd74f98sd87fds56f4ds65f7sdsdf654sd685f4ds98f78ds9f',1),(54,'2021-01-27 20:28:21','2021-01-27 20:28:21','/index.html?dummy=sddddddddddd111111111111111115ewwwwwwwwwwwwwwwwwwww',1),(55,'2021-01-27 20:28:21','2021-01-27 20:28:21','/index.html?dummy=sddddddddddd111111111111111115ewwwwwwwwwwwwwwwwwwwwsdaf52456we4r6e8w7r4ew5634r56w4er56w456ra3r54sa1d321asd36f87asd4f',1),(56,'2021-01-27 20:28:21','2021-01-27 20:28:21','/index.html?dummy=sddddddddddd111111111111111115ewwwwwwwwwwwwwwwwwwwwsdf5465sd74f98sd87fds56f4ds65f7sd',1),(57,'2021-01-27 20:28:21','2021-01-27 20:28:21','/index.html?dummy=sddddddddddd111111111111111115ewwwwwwwwwwwwwwwwwwwwsdf5465sd74f98sd87fds56f4ds65f7sdsdf654sd685f4ds98f78ds9f',1),(58,'2021-01-27 20:28:21','2021-01-27 20:28:21','/index.html?dummy=sdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',1),(59,'2021-01-27 20:28:21','2021-01-27 20:28:21','/index_3.html',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'2021-01-13 20:25:10','2021-01-13 20:25:10','article',2,'SQL'),(2,'2021-01-13 20:25:10','2021-01-13 20:25:10','article',2,'INSERT'),(3,'2021-01-13 20:25:10','2021-01-13 20:25:10','article',2,'DB'),(4,'2021-01-15 16:51:02','2021-01-15 16:51:02','article',1,'DB'),(5,'2021-01-15 16:51:02','2021-01-15 16:51:02','article',1,'SELECT'),(6,'2021-01-15 16:51:02','2021-01-15 16:51:02','article',1,'SQL'),(8,'2021-01-21 18:00:52','2021-01-21 18:00:52','article',16,'JSP'),(9,'2021-01-21 18:00:58','2021-01-21 18:00:58','article',16,'개발일지'),(11,'2021-01-21 18:04:02','2021-01-21 18:04:02','article',3,'JAVA'),(13,'2021-01-21 18:04:23','2021-01-21 18:04:23','article',5,'일상'),(14,'2021-01-21 18:04:36','2021-01-21 18:04:36','article',6,'SQL'),(15,'2021-01-21 18:05:08','2021-01-21 18:05:08','article',7,'IT'),(16,'2021-01-21 18:05:12','2021-01-21 18:05:12','article',8,'IT'),(17,'2021-01-21 18:05:17','2021-01-21 18:05:17','article',9,'IT'),(18,'2021-01-21 18:05:29','2021-01-21 18:05:29','article',11,'일상'),(19,'2021-01-21 18:05:39','2021-01-21 18:05:39','article',12,'IT'),(20,'2021-01-21 18:06:02','2021-01-21 18:06:02','article',13,'마크다운'),(21,'2021-01-21 18:06:07','2021-01-21 18:06:07','article',14,'마크다운'),(22,'2021-01-21 18:06:19','2021-01-21 18:06:19','article',15,'HTML'),(23,'2021-01-21 18:06:33','2021-01-21 18:06:33','article',17,'마크다운'),(25,'2021-01-21 22:13:58','2021-01-21 22:13:58','article',18,'마크다운');
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

-- Dump completed on 2021-02-18  9:31:27
