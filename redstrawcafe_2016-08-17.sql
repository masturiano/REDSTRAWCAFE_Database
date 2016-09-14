/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : redstrawcafe

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-08-17 00:02:38
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
INSERT INTO tbl_branch VALUES ('1', 'DO3', 'Puregold Zabarte', 'Zabarte Almar Caloocan', 'Ma.Anjellica B. San Miguel', '2147483647', '2421353', '2016-06-26 00:00:00', '2016-08-01 08:46:41');
INSERT INTO tbl_branch VALUES ('2', 'DO2', 'test2', 'test3', 'test4', '12345678901', '12345678901', '2016-07-07 22:26:55', '2016-08-01 08:46:23');

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
INSERT INTO tbl_items VALUES ('1', '1', 'Powder Base', '25kg/sackk', '1500.00', '2000.00', '2500.00', '202', '20', '2016-06-26 00:00:00', '2016-08-07 21:42:02');
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
INSERT INTO tbl_order_number VALUES ('354');

-- ----------------------------
-- Table structure for `tbl_purchase_order_details`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_purchase_order_details`;
CREATE TABLE `tbl_purchase_order_details` (
  `purchase_order_no` char(20) NOT NULL,
  `item_id` int(11) NOT NULL,
  `group_code` int(11) NOT NULL,
  `no_of_items` int(100) DEFAULT NULL,
  `unit_price` decimal(38,2) DEFAULT NULL,
  `buyer_price` decimal(38,2) DEFAULT NULL,
  `date_enter` datetime DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  PRIMARY KEY (`purchase_order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_purchase_order_details
-- ----------------------------
INSERT INTO tbl_purchase_order_details VALUES ('00000000000000000354', '1', '1', '202', '1500.00', '2000.00', '2016-08-16 23:33:10', null);

-- ----------------------------
-- Table structure for `tbl_purchase_order_header`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_purchase_order_header`;
CREATE TABLE `tbl_purchase_order_header` (
  `buyer` varchar(20) NOT NULL,
  `purchase_order_no` char(20) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `branch_no` varchar(20) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `amount` decimal(13,2) DEFAULT NULL,
  `date_enter` datetime DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  PRIMARY KEY (`purchase_order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_purchase_order_header
-- ----------------------------
INSERT INTO tbl_purchase_order_header VALUES ('0', '0', '0', '0', '0', '0', '0.00', '2016-08-16 22:37:43', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000228', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-01 20:02:01', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000229', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-01 20:18:53', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000231', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-01 20:19:49', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000232', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-01 20:49:20', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000233', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-01 20:50:24', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000234', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-01 20:51:04', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000235', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-01 20:55:59', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000236', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-01 20:58:04', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000237', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-05 21:47:43', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000238', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-05 21:58:00', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000245', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-05 22:27:17', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000246', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-05 22:45:11', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000247', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-05 22:45:40', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000277', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-05 23:55:24', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000278', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-06 23:21:04', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000279', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-06 23:47:07', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000280', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-06 23:49:29', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000281', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-06 23:49:46', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000282', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-06 23:50:05', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000283', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-06 23:50:26', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000284', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-06 23:50:43', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000285', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-06 23:51:08', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000286', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-06 23:51:28', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000287', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-07 21:43:23', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000289', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-07 21:59:47', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000290', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-07 22:07:00', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000291', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-07 22:09:20', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000292', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-07 22:09:50', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000293', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-07 23:05:17', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000294', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-07 23:24:11', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000295', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-07 23:25:03', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000296', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-07 23:45:06', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000297', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-07 23:46:01', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000298', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-07 23:47:14', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000299', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-07 23:48:10', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000300', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-07 23:50:52', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000301', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-07 23:51:21', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000302', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-07 23:52:29', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000303', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 18:30:19', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000304', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 18:32:25', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000305', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 18:35:06', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000306', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 18:45:36', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000307', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 18:47:33', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000308', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 18:53:27', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000309', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 18:53:49', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000310', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 19:06:05', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000311', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 19:15:29', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000312', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 19:16:10', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000313', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 19:18:41', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000314', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 19:24:22', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000315', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 19:25:59', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000316', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 20:21:55', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000317', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 20:23:31', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000318', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 20:25:30', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000319', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 21:02:14', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000320', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 21:05:43', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000321', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 22:02:10', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000322', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 22:03:59', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000323', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 22:05:06', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000324', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 22:36:56', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000325', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-08 23:08:20', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000326', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-10 21:34:57', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000327', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-10 22:59:44', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000328', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-10 23:25:08', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000329', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-11 00:08:38', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000330', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-11 00:11:35', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000331', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-11 00:13:03', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000332', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-13 23:14:16', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000333', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-13 23:43:54', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000334', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-14 00:23:35', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000337', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-14 00:45:12', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000338', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-14 01:05:30', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000339', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-14 01:12:33', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000340', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-14 01:25:56', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000341', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-14 01:37:36', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000342', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-14 01:39:35', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000343', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-14 02:06:36', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000345', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-14 02:14:59', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000346', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-16 22:06:27', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000347', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-16 22:11:13', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000348', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-16 22:37:28', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000349', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-16 22:39:55', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000350', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-16 22:47:16', null);
INSERT INTO tbl_purchase_order_header VALUES ('fran_price', '00000000000000000351', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-16 22:48:24', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000352', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-16 23:28:55', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000353', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-16 23:31:42', null);
INSERT INTO tbl_purchase_order_header VALUES ('rel_price', '00000000000000000354', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '0.00', '2016-08-16 23:33:02', null);

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
