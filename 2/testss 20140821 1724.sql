-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 3.10.227.1
-- Дата: 21.08.2014 17:25:06
-- Версия сервера: 5.1.53-community
-- Версия клиента: 4.1

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;

SET NAMES 'utf8';

--
-- Описание для таблицы users
--
CREATE TABLE users(
  id INT (6) NOT NULL AUTO_INCREMENT,
  username VARCHAR (75) NOT NULL,
  `password` VARCHAR (100) DEFAULT NULL,
  role VARCHAR (20) DEFAULT NULL,
  UNIQUE INDEX id USING BTREE (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 2
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы videos
--
CREATE TABLE videos(
  id INT (9) NOT NULL AUTO_INCREMENT,
  author VARCHAR (75) DEFAULT NULL,
  subject VARCHAR (255) DEFAULT NULL,
  href VARCHAR (255) DEFAULT NULL,
  active TINYINT (1) DEFAULT 0,
  UNIQUE INDEX id USING BTREE (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 44
CHARACTER SET utf8
COLLATE utf8_general_ci;

-- 
-- Вывод данных для таблицы users
-- 
INSERT INTO users VALUES(1, '123', '$2a$10$uIGNO1YTABMZj4s9X4WtSOgK0UNMjigFXfJzRhFUQSoArXg.6AfD.', 'admin');


-- 
-- Вывод данных для таблицы videos
-- 
INSERT INTO videos VALUES(1, 'Ололош', 'Madden NFL 15: Madden Season', '//www.youtube.com/embed/-DL0W9AUCuY', 1);
INSERT INTO videos VALUES(2, 'a', 'asdasd', '//www.youtube.com/embed/3jiwn7up3vk', 0);
INSERT INTO videos VALUES(3, 'Ололош', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 1);
INSERT INTO videos VALUES(4, 'admin', 'Некое видео', '//www.youtube.com/embed/YrKDj6a0N4o', 1);
INSERT INTO videos VALUES(5, 'qwewqe', 'qwewqe', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(6, 'ddd', 'vvv', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(7, 'Ололош', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/YrKDj6a0N4o', 0);
INSERT INTO videos VALUES(8, 'Ололош', 'asdasd', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(9, 'Ололош', 'asdasd', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(10, 'Ололош', 'asdasd', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(11, 'Ололош', 'asdasd', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(12, 'Ололош', 'asdasd', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(13, 'Ололош', 'asdasd', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(14, 'Ололош', 'asdasd', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(15, 'Ололош', 'asdasd', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(16, 'Ололош', 'asdasd', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(17, 'Ололош', 'asdasd', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(18, 'Ололош', 'asdasd', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(19, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(20, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(21, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(22, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(23, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(24, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(25, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(26, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(27, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(28, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(29, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(30, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(31, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(32, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(33, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(34, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(35, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(36, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(37, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(38, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(39, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(40, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(41, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(42, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);
INSERT INTO videos VALUES(43, 'a', 'Nicki Minaj - Anaconda', '//www.youtube.com/embed/LDZX4ooRsWs', 0);


/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;

