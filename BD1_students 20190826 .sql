--
-- Script was generated by Devart dbForge Studio 2019 for MySQL, Version 8.2.23.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 26.08.2019 1:41:35
-- Server version: 8.0.17
-- Client version: 4.1
--

-- 
-- Disable foreign keys
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Set SQL mode
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

--
-- Set default database
--
USE students;

--
-- Drop table `marks`
--
DROP TABLE IF EXISTS marks;

--
-- Drop table `student`
--
DROP TABLE IF EXISTS student;

--
-- Set default database
--
USE students;

--
-- Create table `student`
--
CREATE TABLE student (
  student_id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) DEFAULT NULL,
  `group` VARCHAR(45) DEFAULT NULL,
  sex VARCHAR(1) DEFAULT NULL,
  PRIMARY KEY (student_id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

--
-- Create table `marks`
--
CREATE TABLE marks (
  mark_id INT(11) NOT NULL AUTO_INCREMENT,
  subject VARCHAR(45) DEFAULT NULL,
  mark VARCHAR(45) DEFAULT NULL,
  student_id INT(11) DEFAULT NULL,
  PRIMARY KEY (mark_id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

--
-- Create foreign key
--
ALTER TABLE marks 
  ADD CONSTRAINT FK_marks_student_id FOREIGN KEY (student_id)
    REFERENCES student(student_id);

-- 
-- Dumping data for table student
--
INSERT INTO student VALUES
(1, 'Ivanov', 'first\r\n', 'm'),
(2, 'Petrov', 'first', 'm'),
(3, 'Sergeev', 'first', 'm'),
(4, 'Savina', 'first', 'f'),
(5, 'Sidorova', 'first', 'f'),
(6, 'Damorov', 'second', 'm'),
(7, 'Ramadzhanov', 'second', 'm'),
(8, 'Nazarov', 'second', 'm'),
(9, 'Damirov', 'second', 'm'),
(10, 'Svetikova', 'second', 'f');

-- 
-- Dumping data for table marks
--
INSERT INTO marks VALUES
(1, 'java', '3', 1),
(2, 'math', '5', 1),
(3, 'gaming', '5', 1),
(4, 'gym', '4', 1),
(5, 'java', '2', 2),
(6, 'math', '5', 2),
(7, 'gaming', '2', 2),
(8, 'gym', '3', 2),
(9, 'java', '2', 3),
(10, 'math', '5', 3),
(11, 'gaming', '3', 3),
(12, 'gym', '4', 3),
(13, 'java', '3', 4),
(14, 'math', '4', 4),
(15, 'gaming', '5', 4),
(16, 'gym', '5', 4),
(17, 'java', '2', 5),
(18, 'math', '5', 5),
(19, 'gaming', '3', 5),
(20, 'gym', '3', 5),
(21, 'java', '2', 6),
(22, 'math', '2', 6),
(23, 'gaming', '2', 6),
(24, 'gym', '2', 6),
(25, 'java', '4', 7),
(26, 'math', '3', 7),
(27, 'gaming', '5', 7),
(28, 'gym', '2', 7),
(29, 'java', '2', 8),
(30, 'math', '2', 8),
(31, 'gaming', '3', 8),
(32, 'gym', '2', 8),
(33, 'java', '4', 9),
(34, 'math', '4', 9),
(35, 'gaming', '5', 9),
(36, 'gym', '2', 9),
(37, 'java', '3', 10),
(38, 'math', '5', 10),
(39, 'gaming', '3', 10),
(40, 'gym', '5', 10);

-- 
-- Restore previous SQL mode
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Enable foreign keys
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;