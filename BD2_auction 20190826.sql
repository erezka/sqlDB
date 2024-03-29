--
-- Script was generated by Devart dbForge Studio 2019 for MySQL, Version 8.2.23.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 26.08.2019 3:07:38
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
USE auction;

--
-- Drop table `bids`
--
DROP TABLE IF EXISTS bids;

--
-- Drop table `items`
--
DROP TABLE IF EXISTS items;

--
-- Drop table `users`
--
DROP TABLE IF EXISTS users;

--
-- Set default database
--
USE auction;

--
-- Create table `users`
--
CREATE TABLE users (
  user_id INT(11) NOT NULL AUTO_INCREMENT,
  full_name VARCHAR(45) DEFAULT NULL,
  billing_adress VARCHAR(100) DEFAULT NULL,
  login VARCHAR(20) DEFAULT NULL,
  password VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (user_id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

--
-- Create table `items`
--
CREATE TABLE items (
  item_id INT(11) NOT NULL AUTO_INCREMENT,
  title VARCHAR(100) DEFAULT NULL,
  description VARCHAR(100) DEFAULT NULL,
  start_price DOUBLE DEFAULT NULL,
  bid_increment DOUBLE DEFAULT NULL,
  start_date DATE DEFAULT NULL,
  stop_date DATE DEFAULT NULL,
  buy_it_now BINARY(20) DEFAULT NULL,
  users_user_id INT(11) DEFAULT NULL,
  PRIMARY KEY (item_id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

--
-- Create foreign key
--
ALTER TABLE items 
  ADD CONSTRAINT FK_items_users_user_id FOREIGN KEY (users_user_id)
    REFERENCES users(user_id);

--
-- Create table `bids`
--
CREATE TABLE bids (
  bid_id INT(11) NOT NULL AUTO_INCREMENT,
  bid_date DATE DEFAULT NULL,
  bid_value DOUBLE DEFAULT NULL,
  items_item_id INT(11) DEFAULT NULL,
  users_user_id INT(11) DEFAULT NULL,
  PRIMARY KEY (bid_id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

--
-- Create foreign key
--
ALTER TABLE bids 
  ADD CONSTRAINT FK_bids_items_item_id FOREIGN KEY (items_item_id)
    REFERENCES items(item_id);

--
-- Create foreign key
--
ALTER TABLE bids 
  ADD CONSTRAINT FK_bids_users_user_id FOREIGN KEY (users_user_id)
    REFERENCES users(user_id);

-- 
-- Dumping data for table users
--
INSERT INTO users VALUES
(1, 'Ivan Ivanov', 'Izhevsk, Lenina St. 10-23', 'boss', '123'),
(2, 'Roman Abramovich', 'Moskow, Arbat St. 12-1', '-', '-'),
(3, 'Max James', 'New York, St.jack St. 5', 'max', 'xam'),
(4, 'Konstantinos Dakascos', 'Athens, Hercules St. 10', 'zeus', '111'),
(6, 'Sergey Kovalev', '-', 'auctionist', 'master');

-- 
-- Dumping data for table items
--
INSERT INTO items VALUES
(1, 'Diadem', 'found in an ancient city of Ababva', 100000, 50000, '2019-01-01', '2019-12-31', x'5900000000000000000000000000000000000000', 6),
(2, 'Axe of Ares', 'given to the mankind by gods', 1000000, 500000, '2019-01-01', '2019-12-31', x'5900000000000000000000000000000000000000', 6),
(3, 'Crown of Wilgelm the Conqueror', 'once belonged to one of the most powerful rulers in history', 10000000, 5000000, '2019-01-01', '2019-12-31', x'5900000000000000000000000000000000000000', 6),
(4, 'Staff of Magnus', 'contains the power of magic', 7777777, 50000, '2019-01-01', '2019-12-31', x'5900000000000000000000000000000000000000', 6),
(5, 'Book of Dead', 'can grant a power to revive dead', 10000000, 5000000, '2019-01-01', '2019-12-31', x'5900000000000000000000000000000000000000', 6);

-- 
-- Dumping data for table bids
--
INSERT INTO bids VALUES
(1, '2019-01-24', 1500000, 2, 1),
(16, '2019-01-25', 2000000, 2, 2),
(17, '2019-01-25', 100000000, 1, 2),
(18, '2019-01-25', 150000000, 3, 2),
(19, '2019-01-25', 1500000, 4, 2),
(20, '2019-01-25', 9999999, 5, 2),
(21, '2019-03-20', 3000000, 2, 4),
(22, '2019-06-11', 7827777, 3, 3);

-- 
-- Restore previous SQL mode
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Enable foreign keys
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;