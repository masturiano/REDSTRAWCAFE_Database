/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : redstrawcafe

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-07-26 00:20:21
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tbl_branch`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_branch`;
CREATE TABLE `tbl_branch` (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_no` varchar(20) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `mobile_no` bigint(11) DEFAULT NULL,
  `tel_no` bigint(11) DEFAULT NULL,
  `date_enter` datetime DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_branch
-- ----------------------------
INSERT INTO tbl_branch VALUES ('1', 'DO2', 'Puregold Zabarte', 'Zabarte Almar Caloocan', 'Ma.Anjellica B. San Miguel', '2147483647', '2421353', '2016-06-26 00:00:00', null);
INSERT INTO tbl_branch VALUES ('2', 'DO3', 'test2', 'test3', 'test4', '12345678901', '12345678901', '2016-07-07 22:26:55', '2016-07-17 14:18:09');

-- ----------------------------
-- Table structure for `tbl_items`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_items`;
CREATE TABLE `tbl_items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_code` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `packaging` varchar(255) DEFAULT NULL,
  `unit_price` decimal(38,2) DEFAULT NULL,
  `rel_price` decimal(38,2) DEFAULT NULL,
  `fran_price` decimal(38,2) DEFAULT NULL,
  `no_of_items` int(100) DEFAULT NULL,
  `lower_limit` int(100) DEFAULT NULL,
  `date_enter` datetime DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_items
-- ----------------------------
INSERT INTO tbl_items VALUES ('1', '1', 'Powder Base', '25kg/sackk', '1500.00', '2000.00', '2500.00', '201', '20', '2016-06-26 00:00:00', '2016-07-19 00:01:25');
INSERT INTO tbl_items VALUES ('2', '1', 'CHOCO SYRUP', '5kg/gal', '606.00', '679.00', '727.00', '125', '10', '2016-06-26 00:00:00', '2016-07-20 22:31:23');
INSERT INTO tbl_items VALUES ('3', '1', 'CARAMEL SYRUP', '5kg/gal', '390.00', '450.00', '468.00', '100', '10', '2016-06-26 00:00:00', null);
INSERT INTO tbl_items VALUES ('4', '2', 'SHORT (8oz)', null, '310.00', '350.00', '403.00', '100', '10', '2016-06-26 00:00:00', null);
INSERT INTO tbl_items VALUES ('5', '2', 'TALL (12oz)', '100pcs', '310.00', '350.00', '403.00', '100', '10', '2016-06-26 00:00:00', null);
INSERT INTO tbl_items VALUES ('6', '2', 'GRANDE (16oz)', '100pcs', '340.00', '400.00', '455.00', '100', '9', '2016-06-26 00:00:00', '2016-07-17 14:23:41');
INSERT INTO tbl_items VALUES ('7', '3', 'JTC HEAVY DUTY BLENDER', '1pc', '11500.00', '13800.00', '13800.00', '100', '10', '2016-06-26 00:00:00', null);
INSERT INTO tbl_items VALUES ('8', '3', 'COFFEE MAKER (Imarflex)', '1pc', '1500.00', '1800.00', '1800.00', '100', '10', '2016-06-26 00:00:00', null);
INSERT INTO tbl_items VALUES ('9', '3', 'COFFEE MAKER (Kyowa)', '1pc', '800.00', '960.00', '960.00', '100', '10', '2016-06-26 00:00:00', null);

-- ----------------------------
-- Table structure for `tbl_item_group`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_item_group`;
CREATE TABLE `tbl_item_group` (
  `group_code` int(11) NOT NULL,
  `group_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`group_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_item_group
-- ----------------------------
INSERT INTO tbl_item_group VALUES ('1', 'Ingredients');
INSERT INTO tbl_item_group VALUES ('2', 'Non-food');
INSERT INTO tbl_item_group VALUES ('3', 'Equipments');

-- ----------------------------
-- Table structure for `tbl_order_number`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_number`;
CREATE TABLE `tbl_order_number` (
  `last_order_no` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_order_number
-- ----------------------------
INSERT INTO tbl_order_number VALUES ('22');

-- ----------------------------
-- Table structure for `tbl_users`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_code` int(11) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_pass` varchar(50) DEFAULT NULL,
  `user_stat` char(1) DEFAULT NULL,
  `date_enter` datetime DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  `ip_address` varchar(13) DEFAULT NULL,
  `log` int(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_users
-- ----------------------------
INSERT INTO tbl_users VALUES ('1', '1', 'Mydel Asturiano', 'masturiano', 'bWFzdHVyaWFubw==', 'A', '2016-06-20 00:00:00', '2016-06-27 08:56:58', null, '1');
INSERT INTO tbl_users VALUES ('2', '3', 'Mydzell Arann T. Asturiano', 'matasturiano', 'bWF0YXN0dXJpYW5v', 'A', '2016-06-26 23:10:46', '2016-06-27 09:06:29', '', '0');
INSERT INTO tbl_users VALUES ('3', '3', 'Jhayzel Anne T. Asturiano', 'jatasturiano', 'amF0YXN0dXJpYW5v', 'A', '2016-06-26 23:11:35', null, '', '0');

-- ----------------------------
-- Table structure for `tbl_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_group`;
CREATE TABLE `tbl_user_group` (
  `group_code` int(11) NOT NULL,
  `group_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`group_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user_group
-- ----------------------------
INSERT INTO tbl_user_group VALUES ('1', 'ADMINISTRATOR');
INSERT INTO tbl_user_group VALUES ('2', 'OWNER');
INSERT INTO tbl_user_group VALUES ('3', 'USER');

-- ----------------------------
-- Table structure for `tbl_user_stat`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_stat`;
CREATE TABLE `tbl_user_stat` (
  `user_stat` char(1) DEFAULT NULL,
  `user_stat_description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user_stat
-- ----------------------------
INSERT INTO tbl_user_stat VALUES ('A', 'Active');
INSERT INTO tbl_user_stat VALUES ('I', 'Inactive');

-- ----------------------------
-- Procedure structure for `ORDER_NUMBER_SERIES`
-- ----------------------------
DROP PROCEDURE IF EXISTS `ORDER_NUMBER_SERIES`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ORDER_NUMBER_SERIES`()
BEGIN
	
	UPDATE
		tbl_order_number
	SET
		last_order_no=last_order_no+1;

	SELECT 
		last_order_no
	FROM 
		tbl_order_number;

END
;;
DELIMITER ;
