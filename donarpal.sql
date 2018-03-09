/*
Navicat MySQL Data Transfer

Source Server         : JDBC
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : donarpal

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2017-12-27 01:00:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `fname` varchar(255) default NULL,
  `lname` varchar(255) default NULL,
  `id_num` varchar(255) NOT NULL,
  `tp_no` varchar(255) default NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) default NULL,
  `pic` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  PRIMARY KEY  (`id_num`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for `doner`
-- ----------------------------
DROP TABLE IF EXISTS `doner`;
CREATE TABLE `doner` (
  `id_no` varchar(255) NOT NULL,
  `fname` varchar(255) default NULL,
  `lname` varchar(255) default NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) default NULL,
  `occupation` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `tp_no` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  PRIMARY KEY  (`id_no`,`email`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of doner
-- ----------------------------
INSERT INTO `doner` VALUES ('902157816V', 'Amila', 'Perera', 'amila@gmail.com', 'Colombo 10', 'Manager', 'abcd', '077434066', 'available');

-- ----------------------------
-- Table structure for `doner_item`
-- ----------------------------
DROP TABLE IF EXISTS `doner_item`;
CREATE TABLE `doner_item` (
  `item_id` int(11) NOT NULL default '0',
  `doner_email` varchar(255) default NULL,
  `student_email` varchar(255) NOT NULL default '',
  `status` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`student_email`,`item_id`),
  KEY `item_id` (`item_id`),
  KEY `doner_email` (`doner_email`),
  CONSTRAINT `doner_item_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `doner_item_ibfk_2` FOREIGN KEY (`doner_email`) REFERENCES `doner` (`email`),
  CONSTRAINT `doner_item_ibfk_3` FOREIGN KEY (`student_email`) REFERENCES `student` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of doner_item
-- ----------------------------

-- ----------------------------
-- Table structure for `items`
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(11) NOT NULL auto_increment,
  `item_name` varchar(255) default NULL,
  `categary` varchar(255) default NULL,
  `qty` int(11) default NULL,
  `donerEmail` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `donerEmail` (`donerEmail`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`donerEmail`) REFERENCES `doner` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', 'text books', 'books', '5', null);
INSERT INTO `items` VALUES ('2', 'black shoes', 'shoes', '2', null);

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `fname` varchar(255) default NULL,
  `lname` varchar(255) default NULL,
  `gender` varchar(255) default NULL,
  `email` varchar(255) NOT NULL,
  `id_num` varchar(255) default NULL,
  `tp_no` varchar(255) default NULL,
  `school` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `pic` varchar(255) default NULL,
  `certification` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of student
-- ----------------------------
