-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: book_review_system
-- ------------------------------------------------------
-- MySQL version	8.0.11

CREATE DATABASE IF NOT EXISTS book_review_system;


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

USE book_review_system;

--
-- Table structure for table `activities`
--
DROP TABLE IF EXISTS `activities`;
CREATE TABLE `activities`
(
  `id`        INT(11)      NOT NULL AUTO_INCREMENT,
  `user_id`   INT(11)      NOT NULL,
  `object_id` INT(11)      NOT NULL,
  `type`      VARCHAR(50)  NOT NULL,
  `note`      VARCHAR(125) NOT NULL,
  `create_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_activity_user` (`user_id`),
  CONSTRAINT `fk_activity_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = UTF8MB4;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
INSERT INTO `activities`
VALUES (1, 1, 1, 'books', 'You reviewed a book', '2018-10-26 10:21:11'),
       (2, 2, 10, 'review', 'You reviewed a book', '2018-11-20 00:00:00'),
       (3, 14, 12, 'review', 'You reviewed a book', '2018-12-16 00:00:00'),
       (4, 14, 12, 'review', 'You reviewed a book', '2018-12-16 00:00:00'),
       (5, 14, 12, 'review', 'You reviewed a book', '2018-12-18 00:00:00'),
       (6, 14, 12, 'review', 'You reviewed a book', '2018-12-18 00:00:00'),
       (7, 14, 12, 'review', 'You reviewed a book', '2018-12-18 00:00:00'),
       (8, 14, 12, 'review', 'You reviewed a book', '2018-12-18 00:00:00'),
       (9, 14, 12, 'review', 'You reviewed a book', '2018-12-18 00:00:00'),
       (10, 14, 12, 'review', 'You reviewed a book', '2018-12-18 00:00:00'),
       (11, 14, 12, 'review', 'You reviewed a book', '2018-12-18 00:00:00'),
       (12, 14, 12, 'review', 'You reviewed a book', '2018-12-18 00:00:00'),
       (13, 14, 12, 'review', 'You reviewed a book', '2018-12-18 00:00:00'),
       (14, 14, 12, 'review', 'You reviewed a book', '2018-12-18 00:00:00'),
       (15, 14, 12, 'review', 'You reviewed a book', '2018-12-18 00:00:00'),
       (16, 14, 12, 'review', 'You reviewed a book', '2018-12-18 00:00:00'),
       (17, 14, 12, 'review', 'You reviewed a book', '2018-12-18 00:00:00'),
       (18, 14, 12, 'review', 'You reviewed a book', '2018-12-18 00:00:00'),
       (19, 14, 28, 'review', 'You reviewed a book', '2018-12-18 00:00:00'),
       (20, 14, 29, 'review', 'You reviewed a book', '2018-12-18 00:00:00'),
       (21, 14, 29, 'review', 'You reviewed a book', '2018-12-18 00:00:00'),
       (22, 14, 29, 'review', 'You reviewed a book', '2018-12-18 00:00:00'),
       (23, 14, 29, 'review', 'You reviewed a book', '2018-12-18 00:00:00'),
       (24, 14, 29, 'review', 'You reviewed a book', '2018-12-18 00:00:00'),
       (25, 14, 29, 'review', 'You reviewed a book', '2018-12-20 00:00:00'),
       (26, 14, 2, 'review', 'You reviewed a book', '2018-12-21 00:00:00'),
       (27, 14, 2, 'review', 'You reviewed a book', '2018-12-21 00:00:00'),
       (28, 14, 2, 'review', 'You reviewed a book', '2018-12-21 00:00:00'),
       (29, 14, 2, 'review', 'You reviewed a book', '2018-12-21 00:00:00'),
       (30, 14, 2, 'review', 'You reviewed a book', '2018-12-21 00:00:00'),
       (31, 14, 2, 'review', 'You reviewed a book', '2018-12-22 00:00:00'),
       (32, 14, 1, 'review', 'You reviewed a book', '2018-12-23 00:00:00'),
       (33, 14, 2, 'review', 'You reviewed a book', '2018-12-23 00:00:00'),
       (34, 1, 3, 'review', 'You reviewed a book', '2018-12-23 00:00:00'),
       (35, 2, 4, 'review', 'You reviewed a book', '2018-12-23 00:00:00'),
       (36, 4, 5, 'review', 'You reviewed a book', '2018-12-23 00:00:00');
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`
(
  `id`             INT(11)      NOT NULL AUTO_INCREMENT,
  `category_id`    INT(11)      NOT NULL,
  `title`          VARCHAR(125) NOT NULL,
  `publish_date`   DATE         NOT NULL,
  `author_name`    VARCHAR(50)  NOT NULL,
  `number_of_page` INT(5)       NOT NULL,
  `image`          VARCHAR(125) NOT NULL,
  `publisher_id`   INT(11)      NOT NULL,
  `image_detail`   VARCHAR(123) NULL DEFAULT NULL,
  `description`    LONGTEXT     NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_book_publisher_idx` (`publisher_id`),
  KEY `index_book_category` (`category_id`),
  CONSTRAINT `fk_book_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_book_publisher` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`id_publisher`)
) ENGINE = InnoDB
  DEFAULT CHARSET = UTF8MB4;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
INSERT INTO `books`
VALUES (4, 2, 'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', '2018-10-15 14:03:24', 'Hoàng Ngọc Hải', 300,
        'ToiThayHoaVangTrenCoXanh.jpg', 1, 'toi_thay_hoa_vang_Detail.jpg',
        '5cm/s không chỉ là vận tốc của những cánh anh đào rơi, mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, đánh mất bao cảm xúc thiết tha nhất của tình yêu. Bằng giọng văn tinh tế, truyền cảm, 5 centimet trên giây mang đến những khắc họa mới về tâm hồn và khả năng tồn tại của cảm xúc, bắt đầu từ tình yêu trong sáng, ngọt ngào của một cô bé và cậu bé. Ba giai đoạn, ba mảnh ghép, ba ngôi kể chuyện khác nhau nhưng đều xoay quanh nhân vật nam chính, người luôn bị ám ảnh bởi kí ức và những điều đã qua… Khác với những câu chuyện cuốn bạn chạy một mạch, truyện này khó mà đọc nhanh. Ngón tay bạn hẳn sẽ ngừng lại cả trăm lần trên mỗi trang sách. Chỉ vì một cử động rất khẽ, một câu thoại, hay một xúc cảm bất chợt có thể sẽ đánh thức những điều tưởng chừng đã ngủ quên trong tiềm thức, như ngọn đèn vừa được bật sáng trong tâm trí bạn. Và rồi có lúc nó vượt quá giới hạn chịu đựng, bạn quyết định gấp cuốn sách lại chỉ để tận hưởng chút ánh sáng từ ngọn đèn, hay đơn giản là để vết thương trong lòng mình có thời gian tự tìm xoa dịu.'),
       (5, 1, '5 Centimet Trên Giây   ', '2018-10-15 14:03:24', 'Shinkai Makoto', 200, '5_centimetTrenGiay.jpg', 2,
        '5cemtimettrengiay_Detail.jpg',
        '5cm/s không chỉ là vận tốc của những cánh anh đào rơi, mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, đánh mất bao cảm xúc thiết tha nhất của tình yêu. Bằng giọng văn tinh tế, truyền cảm, 5 centimet trên giây mang đến những khắc họa mới về tâm hồn và khả năng tồn tại của cảm xúc, bắt đầu từ tình yêu trong sáng, ngọt ngào của một cô bé và cậu bé. Ba giai đoạn, ba mảnh ghép, ba ngôi kể chuyện khác nhau nhưng đều xoay quanh nhân vật nam chính, người luôn bị ám ảnh bởi kí ức và những điều đã qua… Khác với những câu chuyện cuốn bạn chạy một mạch, truyện này khó mà đọc nhanh. Ngón tay bạn hẳn sẽ ngừng lại cả trăm lần trên mỗi trang sách. Chỉ vì một cử động rất khẽ, một câu thoại, hay một xúc cảm bất chợt có thể sẽ đánh thức những điều tưởng chừng đã ngủ quên trong tiềm thức, như ngọn đèn vừa được bật sáng trong tâm trí bạn. Và rồi có lúc nó vượt quá giới hạn chịu đựng, bạn quyết định gấp cuốn sách lại chỉ để tận hưởng chút ánh sáng từ ngọn đèn, hay đơn giản là để vết thương trong lòng mình có thời gian tự tìm xoa dịu.'),
       (6, 1, 'Đắc Nhân Tâm', '2018-10-15 14:03:24', 'Hoàng Ngọc Hải', 200, 'dacnhantam_single.jpg', 1,
        'dacnhantam.jpg',
        'Vấn đề của các sách IELTS hiện nay không phải là thiếu từ vựng, thiếu ngữ pháp hay thiếu kinh nghiệm hoặc bí quyết làm bài thi IELTS cũng như học tiếng Anh.'),
       (7, 10, 'Cẩm Nang Tự Học IELTS', '2018-10-15 14:03:24', 'Kiên Trần', 250, 'camnangtuhocielts.jpg', 1,
        'CamnagtuhocieltsDetail.jpg',
        'Vấn đề của các sách IELTS hiện nay không phải là thiếu từ vựng, thiếu ngữ pháp hay thiếu kinh nghiệm hoặc bí quyết làm bài thi IELTS cũng như học tiếng Anh.'),
       (8, 1, 'Tuổi Trẻ Đáng Giá Bao Nhiêu', '2018-10-15 14:03:24', 'Rosie Nguyễn', 200,
        'tuoitredanggiabaonhieu.jpg', 1, 'tuoitredanggiabaonhieudetail.jpg',
        '\"Bạn hối tiếc vì không nắm bắt lấy một cơ hội nào đó, chẳng có ai phải mất ngủ.'),
       (9, 1, 'Công Phá Toán 2', '2018-10-15 14:03:24', 'Nhiều Tác giả', 200, 'conphatoan2.jpg', 2,
        'conphtoan2detail.jpg',
        'Công Phá Toán 2 giúp các bạn hệ thống lại toàn bộ phương pháp, tư duy giải Toán cần thiết trong toàn bộ chương trình lớp 11. Sách đặc biệt chú trọng tới những vấn đề học sinh hay nhầm lẫn.'),
       (10, 1, 'Luyện Siêu Trí Nhớ Từ Vựng Tiếng Anh', '2018-10-15 14:03:24', 'Nguyễn Anh Đức', 333,
        'luyensieutrinho.jpg', 1, 'luyensieutrinhodetail.jpg',
        'Tác giả Nguyễn Anh Đức chia sẻ về ý tưởng viết cuốn sách Luyện siêu trí nhớ từ vựng của mình: Trong chương trình đào tạo lãnh đạo của trường Kinh doanh Harvard, tác giả đã tình cờ gặp và kết bạn với một anh bạn người Do Thái. Qua tiếp xúc, tác giả từ ngạc nhiên đến tò mò bởi chàng trai này giao tiếp tiếng Anh thành thạo như một người bản ngữ, thậm chí khó tìm thấy được dấu hiệu tiếng Anh là chỉ là ngoại ngữ đối với chàng trai này. Tác giả đã rất tò mò, bởi có thể nói tiếng Anh như người bản ngữ như anh chàng này không nhiều. Câu trả lời của Shimon Yakir khiến tác giả rất bất ngờ: “ở Israel mọi người đều nói tiếng Do Thái và tiếng Ả- Rập là ngôn ngữ chính thức, nhưng hầu hết dân Israel đều nói tốt tiếng Anh và tiếng Đức, đấy còn chưa kể không ít người dùng tốt tới bốn hay có thể là năm ngôn ngữ khác nhau.”'),
       (11, 1, 'Thanh Xuân Không Hối Tiếc', '2018-10-15 14:03:24', 'Du Phong', 200, 'thanhXuankhonghoitiec.jpg', 1,
        'thanhxuankhonghoitiec_chitiet.jpg',
        'Thanh Xuân Không Hối Tiếc Mỗi người có một cách khác nhau để sống những ngày tuổi trẻ, có người dành trọn nó cho những cuộc tình, có người dành trọn nó cho công việc, có người dành trọn nó đểtự yêu thương mình, và cũng có những người chia tuổi trẻ của mình ra, để yêu một vài người, sau đó yêu mình, yêu người xung quanh mình, rồi đến một lúc nào đó thích hợp mới tiếp tục muốn yêu thêm một người cho đến hết cuộc đời Dù người ta có dành tuổi trẻ của mình cho ai hay để làm gì, thì cũng mong sau này khi đã đủ chín chắn để ngoái đầu nhìn lại, họ cũng sẽ mỉm cười, một nụ cười vô ưu viên mãn Cái người ta hoài công tìm kiếm suốt một thời xanh trẻ, rốt cuộc không phải là một tình yêu điên cuồng mù quáng, lại càng không phải là những thứ vật chất phù du. Cuối cùng khi đi hết đoạn đường đầy tin yêu và khát vọng, người ta chỉ mong thấy được sự thanh thản bình yên trong sâu thẳm lòng mình.'),
       (12, 1, 'Đắc Nhân Tâm', '2018-10-15 14:03:24', 'Hoàng Ngọc Hải', 200, 'dacnhantam_single.jpg', 1,
        'dacnhantam.jpg', NULL),
       (13, 1, 'Đắc Nhân Tâm', '2018-10-15 14:03:24', 'Hoàng Ngọc Hải', 200, 'dacnhantam_single.jpg', 1,
        'dacnhantam.jpg', NULL),
       (14, 1, 'Đắc Nhân Tâm', '2018-10-15 14:03:24', 'Hoàng Ngọc Hải', 200, 'dacnhantam_single.jpg', 1,
        'dacnhantam.jpg', NULL),
       (15, 2, 'Java core', '2018-10-19 00:00:00', 'Nguyen Anh Tuan', 100, 'banner-macchiato.png', 1, NULL, NULL),
       (16, 1, 'Thanh Xuân Không Hối Tiếc', '2018-10-15 14:03:24', 'Du Phong', 200, 'thanhXuankhonghoitiec.jpg', 1,
        'thanhxuankhonghoitiec_chitiet.jpg',
        'Thanh Xuân Không Hối Tiếc Mỗi người có một cách khác nhau để sống những ngày tuổi trẻ, có người dành trọn nó cho những cuộc tình, có người dành trọn nó cho công việc, có người dành trọn nó đểtự yêu thương mình, và cũng có những người chia tuổi trẻ của mình ra, để yêu một vài người, sau đó yêu mình, yêu người xung quanh mình, rồi đến một lúc nào đó thích hợp mới tiếp tục muốn yêu thêm một người cho đến hết cuộc đời Dù người ta có dành tuổi trẻ của mình cho ai hay để làm gì, thì cũng mong sau này khi đã đủ chín chắn để ngoái đầu nhìn lại, họ cũng sẽ mỉm cười, một nụ cười vô ưu viên mãn Cái người ta hoài công tìm kiếm suốt một thời xanh trẻ, rốt cuộc không phải là một tình yêu điên cuồng mù quáng, lại càng không phải là những thứ vật chất phù du. Cuối cùng khi đi hết đoạn đường đầy tin yêu và khát vọng, người ta chỉ mong thấy được sự thanh thản bình yên trong sâu thẳm lòng mình.'),
       (17, 1, 'Thanh Xuân Không Hối Tiếc', '2018-10-15 14:03:24', 'Du Phong', 200, 'thanhXuankhonghoitiec.jpg', 1,
        'thanhxuankhonghoitiec_chitiet.jpg',
        'Thanh Xuân Không Hối Tiếc Mỗi người có một cách khác nhau để sống những ngày tuổi trẻ, có người dành trọn nó cho những cuộc tình, có người dành trọn nó cho công việc, có người dành trọn nó đểtự yêu thương mình, và cũng có những người chia tuổi trẻ của mình ra, để yêu một vài người, sau đó yêu mình, yêu người xung quanh mình, rồi đến một lúc nào đó thích hợp mới tiếp tục muốn yêu thêm một người cho đến hết cuộc đời Dù người ta có dành tuổi trẻ của mình cho ai hay để làm gì, thì cũng mong sau này khi đã đủ chín chắn để ngoái đầu nhìn lại, họ cũng sẽ mỉm cười, một nụ cười vô ưu viên mãn Cái người ta hoài công tìm kiếm suốt một thời xanh trẻ, rốt cuộc không phải là một tình yêu điên cuồng mù quáng, lại càng không phải là những thứ vật chất phù du. Cuối cùng khi đi hết đoạn đường đầy tin yêu và khát vọng, người ta chỉ mong thấy được sự thanh thản bình yên trong sâu thẳm lòng mình.');
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`
(
  `id`          INT(11)     NOT NULL AUTO_INCREMENT,
  `name`        VARCHAR(50) NOT NULL,
  `description` VARCHAR(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = UTF8MB4;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
INSERT INTO `categories`
VALUES (1, 'Sách văn học ', '...'),
       (2, 'Sách kinh tế', '...'),
       (3, 'Sách thiếu nhi', '...'),
       (4, 'Sách kĩ năng sống đẹp', '...'),
       (5, 'Sách kiến thức tổng hợp', '...'),
       (6, 'Sách Công nghệ thông tin', NULL),
       (7, 'Sách khoa học kĩ thuật', NULL),
       (8, 'Sách y học', NULL),
       (9, 'Sách tâm lí giới tính', NULL),
       (10, 'Sách Học Ngoại Ngữ', NULL);
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`
(
  `id`         INT(11)      NOT NULL AUTO_INCREMENT,
  `user_id`    INT(11)      NOT NULL,
  `review_id`  INT(11)      NOT NULL,
  `parent_id`  INT(11)      NOT NULL DEFAULT '0',
  `content`    VARCHAR(500) NOT NULL,
  `created_at` TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_comment_review` (`review_id`),
  KEY `index_comment_user` (`user_id`),
  CONSTRAINT `fk_comment_review` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_comment_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = UTF8MB4;


--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;

UNLOCK TABLES;

--
-- Table structure for table `follows`
--

DROP TABLE IF EXISTS `follows`;
CREATE TABLE `follows`
(
  `id`          INT(11) NOT NULL AUTO_INCREMENT,
  `follower_id` INT(11) NOT NULL,
  `followed_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_fk_followed_user` (`followed_id`),
  KEY `index_fk_follower_user` (`follower_id`),
  CONSTRAINT `fk_followed_user` FOREIGN KEY (`followed_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_follower_user` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = UTF8MB4;

--
-- Dumping data for table `follows`
--

LOCK TABLES `follows` WRITE;
INSERT INTO `follows`
VALUES (1, 1, 2),
       (2, 3, 1),
       (3, 3, 2),
       (4, 1, 15);
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes`
(
  `id`          INT(11) NOT NULL AUTO_INCREMENT,
  `user_id`     INT(11) NOT NULL,
  `activity_id` INT(11) NOT NULL,
  `like`        tinyINT(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_fk_like_activity` (`activity_id`),
  KEY `index_fk_like_user` (`user_id`),
  CONSTRAINT `fk_like_activity` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_like_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = UTF8MB4;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
INSERT INTO `likes`
VALUES (1, 2, 1, 1);
UNLOCK TABLES;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
CREATE TABLE `marks`
(
  `id`          INT(11) NOT NULL AUTO_INCREMENT,
  `user_id`     INT(11) NOT NULL,
  `book_id`     INT(11) NOT NULL,
  `read_status` TINYINT(4) DEFAULT '0',
  `page_mark`   INT(11)    DEFAULT NULL,
  `favorite`    TINYINT(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_fk_mark_book` (`book_id`),
  KEY `index_fk_mark_user` (`user_id`),
  CONSTRAINT `fk_mark_book` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_mark_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = UTF8MB4;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
INSERT INTO `marks`
VALUES (3, 2, 4, 1, 0, 0),
       (4, 2, 8, 1, 0, 0),
       (5, 1, 14, 1, 0, 0),
       (6, 2, 6, 2, 0, 0),
       (7, 14, 5, 1, 0, 0),
       (8, 14, 4, 2, 0, 0),
       (9, 14, 10, 1, 0, 0),
       (10, 4, 10, 1, 0, 0),
       (11, 1, 10, 2, 0, 0),
       (12, 2, 10, 2, 0, 0);
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications`
(
  `id`         INT(11)      NOT NULL AUTO_INCREMENT,
  `content`    VARCHAR(255) NOT NULL,
  `watched`    INT(11)  DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `userId`     INT(11)      NOT NULL,
  `reviewId`   INT(11)      NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_userid_id` (`userId`),
  KEY `index_reviewid_id` (`reviewId`),
  CONSTRAINT `reviewid` FOREIGN KEY (`reviewId`) REFERENCES `reviews` (`id`) ON DELETE CASCADE,
  CONSTRAINT `userid` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = UTF8MB4;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
INSERT INTO `notifications`
VALUES (1, 'nguyen van thien created review at: Sun Dec 23 16:26:12 ICT 2018', 0, '2018-12-23 09:26:13', 14, 1),
       (2, 'nguyen van thien created review at: Mon Dec 24 00:26:57 ICT 2018', 0, '2018-12-23 17:26:58', 14, 2),
       (3, 'Hoang Ngoc Hai created review at: Mon Dec 24 00:30:09 ICT 2018', 0, '2018-12-23 17:30:10', 1, 3),
       (4, 'Nguyen Dang Van created review at: Mon Dec 24 00:33:16 ICT 2018', 0, '2018-12-23 17:33:17', 2, 4),
       (5, 'tuấn created review at: Mon Dec 24 00:35:54 ICT 2018', 0, '2018-12-23 17:35:55', 4, 5);
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
CREATE TABLE `publisher`
(
  `id_publisher`   INT(11) NOT NULL AUTO_INCREMENT,
  `name_publisher` VARCHAR(45) DEFAULT NULL,
  `address`        VARCHAR(45) DEFAULT NULL,
  `phone`          VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (`id_publisher`)
) ENGINE = InnoDB
  DEFAULT CHARSET = UTF8MB4;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
INSERT INTO `publisher`
VALUES (1, 'Nha xuat ban kim dong', 'Cau giay', '0365213399'),
       (2, 'NXB Trẻ', 'Dong da', '0452123412');
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
CREATE TABLE `requests`
(
  `id`          INT(11)      NOT NULL AUTO_INCREMENT,
  `user_id`     INT(11)      NOT NULL,
  `category_id` INT(11)      NOT NULL,
  `status`      TINYINT(4)   NOT NULL DEFAULT '0',
  `created_at`  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `book_title`  VARCHAR(125) NOT NULL,
  `book_author` VARCHAR(50)  NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_fk_request_category` (`category_id`),
  KEY `index_fk_request_user` (`user_id`),
  CONSTRAINT `fk_request_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_request_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = UTF8MB4;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests`
  DISABLE KEYS */;
INSERT INTO `requests`
VALUES (1, 2, 1, 0, '2018-10-26 10:21:11', 'Ruby core', 'Hai HN'),
       (2, 2, 2, 0, '2018-11-04 00:00:00', 'java', 'anhtuan'),
       (3, 2, 2, 0, '2018-11-04 00:00:00', 'rupy onrail', 'tuan'),
       (4, 2, 2, 0, '2018-11-04 00:00:00', 'python', 'abc'),
       (5, 2, 1, 0, '2018-11-04 00:00:00', 'rubsa', 'xda'),
       (6, 2, 3, 0, '2018-11-04 00:00:00', 'java', 'anh tuan');
/*!40000 ALTER TABLE `requests`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
SET character_set_client = UTF8MB4;
CREATE TABLE `reviews`
(
  `id`             INT(11)                                                  NOT NULL AUTO_INCREMENT,
  `user_id`        INT(11)                                                  NOT NULL,
  `book_id`        INT(11)                                                  NOT NULL,
  `number_of_star` float        DEFAULT '0',
  `content`        VARCHAR(2048) CHARACTER SET UTF8MB4 COLLATE UTF8MB4_general_ci NOT NULL,
  `created_at`     datetime     DEFAULT CURRENT_TIMESTAMP,
  `title`          VARCHAR(120) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_review_book` (`book_id`),
  KEY `fk_review_user` (`user_id`),
  CONSTRAINT `fk_review_book` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_review_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = UTF8MB4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
INSERT INTO `reviews`
VALUES (1, 14, 4, 4, '<p>toi da doc quyen sach nay no rat huu ich&nbsp;</p>\r\n', '2018-12-23 00:00:00', NULL),
       (2, 14, 10, 4,
        '<p>Cuon sach nay kha hay ve mat noi dung va hinh thuc,danh cho nhung ai co nhu cau ren luyen them tu vung tieng anh,sach co nhung hinh anh rat sinh dong lam cho viec hoc rat hung thu</p>\r\n',
        '2018-12-23 00:00:00', NULL),
       (3, 1, 10, 5, '<p>Quyen nay giup toi cai thien tieng anh rat nhieu the hoc online rat huu ich</p>\r\n',
        '2018-12-23 00:00:00', NULL),
       (4, 2, 10, 2,
        '<p>The hoc online het han rat nhanh, ung dung ma sach huong dan khong hinh anh ,audio doc rat nhanh khong phu hop voi nhung ban moi hoc tieng anh</p>\r\n',
        '2018-12-23 00:00:00', NULL),
       (5, 4, 10, 4,
        '<p>Cuon sach voi phuong phap hoc tieng anh moi la va thu vi, Minh rat thich va muon gioi thieu den cac ban. Ben canh phuong phap con co cai bai tap de thuc hien, minh cam thay rat thoai mai khi hoc cuon sach nay. Chi co dieu khong thich la phan nghe phai co INTernet hay 3G moi nghe duoc, download ve thi rat cham.</p>\r\n',
        '2018-12-23 00:00:00', NULL);
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`
(
  `id`          INT(11)      NOT NULL AUTO_INCREMENT,
  `name`        VARCHAR(50)  NOT NULL,
  `description` VARCHAR(125) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = UTF8MB4;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
INSERT INTO `roles`
VALUES (1, 'ROLE_ADMIN', '...'),
       (2, 'ROLE_USER', '...');
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`
(
  `id`           INT(11)      NOT NULL AUTO_INCREMENT,
  `role_id`      INT(11)      NOT NULL,
  `full_name`    VARCHAR(60)  NOT NULL,
  `user_name`    VARCHAR(50)  NOT NULL,
  `password`     VARCHAR(120) NOT NULL,
  `phone_number` VARCHAR(15)  NULL DEFAULT NULL,
  `email`        VARCHAR(50)  NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `index_fk_user_role` (`role_id`),
  CONSTRAINT `fk_user_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = UTF8MB4;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
INSERT INTO `users`
VALUES (1, 1, 'Hoang Ngoc Hai', 'haihn', '$2a$10$D9xAmpnJbpuY4su2e4RkceEnY6rhFA.zVMEayFJ4TVHtVcC4qEtsi', '0981075108',
        'hainhn@gmail.com'),
       (2, 2, 'Nguyen Dang Van', 'vannd', '$2a$10$D9xAmpnJbpuY4su2e4RkceEnY6rhFA.zVMEayFJ4TVHtVcC4qEtsi', '0981071296',
        'vannd@gmail.com'),
       (3, 2, 'New guy', 'new guy', '$2a$10$D9xAmpnJbpuY4su2e4RkceEnY6rhFA.zVMEayFJ4TVHtVcC4qEtsi', '0981071296',
        'vannd@gmail.com'),
       (4, 2, 'tuấn', 'neo29395@gmail.com',
        '4/kwCm69s2gD209cUb1rfWy9Y4-d6j-qTSJbCwGYASWQXp3Ufc9lkojwBCgmaT4CAg-1xqX_X1ig9o5U5WiCXcRLo', NULL,
        'neo29395@gmail.com'),
       (6, 2, 'Trinh', 'hait9135012@gmail.com',
        '4/kwCv5AwK9ouePZiI_f6rYbXgAZGXB0UhQbbhysTHrltoMxlvzGoxalBRBcmXrwQZT6xQRuzyc24I55Ws6BDotHs', NULL,
        'hait9135012@gmail.com'),
       (7, 2, 'nguyen', 'ltb01665213399@gmail.com',
        '4/kwBBaCUhvmGSm6WQumQ-P9GYm61cnojCcHwX9-BU0M52S_y0ro-Gsx4Jkh0TZQcETX1deDhQB4wIv1GZq8fDojw', NULL,
        'ltb01665213399@gmail.com'),
       (11, 2, 'nguyen anh tuan', 'anhtuan12345', '$2a$10$wi/kJwVUULMKAhQ4snCvfuwnAHNsalo7CFwf1GhTW.7itmNG9qE92', '',
        'neo@gmail.com'),
       (12, 2, 'nguyen anh tuan', 'anhtuan123456', '$2a$10$toO29ZvvON7m5P5AnTQ36u0q1MqkjMflwa4tIu20o9K6HFmEj78e2', '',
        'tuannguyen@gmail.com'),
       (13, 1, 'Nguyen an thien', 'thien12345', '$2a$10$toO29ZvvON7m5P5AnTQ36u0q1MqkjMflwa4tIu20o9K6HFmEj78e2', NULL,
        'thien@gmail.com'),
       (14, 2, 'nguyen van thien', 'vanthien', '$2a$10$toO29ZvvON7m5P5AnTQ36u0q1MqkjMflwa4tIu20o9K6HFmEj78e2',
        '0364212233', 'thien123@gmail.com'),
       (15, 2, 'van', 'van', '$2a$10$B6cvjuY9Q/m7nLTfIwoUUe51kF/8cC6ssp7vupcjJkRKlAt4vUOrG', '', 'van@gmail.com');
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2018-12-26 22:15:36
