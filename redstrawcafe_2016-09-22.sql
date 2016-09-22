/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : redstrawcafe

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-09-22 23:38:23
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
INSERT INTO `tbl_branch` VALUES ('1', 'DO3', 'Puregold Zabarte', 'Zabarte Almar Caloocan', 'Ma.Anjellica B. San Miguel', '2147483647', '2421353', '2016-06-26 00:00:00', '2016-08-01 08:46:41');
INSERT INTO `tbl_branch` VALUES ('2', 'DO2', 'test2', 'test3', 'test4', '12345678901', '12345678901', '2016-07-07 22:26:55', '2016-08-01 08:46:23');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_items
-- ----------------------------
INSERT INTO `tbl_items` VALUES ('1', '1', 'Powder Base', '25kg/sackk', '1500.00', '2000.00', '2500.00', '114', '20', '2016-06-26 00:00:00', '2016-09-22 23:28:49');
INSERT INTO `tbl_items` VALUES ('2', '1', 'CHOCO SYRUP', '5kg/gal', '606.00', '679.00', '727.00', '52', '10', '2016-06-26 00:00:00', '2016-09-22 23:28:56');
INSERT INTO `tbl_items` VALUES ('3', '1', 'CARAMEL SYRUP', '5kg/gal', '390.00', '450.00', '468.00', '56', '10', '2016-06-26 00:00:00', '2016-09-22 23:29:05');
INSERT INTO `tbl_items` VALUES ('4', '2', 'SHORT (8oz)', 'none', '310.00', '350.00', '403.00', '100', '10', '2016-06-26 00:00:00', '2016-09-18 22:06:23');
INSERT INTO `tbl_items` VALUES ('5', '2', 'TALL (12oz)', '100pcs', '310.00', '350.00', '403.00', '96', '10', '2016-06-26 00:00:00', '2016-09-18 14:42:30');
INSERT INTO `tbl_items` VALUES ('6', '2', 'GRANDE (16oz)', '100pcs', '340.00', '400.00', '455.00', '98', '9', '2016-06-26 00:00:00', '2016-09-22 23:25:19');
INSERT INTO `tbl_items` VALUES ('7', '3', 'JTC HEAVY DUTY BLENDER', '1pc', '11500.00', '13800.00', '13800.00', '98', '10', '2016-06-26 00:00:00', '2016-09-22 23:25:12');
INSERT INTO `tbl_items` VALUES ('8', '3', 'COFFEE MAKER (Imarflex)', '1pc', '1500.00', '1800.00', '1800.00', '100', '10', '2016-06-26 00:00:00', '2016-09-18 14:55:02');
INSERT INTO `tbl_items` VALUES ('9', '3', 'COFFEE MAKER (Kyowa)', '1pc', '800.00', '960.00', '960.00', '100', '10', '2016-06-26 00:00:00', '2016-09-18 14:45:34');
INSERT INTO `tbl_items` VALUES ('10', '1', 'item1', 'item1', '1.00', '2.00', '3.00', '107', '11', '2016-09-22 23:16:40', '2016-09-22 23:29:13');
INSERT INTO `tbl_items` VALUES ('11', '1', 'item2', 'item2', '1.00', '2.00', '3.00', '107', '11', '2016-09-22 23:17:13', '2016-09-22 23:29:21');
INSERT INTO `tbl_items` VALUES ('12', '1', 'item3', 'item3', '1.00', '2.00', '3.00', '107', '11', '2016-09-22 23:17:44', '2016-09-22 23:29:29');
INSERT INTO `tbl_items` VALUES ('13', '1', 'item4', 'item4', '1.00', '2.00', '3.00', '107', '11', '2016-09-22 23:18:20', '2016-09-22 23:29:38');
INSERT INTO `tbl_items` VALUES ('14', '1', 'item5', 'item5', '1.00', '2.00', '3.00', '107', '11', '2016-09-22 23:18:50', '2016-09-22 23:29:46');
INSERT INTO `tbl_items` VALUES ('15', '1', 'item6', 'item6', '1.00', '2.00', '3.00', '107', '11', '2016-09-22 23:19:19', '2016-09-22 23:29:54');

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
INSERT INTO `tbl_item_group` VALUES ('1', 'Ingredients');
INSERT INTO `tbl_item_group` VALUES ('2', 'Non-food');
INSERT INTO `tbl_item_group` VALUES ('3', 'Equipments');

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
INSERT INTO `tbl_order_number` VALUES ('586');

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
  `input_no_of_items` int(100) DEFAULT NULL,
  `added_price` decimal(38,2) DEFAULT NULL,
  `date_enter` datetime DEFAULT NULL,
  `date_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_purchase_order_details
-- ----------------------------
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000566', '1', '1', '154', '1500.00', '2000.00', '2', '4000.00', '2016-09-18 14:37:16', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000566', '2', '1', '88', '606.00', '679.00', '2', '1358.00', '2016-09-18 14:38:47', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000566', '3', '1', '74', '390.00', '450.00', '2', '900.00', '2016-09-18 14:40:15', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000566', '6', '2', '96', '340.00', '400.00', '2', '800.00', '2016-09-18 14:41:51', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000566', '5', '2', '98', '310.00', '350.00', '2', '700.00', '2016-09-18 14:42:30', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000567', '1', '1', '152', '1500.00', '2500.00', '2', '5000.00', '2016-09-18 15:40:31', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000567', '2', '1', '86', '606.00', '727.00', '2', '1454.00', '2016-09-18 15:40:41', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000568', '1', '1', '150', '1500.00', '2000.00', '2', '4000.00', '2016-09-18 22:10:38', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000568', '2', '1', '84', '606.00', '679.00', '2', '1358.00', '2016-09-18 22:10:51', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000568', '3', '1', '72', '390.00', '450.00', '2', '900.00', '2016-09-18 22:11:03', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000569', '1', '1', '148', '1500.00', '2000.00', '2', '4000.00', '2016-09-19 05:26:42', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000569', '2', '1', '82', '606.00', '679.00', '2', '1358.00', '2016-09-19 05:26:56', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000569', '3', '1', '70', '390.00', '450.00', '2', '900.00', '2016-09-19 05:27:06', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000570', '1', '1', '146', '1500.00', '2000.00', '2', '4000.00', '2016-09-19 17:17:03', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000570', '2', '1', '80', '606.00', '679.00', '2', '1358.00', '2016-09-19 17:17:13', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000571', '1', '1', '144', '1500.00', '2000.00', '2', '4000.00', '2016-09-19 17:37:27', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000571', '2', '1', '78', '606.00', '679.00', '2', '1358.00', '2016-09-19 17:37:35', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000572', '1', '1', '142', '1500.00', '2500.00', '2', '5000.00', '2016-09-19 17:43:01', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000572', '2', '1', '76', '606.00', '727.00', '2', '1454.00', '2016-09-19 17:43:09', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000573', '1', '1', '140', '1500.00', '2000.00', '2', '4000.00', '2016-09-19 17:45:50', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000573', '2', '1', '74', '606.00', '679.00', '2', '1358.00', '2016-09-19 17:45:59', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000574', '1', '1', '138', '1500.00', '2500.00', '2', '5000.00', '2016-09-19 17:48:35', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000576', '1', '1', '136', '1500.00', '2000.00', '2', '4000.00', '2016-09-19 18:06:26', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000577', '1', '1', '134', '1500.00', '2000.00', '2', '4000.00', '2016-09-19 18:14:32', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000577', '2', '1', '72', '606.00', '679.00', '2', '1358.00', '2016-09-19 18:14:42', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000578', '1', '1', '132', '1500.00', '2500.00', '2', '5000.00', '2016-09-19 21:36:38', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000578', '2', '1', '70', '606.00', '727.00', '2', '1454.00', '2016-09-19 21:36:45', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000578', '3', '1', '68', '390.00', '468.00', '2', '936.00', '2016-09-19 21:45:05', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000579', '1', '1', '130', '1500.00', '2000.00', '2', '4000.00', '2016-09-21 22:37:17', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000579', '2', '1', '68', '606.00', '679.00', '2', '1358.00', '2016-09-21 22:39:11', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000580', '1', '1', '128', '1500.00', '2000.00', '2', '4000.00', '2016-09-22 21:52:21', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000580', '2', '1', '66', '606.00', '679.00', '2', '1358.00', '2016-09-22 21:52:32', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000581', '1', '1', '126', '1500.00', '2000.00', '2', '4000.00', '2016-09-22 22:01:30', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000581', '2', '1', '64', '606.00', '679.00', '2', '1358.00', '2016-09-22 22:01:39', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000582', '1', '1', '124', '1500.00', '2000.00', '2', '4000.00', '2016-09-22 23:04:53', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000582', '2', '1', '62', '606.00', '679.00', '2', '1358.00', '2016-09-22 23:05:02', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000582', '3', '1', '66', '390.00', '450.00', '2', '900.00', '2016-09-22 23:05:10', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000583', '1', '1', '122', '1500.00', '2000.00', '2', '4000.00', '2016-09-22 23:10:54', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000583', '2', '1', '60', '606.00', '679.00', '2', '1358.00', '2016-09-22 23:11:03', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000583', '3', '1', '64', '390.00', '450.00', '2', '900.00', '2016-09-22 23:11:11', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000584', '1', '1', '120', '1500.00', '2000.00', '2', '4000.00', '2016-09-22 23:13:05', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000584', '2', '1', '58', '606.00', '679.00', '2', '1358.00', '2016-09-22 23:13:14', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000584', '3', '1', '62', '390.00', '450.00', '2', '900.00', '2016-09-22 23:13:25', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000585', '1', '1', '118', '1500.00', '2000.00', '2', '4000.00', '2016-09-22 23:20:33', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000585', '2', '1', '56', '606.00', '679.00', '2', '1358.00', '2016-09-22 23:20:43', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000585', '3', '1', '60', '390.00', '450.00', '2', '900.00', '2016-09-22 23:20:55', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000585', '10', '1', '111', '1.00', '2.00', '2', '4.00', '2016-09-22 23:22:55', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000585', '11', '1', '111', '1.00', '2.00', '2', '4.00', '2016-09-22 23:23:08', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000585', '12', '1', '111', '1.00', '2.00', '2', '4.00', '2016-09-22 23:23:17', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000585', '13', '1', '111', '1.00', '2.00', '2', '4.00', '2016-09-22 23:23:55', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000585', '14', '1', '111', '1.00', '2.00', '2', '4.00', '2016-09-22 23:24:12', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000585', '15', '1', '111', '1.00', '2.00', '2', '4.00', '2016-09-22 23:24:20', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000585', '7', '3', '100', '11500.00', '13800.00', '2', '27600.00', '2016-09-22 23:25:12', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000585', '6', '2', '100', '340.00', '400.00', '2', '800.00', '2016-09-22 23:25:19', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000586', '1', '1', '116', '1500.00', '2000.00', '2', '4000.00', '2016-09-22 23:28:49', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000586', '2', '1', '54', '606.00', '679.00', '2', '1358.00', '2016-09-22 23:28:56', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000586', '3', '1', '58', '390.00', '450.00', '2', '900.00', '2016-09-22 23:29:05', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000586', '10', '1', '109', '1.00', '2.00', '2', '4.00', '2016-09-22 23:29:13', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000586', '11', '1', '109', '1.00', '2.00', '2', '4.00', '2016-09-22 23:29:21', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000586', '12', '1', '109', '1.00', '2.00', '2', '4.00', '2016-09-22 23:29:29', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000586', '13', '1', '109', '1.00', '2.00', '2', '4.00', '2016-09-22 23:29:38', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000586', '14', '1', '109', '1.00', '2.00', '2', '4.00', '2016-09-22 23:29:46', null);
INSERT INTO `tbl_purchase_order_details` VALUES ('00000000000000000586', '15', '1', '109', '1.00', '2.00', '2', '4.00', '2016-09-22 23:29:54', null);

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
INSERT INTO `tbl_purchase_order_header` VALUES ('rel_price', '00000000000000000566', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '7758.00', '2016-09-18 14:36:50', '2016-09-18 14:56:08');
INSERT INTO `tbl_purchase_order_header` VALUES ('fran_price', '00000000000000000567', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '6454.00', '2016-09-18 15:40:16', '2016-09-18 15:40:41');
INSERT INTO `tbl_purchase_order_header` VALUES ('rel_price', '00000000000000000568', '2', 'DO2', 'test2', 'test4', '6258.00', '2016-09-18 22:10:28', '2016-09-18 22:11:03');
INSERT INTO `tbl_purchase_order_header` VALUES ('rel_price', '00000000000000000569', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '6258.00', '2016-09-19 05:26:32', '2016-09-19 05:27:06');
INSERT INTO `tbl_purchase_order_header` VALUES ('rel_price', '00000000000000000570', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '5358.00', '2016-09-19 17:13:28', '2016-09-19 17:17:13');
INSERT INTO `tbl_purchase_order_header` VALUES ('rel_price', '00000000000000000571', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '5358.00', '2016-09-19 17:37:19', '2016-09-19 17:37:35');
INSERT INTO `tbl_purchase_order_header` VALUES ('fran_price', '00000000000000000572', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '6454.00', '2016-09-19 17:42:50', '2016-09-19 17:43:09');
INSERT INTO `tbl_purchase_order_header` VALUES ('rel_price', '00000000000000000573', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '5358.00', '2016-09-19 17:45:42', '2016-09-19 17:45:59');
INSERT INTO `tbl_purchase_order_header` VALUES ('fran_price', '00000000000000000574', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '5000.00', '2016-09-19 17:48:26', '2016-09-19 17:48:35');
INSERT INTO `tbl_purchase_order_header` VALUES ('rel_price', '00000000000000000575', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', null, '2016-09-19 17:59:02', '2016-09-19 18:03:22');
INSERT INTO `tbl_purchase_order_header` VALUES ('rel_price', '00000000000000000576', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '4000.00', '2016-09-19 18:06:16', '2016-09-19 18:06:26');
INSERT INTO `tbl_purchase_order_header` VALUES ('rel_price', '00000000000000000577', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '5358.00', '2016-09-19 18:14:24', '2016-09-19 18:14:42');
INSERT INTO `tbl_purchase_order_header` VALUES ('fran_price', '00000000000000000578', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '7390.00', '2016-09-19 21:35:28', '2016-09-19 21:45:05');
INSERT INTO `tbl_purchase_order_header` VALUES ('rel_price', '00000000000000000579', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '5358.00', '2016-09-21 22:37:05', '2016-09-21 22:39:11');
INSERT INTO `tbl_purchase_order_header` VALUES ('rel_price', '00000000000000000580', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '5358.00', '2016-09-22 21:52:11', '2016-09-22 21:52:32');
INSERT INTO `tbl_purchase_order_header` VALUES ('rel_price', '00000000000000000581', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '5358.00', '2016-09-22 22:01:20', '2016-09-22 22:01:39');
INSERT INTO `tbl_purchase_order_header` VALUES ('rel_price', '00000000000000000582', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '6258.00', '2016-09-22 23:04:45', '2016-09-22 23:05:10');
INSERT INTO `tbl_purchase_order_header` VALUES ('rel_price', '00000000000000000583', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '6258.00', '2016-09-22 23:10:45', '2016-09-22 23:11:11');
INSERT INTO `tbl_purchase_order_header` VALUES ('rel_price', '00000000000000000584', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '6258.00', '2016-09-22 23:12:55', '2016-09-22 23:13:25');
INSERT INTO `tbl_purchase_order_header` VALUES ('rel_price', '00000000000000000585', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '34682.00', '2016-09-22 23:20:24', '2016-09-22 23:25:19');
INSERT INTO `tbl_purchase_order_header` VALUES ('rel_price', '00000000000000000586', '1', 'DO3', 'Puregold Zabarte', 'Ma.Anjellica B. San Miguel', '6282.00', '2016-09-22 23:28:39', '2016-09-22 23:29:54');

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
INSERT INTO `tbl_users` VALUES ('1', '1', 'Mydel Asturiano', 'masturiano', 'bWFzdHVyaWFubw==', 'A', '2016-06-20 00:00:00', '2016-06-27 08:56:58', null, '1');
INSERT INTO `tbl_users` VALUES ('2', '3', 'Mydzell Arann T. Asturiano', 'matasturiano', 'bWF0YXN0dXJpYW5v', 'A', '2016-06-26 23:10:46', '2016-06-27 09:06:29', '', '0');
INSERT INTO `tbl_users` VALUES ('3', '3', 'Jhayzel Anne T. Asturiano', 'jatasturiano', 'amF0YXN0dXJpYW5v', 'A', '2016-06-26 23:11:35', null, '', '0');

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
INSERT INTO `tbl_user_group` VALUES ('1', 'ADMINISTRATOR');
INSERT INTO `tbl_user_group` VALUES ('2', 'OWNER');
INSERT INTO `tbl_user_group` VALUES ('3', 'USER');

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
INSERT INTO `tbl_user_stat` VALUES ('A', 'Active');
INSERT INTO `tbl_user_stat` VALUES ('I', 'Inactive');

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
