/*
 Navicat Premium Data Transfer

 Source Server         : 芬兰
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : common-admin

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 22/08/2019 08:40:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config_mes
-- ----------------------------
DROP TABLE IF EXISTS `config_mes`;
CREATE TABLE `config_mes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productNum` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `CoName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CoOwnArea` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CoIp` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CoPort` int(10) DEFAULT NULL,
  `CoAPN` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CoDomain` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CoRemarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ConfValveModel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ConfPktSer` int(10) DEFAULT NULL,
  `ConfDeviceType` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ConfCoNum` int(10) DEFAULT NULL,
  `ConfDeviceAddr` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ConfUserAddr` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ConfUpTime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ConfUpCyc` int(10) DEFAULT NULL,
  `ConfVolType` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ConfPayType` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ConfValveType` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ConfAlarmVol` int(10) DEFAULT NULL,
  `ConfOverFlowCoef` int(10) DEFAULT NULL,
  `ConfReserveVol` int(10) DEFAULT NULL,
  `ConfRechargeLimit` int(10) DEFAULT NULL,
  `ConfPulse` decimal(5, 2) DEFAULT NULL,
  `ConfReserveFlag` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ConfPayDay` int(10) DEFAULT NULL,
  `ConfPayCyc` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ConfAllowVol` int(10) DEFAULT NULL,
  `ConfOpenTime` decimal(5, 1) DEFAULT NULL,
  `ConfCloseTime` decimal(5, 1) DEFAULT NULL,
  `ConfSignalSrc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ConfChan1` int(10) DEFAULT NULL,
  `ConfPower1` int(10) DEFAULT NULL,
  `ConfChan2` int(10) DEFAULT NULL,
  `ConfPower2` int(10) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `ConfPayCycNum` int(10) DEFAULT NULL,
  `microleakageTime` int(10) DEFAULT NULL,
  `noContactTime` int(10) DEFAULT NULL,
  `noUseGasDay` int(10) DEFAULT NULL,
  `flowmeter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fourVersion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for distribut_number
-- ----------------------------
DROP TABLE IF EXISTS `distribut_number`;
CREATE TABLE `distribut_number`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telNum` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `controlMainNum` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telMainNum` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fourMainNum` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operator` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operatorTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100030 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of distribut_number
-- ----------------------------
INSERT INTO `distribut_number` VALUES (100029, '666', '100120190817000001', '100120190817000002', '100120190817000003', '正常', '', 'super', '2019-08-17 13:56:44');

-- ----------------------------
-- Table structure for goods_instock
-- ----------------------------
DROP TABLE IF EXISTS `goods_instock`;
CREATE TABLE `goods_instock`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `specifications` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsProduceDate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsNums` int(11) DEFAULT NULL,
  `supplierName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pipelineNumber` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operators` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cardNums` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `IMSI` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `IMEI` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ICCID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operator` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operatorTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `local` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 114301 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_instock
-- ----------------------------
INSERT INTO `goods_instock` VALUES (114285, '阀门', '快关低压角阀', 'DN50', '2019-08-17 00:00:00', '正常', 1, '湖州金辰', '100620190817000001', '', '', '', '', '', '', 'super', '2019-08-17 13:53:25', '浙江');
INSERT INTO `goods_instock` VALUES (114286, '主板', '控制主板', '金额V1.01', '2019-08-17 00:00:00', '正常', 1, '平衡线', '100120190817000001', '', '', '', '', '', '', 'super', '2019-08-17 13:55:02', '宁波');
INSERT INTO `goods_instock` VALUES (114287, '主板', '通讯主板', '移动NB-IOT', '2019-08-17 00:00:00', '正常', 1, '平衡线', '100120190817000002', '', '', '', '', '', '', 'super', '2019-08-17 13:55:25', '宁波');
INSERT INTO `goods_instock` VALUES (114288, '主板', '485主板', 'test', '2019-08-17 00:00:00', '正常', 1, '平衡线', '100120190817000003', '', '', '', '', '', '', 'super', '2019-08-17 13:55:47', '宁波');
INSERT INTO `goods_instock` VALUES (114289, '阀门', '快关低压角阀', 'DN25', '2019-08-19 00:00:00', '正常', 1, '湖州金辰', '100820190817000001', '1', '2', '3', '4', '5', '6', 'super', '2019-08-19 09:15:42', '浙江');
INSERT INTO `goods_instock` VALUES (114290, '阀门', '快关低压角阀', 'DN25', '2019-08-19 00:00:00', '正常', 1, '湖州金辰', '100820190817000002', '1', '2', '3', '4', '5', '6', 'super', '2019-08-19 09:15:42', '浙江');
INSERT INTO `goods_instock` VALUES (114291, '阀门', '快关低压直阀', 'DN50', '2019-08-19 00:00:00', '正常', 1, '湖州金辰', '100620190819000001', '', '', '', '', '', '', 'super', '2019-08-19 09:21:10', '浙江');
INSERT INTO `goods_instock` VALUES (114292, '阀门', '快关低压直阀', 'DN50', '2019-08-19 00:00:00', '正常', 1, '湖州金辰', '100620190819000002', '', '', '', '', '', '', 'super', '2019-08-19 09:21:10', '浙江');
INSERT INTO `goods_instock` VALUES (114293, '阀门', '快关低压直阀', 'DN50', '2019-08-19 00:00:00', '正常', 1, '湖州金辰', '100620190819000003', '', '', '', '', '', '', 'super', '2019-08-19 09:21:10', '浙江');
INSERT INTO `goods_instock` VALUES (114294, '阀门', '快关低压直阀', 'DN50', '2019-08-19 00:00:00', '正常', 1, '湖州金辰', '100620190819000004', '', '', '', '', '', '', 'super', '2019-08-19 09:21:10', '浙江');
INSERT INTO `goods_instock` VALUES (114295, '阀门', '快关低压直阀', 'DN50', '2019-08-19 00:00:00', '正常', 1, '湖州金辰', '100620190819000005', '', '', '', '', '', '', 'super', '2019-08-19 09:21:10', '浙江');
INSERT INTO `goods_instock` VALUES (114296, '阀门', '快关低压直阀', 'DN50', '2019-08-19 00:00:00', '正常', 1, '湖州金辰', '100620190819000006', '', '', '', '', '', '', 'super', '2019-08-19 09:21:10', '浙江');
INSERT INTO `goods_instock` VALUES (114297, '阀门', '快关低压直阀', 'DN50', '2019-08-19 00:00:00', '正常', 1, '湖州金辰', '100620190819000007', '', '', '', '', '', '', 'super', '2019-08-19 09:21:10', '浙江');
INSERT INTO `goods_instock` VALUES (114298, '阀门', '快关低压直阀', 'DN50', '2019-08-19 00:00:00', '正常', 1, '湖州金辰', '100620190819000008', '', '', '', '', '', '', 'super', '2019-08-19 09:21:10', '浙江');
INSERT INTO `goods_instock` VALUES (114299, '阀门', '快关低压直阀', 'DN50', '2019-08-19 00:00:00', '正常', 1, '湖州金辰', '100620190819000009', '', '', '', '', '', '', 'super', '2019-08-19 09:21:10', '浙江');
INSERT INTO `goods_instock` VALUES (114300, '阀门', '快关低压直阀', 'DN50', '2019-08-19 00:00:00', '正常', 1, '湖州金辰', '100620190819000010', '', '', '', '', '', '', 'super', '2019-08-19 09:21:10', '浙江');

-- ----------------------------
-- Table structure for goods_outstock
-- ----------------------------
DROP TABLE IF EXISTS `goods_outstock`;
CREATE TABLE `goods_outstock`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `specifications` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsProduceDate` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `outStockType` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `supplierName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pipelineNumber` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operator` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operatorTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `local` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_outstock
-- ----------------------------
INSERT INTO `goods_outstock` VALUES (3, '阀门', '快关低压角阀', 'DN25', NULL, '正常', '/', 1, '湖州金辰', '/', '0', 'super', '2019-08-17 08:18:12', '浙江');
INSERT INTO `goods_outstock` VALUES (4, '阀门', '快关低压直阀', 'DN50', NULL, '正常', '生产', 2, '湖州金辰', '/', '', 'super', '2019-08-19 10:05:08', '浙江');
INSERT INTO `goods_outstock` VALUES (5, '阀门', '快关低压直阀', 'DN50', NULL, '正常', '', 2, '湖州金辰', '/', '', 'super', '2019-08-19 10:30:09', '浙江');
INSERT INTO `goods_outstock` VALUES (6, '阀门', '快关低压角阀', 'DN50', NULL, '正常', '', 1, '湖州金辰', '/', '', 'super', '2019-08-19 15:14:11', '浙江');
INSERT INTO `goods_outstock` VALUES (7, '阀门', '快关低压直阀', 'DN50', NULL, '正常', '1', 1, '湖州金辰', '/', '', 'super', '2019-08-19 15:55:06', '浙江');

-- ----------------------------
-- Table structure for goods_regstock
-- ----------------------------
DROP TABLE IF EXISTS `goods_regstock`;
CREATE TABLE `goods_regstock`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `specifications` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsProduceDate` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `reason` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `department` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `supplierName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operator` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operatorTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `local` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_stock
-- ----------------------------
DROP TABLE IF EXISTS `goods_stock`;
CREATE TABLE `goods_stock`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `specifications` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsProduceDate` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsStock` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `supplierName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operator` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operatorTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `local` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100063 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_stock
-- ----------------------------
INSERT INTO `goods_stock` VALUES (100058, '主板', '控制主板', '金额V1.01', '2019-08-17', '原材料仓', 1, '平衡线', '', 'super', '2019-08-17 13:55:02', '宁波');
INSERT INTO `goods_stock` VALUES (100059, '主板', '通讯主板', '移动NB-IOT', '2019-08-17', '原材料仓', 1, '平衡线', '', 'super', '2019-08-17 13:55:25', '宁波');
INSERT INTO `goods_stock` VALUES (100060, '主板', '485主板', 'test', '2019-08-17', '原材料仓', 1, '平衡线', '', 'super', '2019-08-17 13:55:47', '宁波');
INSERT INTO `goods_stock` VALUES (100061, '阀门', '快关低压角阀', 'DN25', '2019-08-19', '原材料仓', 2, '湖州金辰', '6', 'super', '2019-08-19 09:15:42', '浙江');
INSERT INTO `goods_stock` VALUES (100062, '阀门', '快关低压直阀', 'DN50', '2019-08-19', '原材料仓', 5, '湖州金辰', '', 'super', '2019-08-19 15:55:06', '浙江');

-- ----------------------------
-- Table structure for over_goods_instock
-- ----------------------------
DROP TABLE IF EXISTS `over_goods_instock`;
CREATE TABLE `over_goods_instock`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productNum` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `specifications` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `intakeDirection` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `testDate` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nums` int(100) DEFAULT NULL,
  `operator` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operatorTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `testRemarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100026 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of over_goods_instock
-- ----------------------------
INSERT INTO `over_goods_instock` VALUES (100024, '8820190819001', '控制器', 'TH-D-50J', '左进气', NULL, 1, 'super', '2019-08-19 10:08:42', '');
INSERT INTO `over_goods_instock` VALUES (100025, '8820190819002', '控制器', 'TH-D-50J', '左进气', NULL, 1, 'super', '2019-08-19 10:10:44', '');

-- ----------------------------
-- Table structure for over_goods_outstock
-- ----------------------------
DROP TABLE IF EXISTS `over_goods_outstock`;
CREATE TABLE `over_goods_outstock`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productNum` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `salenum` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `outFactoryMan` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `getOutFactoryTime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `outStockNums` int(100) DEFAULT NULL,
  `outStockType` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `outStockremarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `outStockNumbers` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for over_goods_stock
-- ----------------------------
DROP TABLE IF EXISTS `over_goods_stock`;
CREATE TABLE `over_goods_stock`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `specifications` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `intakeDirection` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `stockWarehouse` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nums` int(100) DEFAULT NULL,
  `operator` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operatorTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100018 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of over_goods_stock
-- ----------------------------
INSERT INTO `over_goods_stock` VALUES (100017, '控制器', 'TH-D-50J', '左进气', '成品库', 2, 'super', '2019-08-19 10:10:44', '');

-- ----------------------------
-- Table structure for product_order
-- ----------------------------
DROP TABLE IF EXISTS `product_order`;
CREATE TABLE `product_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productNum` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `alarmSquare` int(10) DEFAULT NULL,
  `charMethod` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `controlMainboardName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `controlMainboardSpecifications` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `controlMainboardSupplier` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `disconnectionCheck` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fourMainBoardName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fourSpecifications` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fourSupplier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gasCheck` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `intakeDirection` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lowPressureCheck` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `microleakageCheck` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `noContactCheck` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nums` int(10) DEFAULT NULL,
  `overcurrentCheck` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `overdrawAir` int(10) DEFAULT NULL,
  `pressure` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pulseEquivalent` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `reservedAir` int(10) DEFAULT NULL,
  `signalSource` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `specifications` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `stopUseCheck` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telMainBoardName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telMainBoardSpecifications` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telMainBoardSupplier` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telProtocol` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telType` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `upperLimitOfRecharge` int(10) DEFAULT NULL,
  `valveCloseTime` int(10) DEFAULT NULL,
  `valveName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `valveOpenTime` int(10) DEFAULT NULL,
  `valveSpecifications` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `valveSupplier` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `version` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operatorTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100073 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_order
-- ----------------------------
INSERT INTO `product_order` VALUES (100067, '8820190820001', 100, '气量', '控制主板', 'IC卡V1.03', '宝得科技', '未启用', '', '', '', '未启用', '控制器', '左进气', '未启用', '未启用', '未启用', 1, '未启用', 0, '50KPa', '1m³/脉冲', '', 10, '流量计信号(低有效)', 'TH-D-50J', '未启用', '', '', '', '', '', 0, 1, '快关低压角阀', 40, 'DN50', '湖州金辰', '', 'super', '2019-08-20 13:33:15');
INSERT INTO `product_order` VALUES (100068, '8820190820002', 100, '气量', '控制主板', 'IC卡V1.03', '宝得科技', '未启用', '', '', '', '未启用', '控制器', '左进气', '未启用', '未启用', '未启用', 1, '未启用', 0, '50KPa', '1m³/脉冲', '', 10, '流量计信号(低有效)', 'TH-D-50J', '未启用', '', '', '', '', '', 0, 1, '快关低压角阀', 40, 'DN50', '湖州金辰', '', 'super', '2019-08-20 13:33:15');
INSERT INTO `product_order` VALUES (100069, '8820190820003', 100, '气量', '控制主板', 'IC卡V1.03', '宝得科技', '未启用', '', '', '', '未启用', '控制器', '左进气', '未启用', '未启用', '未启用', 1, '未启用', 0, '50KPa', '1m³/脉冲', '', 10, '流量计信号(低有效)', 'TH-D-50J', '未启用', '', '', '', '', '', 0, 1, '快关低压角阀', 40, 'DN50', '湖州金辰', '', 'super', '2019-08-20 13:33:15');
INSERT INTO `product_order` VALUES (100070, '8820190820004', 100, '金额', '控制主板', '2GTHGY-501', '平衡线', '未启用', '', '', '', '未启用', '控制器', '左进气', '未启用', '未启用', '未启用', 1, '未启用', 0, '0.4MPa', '1m³/脉冲', '', 10, '流量计信号(低有效)', 'TH-D-50Z', '未启用', '通讯主板', '2GTHGY-301', '平衡线', '', 'GPRS', 0, 1, '快关中压直阀', 40, 'DN50', '湖州金辰', '', 'super', '2019-08-20 14:36:07');
INSERT INTO `product_order` VALUES (100071, '8820190820005', 100, '金额', '控制主板', '2GTHGY-501', '平衡线', '未启用', '', '', '', '未启用', '控制器', '左进气', '未启用', '未启用', '未启用', 1, '未启用', 0, '0.4MPa', '1m³/脉冲', '', 10, '流量计信号(低有效)', 'TH-D-50Z', '未启用', '通讯主板', '2GTHGY-301', '平衡线', '', 'GPRS', 0, 1, '快关中压直阀', 40, 'DN50', '湖州金辰', '', 'super', '2019-08-20 14:36:07');
INSERT INTO `product_order` VALUES (100072, '8820190820006', 100, '金额', '控制主板', '2GTHGY-501', '平衡线', '未启用', '', '', '', '未启用', '控制器', '左进气', '未启用', '未启用', '未启用', 1, '未启用', 0, '0.4MPa', '1m³/脉冲', '', 10, '流量计信号(低有效)', 'TH-D-50Z', '未启用', '通讯主板', '2GTHGY-301', '平衡线', '', 'GPRS', 0, 1, '快关中压直阀', 40, 'DN50', '湖州金辰', '', 'super', '2019-08-20 14:36:07');

-- ----------------------------
-- Table structure for pubproduct
-- ----------------------------
DROP TABLE IF EXISTS `pubproduct`;
CREATE TABLE `pubproduct`  (
  `ids` int(11) NOT NULL AUTO_INCREMENT,
  `productNum` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `valveNUms` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `vavleProductDate` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `controlMainBoardNums` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `controlMainBoardProductDate` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telMainBoardNums` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telMainBoardProductDate` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cardNum` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `iMSI` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `iMEI` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `iCCID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fourMainBoardNums` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fourMainBoardProductDate` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `assembler` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tester` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `productDate` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `testRemarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `testDate` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`ids`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100032 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pubproduct
-- ----------------------------
INSERT INTO `pubproduct` VALUES (100031, '8820190820001', '100620190817000001', '2019-08-17 ', '100120190817000001', '2019-08-17 ', '100120190817000002', '2019-08-17 ', '', '', '', '', '100120190817000003', '2019-08-17 ', 'super', 'super', '2019-08-20 15:00:58', '', '2019-08-21 11:51:48');

-- ----------------------------
-- Table structure for rc_base_area
-- ----------------------------
DROP TABLE IF EXISTS `rc_base_area`;
CREATE TABLE `rc_base_area`  (
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `parent_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  `update_time` datetime(0) DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_base_area
-- ----------------------------
INSERT INTO `rc_base_area` VALUES ('110000', '北京市', '0', 1, '2017-09-12 22:06:05', NULL);
INSERT INTO `rc_base_area` VALUES ('110100', '市辖区', '110000', 2, '2017-09-12 22:06:05', NULL);
INSERT INTO `rc_base_area` VALUES ('110101', '东城区', '110100', 3, '2017-09-12 22:06:05', NULL);
INSERT INTO `rc_base_area` VALUES ('110102', '西城区', '110100', 3, '2017-09-12 22:06:05', NULL);
INSERT INTO `rc_base_area` VALUES ('110105', '朝阳区', '110100', 3, '2017-09-12 22:06:05', NULL);
INSERT INTO `rc_base_area` VALUES ('110106', '丰台区', '110100', 3, '2017-09-12 22:06:05', NULL);
INSERT INTO `rc_base_area` VALUES ('110107', '石景山区', '110100', 3, '2017-09-12 22:06:05', NULL);
INSERT INTO `rc_base_area` VALUES ('110108', '海淀区', '110100', 3, '2017-09-12 22:06:05', NULL);
INSERT INTO `rc_base_area` VALUES ('110109', '门头沟区', '110100', 3, '2017-09-12 22:06:05', NULL);
INSERT INTO `rc_base_area` VALUES ('110111', '房山区', '110100', 3, '2017-09-12 22:06:05', NULL);
INSERT INTO `rc_base_area` VALUES ('110112', '通州区', '110100', 3, '2017-09-12 22:06:05', NULL);
INSERT INTO `rc_base_area` VALUES ('110113', '顺义区', '110100', 3, '2017-09-12 22:06:05', NULL);
INSERT INTO `rc_base_area` VALUES ('110114', '昌平区', '110100', 3, '2017-09-12 22:06:05', NULL);
INSERT INTO `rc_base_area` VALUES ('110115', '大兴区', '110100', 3, '2017-09-12 22:06:05', NULL);
INSERT INTO `rc_base_area` VALUES ('110116', '怀柔区', '110100', 3, '2017-09-12 22:06:05', NULL);
INSERT INTO `rc_base_area` VALUES ('110117', '平谷区', '110100', 3, '2017-09-12 22:06:05', NULL);
INSERT INTO `rc_base_area` VALUES ('110118', '密云区', '110100', 3, '2017-09-12 22:06:05', NULL);
INSERT INTO `rc_base_area` VALUES ('110119', '延庆区', '110100', 3, '2017-09-12 22:06:05', NULL);
INSERT INTO `rc_base_area` VALUES ('120000', '天津市', '0', 1, '2017-09-12 22:07:19', NULL);
INSERT INTO `rc_base_area` VALUES ('120100', '市辖区', '120000', 2, '2017-09-12 22:07:19', NULL);
INSERT INTO `rc_base_area` VALUES ('120101', '和平区', '120100', 3, '2017-09-12 22:07:19', NULL);
INSERT INTO `rc_base_area` VALUES ('120102', '河东区', '120100', 3, '2017-09-12 22:07:19', NULL);
INSERT INTO `rc_base_area` VALUES ('120103', '河西区', '120100', 3, '2017-09-12 22:07:20', NULL);
INSERT INTO `rc_base_area` VALUES ('120104', '南开区', '120100', 3, '2017-09-12 22:07:20', NULL);
INSERT INTO `rc_base_area` VALUES ('120105', '河北区', '120100', 3, '2017-09-12 22:07:20', NULL);
INSERT INTO `rc_base_area` VALUES ('120106', '红桥区', '120100', 3, '2017-09-12 22:07:20', NULL);
INSERT INTO `rc_base_area` VALUES ('120110', '东丽区', '120100', 3, '2017-09-12 22:07:20', NULL);
INSERT INTO `rc_base_area` VALUES ('120111', '西青区', '120100', 3, '2017-09-12 22:07:20', NULL);
INSERT INTO `rc_base_area` VALUES ('120112', '津南区', '120100', 3, '2017-09-12 22:07:20', NULL);
INSERT INTO `rc_base_area` VALUES ('120113', '北辰区', '120100', 3, '2017-09-12 22:07:20', NULL);
INSERT INTO `rc_base_area` VALUES ('120114', '武清区', '120100', 3, '2017-09-12 22:07:20', NULL);
INSERT INTO `rc_base_area` VALUES ('120115', '宝坻区', '120100', 3, '2017-09-12 22:07:20', NULL);
INSERT INTO `rc_base_area` VALUES ('120116', '滨海新区', '120100', 3, '2017-09-12 22:07:20', NULL);
INSERT INTO `rc_base_area` VALUES ('120117', '宁河区', '120100', 3, '2017-09-12 22:07:20', NULL);
INSERT INTO `rc_base_area` VALUES ('120118', '静海区', '120100', 3, '2017-09-12 22:07:20', NULL);
INSERT INTO `rc_base_area` VALUES ('120119', '蓟州区', '120100', 3, '2017-09-12 22:07:20', NULL);
INSERT INTO `rc_base_area` VALUES ('130000', '河北省', '0', 1, '2017-09-12 22:08:44', NULL);
INSERT INTO `rc_base_area` VALUES ('130100', '石家庄市', '130000', 2, '2017-09-12 22:08:44', NULL);
INSERT INTO `rc_base_area` VALUES ('130101', '市辖区', '130100', 3, '2017-09-12 22:08:44', NULL);
INSERT INTO `rc_base_area` VALUES ('130102', '长安区', '130100', 3, '2017-09-12 22:08:44', NULL);
INSERT INTO `rc_base_area` VALUES ('130104', '桥西区', '130100', 3, '2017-09-12 22:08:44', NULL);
INSERT INTO `rc_base_area` VALUES ('130105', '新华区', '130100', 3, '2017-09-12 22:08:44', NULL);
INSERT INTO `rc_base_area` VALUES ('130107', '井陉矿区', '130100', 3, '2017-09-12 22:08:44', NULL);
INSERT INTO `rc_base_area` VALUES ('130108', '裕华区', '130100', 3, '2017-09-12 22:08:44', NULL);
INSERT INTO `rc_base_area` VALUES ('130109', '藁城区', '130100', 3, '2017-09-12 22:08:44', NULL);
INSERT INTO `rc_base_area` VALUES ('130110', '鹿泉区', '130100', 3, '2017-09-12 22:08:44', NULL);
INSERT INTO `rc_base_area` VALUES ('130111', '栾城区', '130100', 3, '2017-09-12 22:08:44', NULL);
INSERT INTO `rc_base_area` VALUES ('130121', '井陉县', '130100', 3, '2017-09-12 22:08:44', NULL);
INSERT INTO `rc_base_area` VALUES ('130123', '正定县', '130100', 3, '2017-09-12 22:08:44', NULL);
INSERT INTO `rc_base_area` VALUES ('130125', '行唐县', '130100', 3, '2017-09-12 22:08:44', NULL);
INSERT INTO `rc_base_area` VALUES ('130126', '灵寿县', '130100', 3, '2017-09-12 22:08:44', NULL);
INSERT INTO `rc_base_area` VALUES ('130127', '高邑县', '130100', 3, '2017-09-12 22:08:44', NULL);
INSERT INTO `rc_base_area` VALUES ('130128', '深泽县', '130100', 3, '2017-09-12 22:08:44', NULL);
INSERT INTO `rc_base_area` VALUES ('130129', '赞皇县', '130100', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130130', '无极县', '130100', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130131', '平山县', '130100', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130132', '元氏县', '130100', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130133', '赵县', '130100', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130183', '晋州市', '130100', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130184', '新乐市', '130100', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130200', '唐山市', '130000', 2, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130201', '市辖区', '130200', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130202', '路南区', '130200', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130203', '路北区', '130200', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130204', '古冶区', '130200', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130205', '开平区', '130200', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130207', '丰南区', '130200', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130208', '丰润区', '130200', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130209', '曹妃甸区', '130200', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130223', '滦县', '130200', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130224', '滦南县', '130200', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130225', '乐亭县', '130200', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130227', '迁西县', '130200', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130229', '玉田县', '130200', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130281', '遵化市', '130200', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130283', '迁安市', '130200', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130300', '秦皇岛市', '130000', 2, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130301', '市辖区', '130300', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130302', '海港区', '130300', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130303', '山海关区', '130300', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130304', '北戴河区', '130300', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130306', '抚宁区', '130300', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130321', '青龙满族自治县', '130300', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130322', '昌黎县', '130300', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130324', '卢龙县', '130300', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130400', '邯郸市', '130000', 2, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130401', '市辖区', '130400', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130402', '邯山区', '130400', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130403', '丛台区', '130400', 3, '2017-09-12 22:08:45', NULL);
INSERT INTO `rc_base_area` VALUES ('130404', '复兴区', '130400', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130406', '峰峰矿区', '130400', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130421', '邯郸县', '130400', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130423', '临漳县', '130400', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130424', '成安县', '130400', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130425', '大名县', '130400', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130426', '涉县', '130400', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130427', '磁县', '130400', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130428', '肥乡县', '130400', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130429', '永年县', '130400', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130430', '邱县', '130400', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130431', '鸡泽县', '130400', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130432', '广平县', '130400', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130433', '馆陶县', '130400', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130434', '魏县', '130400', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130435', '曲周县', '130400', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130481', '武安市', '130400', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130500', '邢台市', '130000', 2, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130501', '市辖区', '130500', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130502', '桥东区', '130500', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130503', '桥西区', '130500', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130521', '邢台县', '130500', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130522', '临城县', '130500', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130523', '内丘县', '130500', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130524', '柏乡县', '130500', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130525', '隆尧县', '130500', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130526', '任县', '130500', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130527', '南和县', '130500', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130528', '宁晋县', '130500', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130529', '巨鹿县', '130500', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130530', '新河县', '130500', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130531', '广宗县', '130500', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130532', '平乡县', '130500', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130533', '威县', '130500', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130534', '清河县', '130500', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130535', '临西县', '130500', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130581', '南宫市', '130500', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130582', '沙河市', '130500', 3, '2017-09-12 22:08:46', NULL);
INSERT INTO `rc_base_area` VALUES ('130600', '保定市', '130000', 2, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130601', '市辖区', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130602', '竞秀区', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130606', '莲池区', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130607', '满城区', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130608', '清苑区', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130609', '徐水区', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130623', '涞水县', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130624', '阜平县', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130626', '定兴县', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130627', '唐县', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130628', '高阳县', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130629', '容城县', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130630', '涞源县', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130631', '望都县', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130632', '安新县', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130633', '易县', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130634', '曲阳县', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130635', '蠡县', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130636', '顺平县', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130637', '博野县', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130638', '雄县', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130681', '涿州市', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130683', '安国市', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130684', '高碑店市', '130600', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130700', '张家口市', '130000', 2, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130701', '市辖区', '130700', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130702', '桥东区', '130700', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130703', '桥西区', '130700', 3, '2017-09-12 22:08:47', NULL);
INSERT INTO `rc_base_area` VALUES ('130705', '宣化区', '130700', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130706', '下花园区', '130700', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130708', '万全区', '130700', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130709', '崇礼区', '130700', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130722', '张北县', '130700', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130723', '康保县', '130700', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130724', '沽源县', '130700', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130725', '尚义县', '130700', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130726', '蔚县', '130700', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130727', '阳原县', '130700', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130728', '怀安县', '130700', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130730', '怀来县', '130700', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130731', '涿鹿县', '130700', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130732', '赤城县', '130700', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130800', '承德市', '130000', 2, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130801', '市辖区', '130800', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130802', '双桥区', '130800', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130803', '双滦区', '130800', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130804', '鹰手营子矿区', '130800', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130821', '承德县', '130800', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130822', '兴隆县', '130800', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130823', '平泉县', '130800', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130824', '滦平县', '130800', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130825', '隆化县', '130800', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130826', '丰宁满族自治县', '130800', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130827', '宽城满族自治县', '130800', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130828', '围场满族蒙古族自治县', '130800', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130900', '沧州市', '130000', 2, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130901', '市辖区', '130900', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130902', '新华区', '130900', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130903', '运河区', '130900', 3, '2017-09-12 22:08:48', NULL);
INSERT INTO `rc_base_area` VALUES ('130921', '沧县', '130900', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('130922', '青县', '130900', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('130923', '东光县', '130900', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('130924', '海兴县', '130900', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('130925', '盐山县', '130900', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('130926', '肃宁县', '130900', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('130927', '南皮县', '130900', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('130928', '吴桥县', '130900', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('130929', '献县', '130900', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('130930', '孟村回族自治县', '130900', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('130981', '泊头市', '130900', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('130982', '任丘市', '130900', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('130983', '黄骅市', '130900', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('130984', '河间市', '130900', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131000', '廊坊市', '130000', 2, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131001', '市辖区', '131000', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131002', '安次区', '131000', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131003', '广阳区', '131000', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131022', '固安县', '131000', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131023', '永清县', '131000', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131024', '香河县', '131000', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131025', '大城县', '131000', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131026', '文安县', '131000', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131028', '大厂回族自治县', '131000', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131081', '霸州市', '131000', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131082', '三河市', '131000', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131100', '衡水市', '130000', 2, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131101', '市辖区', '131100', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131102', '桃城区', '131100', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131103', '冀州区', '131100', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131121', '枣强县', '131100', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131122', '武邑县', '131100', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131123', '武强县', '131100', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131124', '饶阳县', '131100', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131125', '安平县', '131100', 3, '2017-09-12 22:08:49', NULL);
INSERT INTO `rc_base_area` VALUES ('131126', '故城县', '131100', 3, '2017-09-12 22:08:50', NULL);
INSERT INTO `rc_base_area` VALUES ('131127', '景县', '131100', 3, '2017-09-12 22:08:50', NULL);
INSERT INTO `rc_base_area` VALUES ('131128', '阜城县', '131100', 3, '2017-09-12 22:08:50', NULL);
INSERT INTO `rc_base_area` VALUES ('131182', '深州市', '131100', 3, '2017-09-12 22:08:50', NULL);
INSERT INTO `rc_base_area` VALUES ('139000', '省直辖县级行政区划', '130000', 2, '2017-09-12 22:08:50', NULL);
INSERT INTO `rc_base_area` VALUES ('139001', '定州市', '139000', 3, '2017-09-12 22:08:50', NULL);
INSERT INTO `rc_base_area` VALUES ('139002', '辛集市', '139000', 3, '2017-09-12 22:08:50', NULL);
INSERT INTO `rc_base_area` VALUES ('140000', '山西省', '0', 1, '2017-09-12 22:09:56', NULL);
INSERT INTO `rc_base_area` VALUES ('140100', '太原市', '140000', 2, '2017-09-12 22:09:56', NULL);
INSERT INTO `rc_base_area` VALUES ('140101', '市辖区', '140100', 3, '2017-09-12 22:09:56', NULL);
INSERT INTO `rc_base_area` VALUES ('140105', '小店区', '140100', 3, '2017-09-12 22:09:56', NULL);
INSERT INTO `rc_base_area` VALUES ('140106', '迎泽区', '140100', 3, '2017-09-12 22:09:56', NULL);
INSERT INTO `rc_base_area` VALUES ('140107', '杏花岭区', '140100', 3, '2017-09-12 22:09:56', NULL);
INSERT INTO `rc_base_area` VALUES ('140108', '尖草坪区', '140100', 3, '2017-09-12 22:09:56', NULL);
INSERT INTO `rc_base_area` VALUES ('140109', '万柏林区', '140100', 3, '2017-09-12 22:09:56', NULL);
INSERT INTO `rc_base_area` VALUES ('140110', '晋源区', '140100', 3, '2017-09-12 22:09:56', NULL);
INSERT INTO `rc_base_area` VALUES ('140121', '清徐县', '140100', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140122', '阳曲县', '140100', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140123', '娄烦县', '140100', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140181', '古交市', '140100', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140200', '大同市', '140000', 2, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140201', '市辖区', '140200', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140202', '城区', '140200', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140203', '矿区', '140200', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140211', '南郊区', '140200', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140212', '新荣区', '140200', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140221', '阳高县', '140200', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140222', '天镇县', '140200', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140223', '广灵县', '140200', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140224', '灵丘县', '140200', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140225', '浑源县', '140200', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140226', '左云县', '140200', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140227', '大同县', '140200', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140300', '阳泉市', '140000', 2, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140301', '市辖区', '140300', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140302', '城区', '140300', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140303', '矿区', '140300', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140311', '郊区', '140300', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140321', '平定县', '140300', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140322', '盂县', '140300', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140400', '长治市', '140000', 2, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140401', '市辖区', '140400', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140402', '城区', '140400', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140411', '郊区', '140400', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140421', '长治县', '140400', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140423', '襄垣县', '140400', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140424', '屯留县', '140400', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140425', '平顺县', '140400', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140426', '黎城县', '140400', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140427', '壶关县', '140400', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140428', '长子县', '140400', 3, '2017-09-12 22:09:57', NULL);
INSERT INTO `rc_base_area` VALUES ('140429', '武乡县', '140400', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140430', '沁县', '140400', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140431', '沁源县', '140400', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140481', '潞城市', '140400', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140500', '晋城市', '140000', 2, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140501', '市辖区', '140500', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140502', '城区', '140500', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140521', '沁水县', '140500', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140522', '阳城县', '140500', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140524', '陵川县', '140500', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140525', '泽州县', '140500', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140581', '高平市', '140500', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140600', '朔州市', '140000', 2, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140601', '市辖区', '140600', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140602', '朔城区', '140600', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140603', '平鲁区', '140600', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140621', '山阴县', '140600', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140622', '应县', '140600', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140623', '右玉县', '140600', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140624', '怀仁县', '140600', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140700', '晋中市', '140000', 2, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140701', '市辖区', '140700', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140702', '榆次区', '140700', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140721', '榆社县', '140700', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140722', '左权县', '140700', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140723', '和顺县', '140700', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140724', '昔阳县', '140700', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140725', '寿阳县', '140700', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140726', '太谷县', '140700', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140727', '祁县', '140700', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140728', '平遥县', '140700', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140729', '灵石县', '140700', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140781', '介休市', '140700', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140800', '运城市', '140000', 2, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140801', '市辖区', '140800', 3, '2017-09-12 22:09:58', NULL);
INSERT INTO `rc_base_area` VALUES ('140802', '盐湖区', '140800', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140821', '临猗县', '140800', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140822', '万荣县', '140800', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140823', '闻喜县', '140800', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140824', '稷山县', '140800', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140825', '新绛县', '140800', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140826', '绛县', '140800', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140827', '垣曲县', '140800', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140828', '夏县', '140800', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140829', '平陆县', '140800', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140830', '芮城县', '140800', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140881', '永济市', '140800', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140882', '河津市', '140800', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140900', '忻州市', '140000', 2, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140901', '市辖区', '140900', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140902', '忻府区', '140900', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140921', '定襄县', '140900', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140922', '五台县', '140900', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140923', '代县', '140900', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140924', '繁峙县', '140900', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140925', '宁武县', '140900', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140926', '静乐县', '140900', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140927', '神池县', '140900', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140928', '五寨县', '140900', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140929', '岢岚县', '140900', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140930', '河曲县', '140900', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140931', '保德县', '140900', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140932', '偏关县', '140900', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('140981', '原平市', '140900', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('141000', '临汾市', '140000', 2, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('141001', '市辖区', '141000', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('141002', '尧都区', '141000', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('141021', '曲沃县', '141000', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('141022', '翼城县', '141000', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('141023', '襄汾县', '141000', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('141024', '洪洞县', '141000', 3, '2017-09-12 22:09:59', NULL);
INSERT INTO `rc_base_area` VALUES ('141025', '古县', '141000', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141026', '安泽县', '141000', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141027', '浮山县', '141000', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141028', '吉县', '141000', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141029', '乡宁县', '141000', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141030', '大宁县', '141000', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141031', '隰县', '141000', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141032', '永和县', '141000', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141033', '蒲县', '141000', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141034', '汾西县', '141000', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141081', '侯马市', '141000', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141082', '霍州市', '141000', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141100', '吕梁市', '140000', 2, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141101', '市辖区', '141100', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141102', '离石区', '141100', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141121', '文水县', '141100', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141122', '交城县', '141100', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141123', '兴县', '141100', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141124', '临县', '141100', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141125', '柳林县', '141100', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141126', '石楼县', '141100', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141127', '岚县', '141100', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141128', '方山县', '141100', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141129', '中阳县', '141100', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141130', '交口县', '141100', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141181', '孝义市', '141100', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('141182', '汾阳市', '141100', 3, '2017-09-12 22:10:00', NULL);
INSERT INTO `rc_base_area` VALUES ('150000', '内蒙古自治区', '0', 1, '2017-09-12 22:10:39', NULL);
INSERT INTO `rc_base_area` VALUES ('150100', '呼和浩特市', '150000', 2, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150101', '市辖区', '150100', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150102', '新城区', '150100', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150103', '回民区', '150100', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150104', '玉泉区', '150100', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150105', '赛罕区', '150100', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150121', '土默特左旗', '150100', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150122', '托克托县', '150100', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150123', '和林格尔县', '150100', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150124', '清水河县', '150100', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150125', '武川县', '150100', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150200', '包头市', '150000', 2, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150201', '市辖区', '150200', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150202', '东河区', '150200', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150203', '昆都仑区', '150200', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150204', '青山区', '150200', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150205', '石拐区', '150200', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150206', '白云鄂博矿区', '150200', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150207', '九原区', '150200', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150221', '土默特右旗', '150200', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150222', '固阳县', '150200', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150223', '达尔罕茂明安联合旗', '150200', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150300', '乌海市', '150000', 2, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150301', '市辖区', '150300', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150302', '海勃湾区', '150300', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150303', '海南区', '150300', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150304', '乌达区', '150300', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150400', '赤峰市', '150000', 2, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150401', '市辖区', '150400', 3, '2017-09-12 22:10:40', NULL);
INSERT INTO `rc_base_area` VALUES ('150402', '红山区', '150400', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150403', '元宝山区', '150400', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150404', '松山区', '150400', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150421', '阿鲁科尔沁旗', '150400', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150422', '巴林左旗', '150400', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150423', '巴林右旗', '150400', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150424', '林西县', '150400', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150425', '克什克腾旗', '150400', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150426', '翁牛特旗', '150400', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150428', '喀喇沁旗', '150400', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150429', '宁城县', '150400', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150430', '敖汉旗', '150400', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150500', '通辽市', '150000', 2, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150501', '市辖区', '150500', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150502', '科尔沁区', '150500', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150521', '科尔沁左翼中旗', '150500', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150522', '科尔沁左翼后旗', '150500', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150523', '开鲁县', '150500', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150524', '库伦旗', '150500', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150525', '奈曼旗', '150500', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150526', '扎鲁特旗', '150500', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150581', '霍林郭勒市', '150500', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150600', '鄂尔多斯市', '150000', 2, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150601', '市辖区', '150600', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150602', '东胜区', '150600', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150603', '康巴什区', '150600', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150621', '达拉特旗', '150600', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150622', '准格尔旗', '150600', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150623', '鄂托克前旗', '150600', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150624', '鄂托克旗', '150600', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150625', '杭锦旗', '150600', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150626', '乌审旗', '150600', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150627', '伊金霍洛旗', '150600', 3, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150700', '呼伦贝尔市', '150000', 2, '2017-09-12 22:10:41', NULL);
INSERT INTO `rc_base_area` VALUES ('150701', '市辖区', '150700', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150702', '海拉尔区', '150700', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150703', '扎赉诺尔区', '150700', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150721', '阿荣旗', '150700', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '150700', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150723', '鄂伦春自治旗', '150700', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150724', '鄂温克族自治旗', '150700', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150725', '陈巴尔虎旗', '150700', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150726', '新巴尔虎左旗', '150700', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150727', '新巴尔虎右旗', '150700', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150781', '满洲里市', '150700', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150782', '牙克石市', '150700', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150783', '扎兰屯市', '150700', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150784', '额尔古纳市', '150700', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150785', '根河市', '150700', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150800', '巴彦淖尔市', '150000', 2, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150801', '市辖区', '150800', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150802', '临河区', '150800', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150821', '五原县', '150800', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150822', '磴口县', '150800', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150823', '乌拉特前旗', '150800', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150824', '乌拉特中旗', '150800', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150825', '乌拉特后旗', '150800', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150826', '杭锦后旗', '150800', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150900', '乌兰察布市', '150000', 2, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150901', '市辖区', '150900', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150902', '集宁区', '150900', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150921', '卓资县', '150900', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150922', '化德县', '150900', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150923', '商都县', '150900', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150924', '兴和县', '150900', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150925', '凉城县', '150900', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150926', '察哈尔右翼前旗', '150900', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150927', '察哈尔右翼中旗', '150900', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150928', '察哈尔右翼后旗', '150900', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150929', '四子王旗', '150900', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('150981', '丰镇市', '150900', 3, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('152200', '兴安盟', '150000', 2, '2017-09-12 22:10:42', NULL);
INSERT INTO `rc_base_area` VALUES ('152201', '乌兰浩特市', '152200', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152202', '阿尔山市', '152200', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152221', '科尔沁右翼前旗', '152200', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152222', '科尔沁右翼中旗', '152200', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152223', '扎赉特旗', '152200', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152224', '突泉县', '152200', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152500', '锡林郭勒盟', '150000', 2, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152501', '二连浩特市', '152500', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152502', '锡林浩特市', '152500', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152522', '阿巴嘎旗', '152500', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152523', '苏尼特左旗', '152500', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152524', '苏尼特右旗', '152500', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152525', '东乌珠穆沁旗', '152500', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152526', '西乌珠穆沁旗', '152500', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152527', '太仆寺旗', '152500', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152528', '镶黄旗', '152500', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152529', '正镶白旗', '152500', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152530', '正蓝旗', '152500', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152531', '多伦县', '152500', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152900', '阿拉善盟', '150000', 2, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152921', '阿拉善左旗', '152900', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152922', '阿拉善右旗', '152900', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('152923', '额济纳旗', '152900', 3, '2017-09-12 22:10:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210000', '辽宁省', '0', 1, '2017-09-12 22:11:42', NULL);
INSERT INTO `rc_base_area` VALUES ('210100', '沈阳市', '210000', 2, '2017-09-12 22:11:42', NULL);
INSERT INTO `rc_base_area` VALUES ('210101', '市辖区', '210100', 3, '2017-09-12 22:11:42', NULL);
INSERT INTO `rc_base_area` VALUES ('210102', '和平区', '210100', 3, '2017-09-12 22:11:42', NULL);
INSERT INTO `rc_base_area` VALUES ('210103', '沈河区', '210100', 3, '2017-09-12 22:11:42', NULL);
INSERT INTO `rc_base_area` VALUES ('210104', '大东区', '210100', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210105', '皇姑区', '210100', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210106', '铁西区', '210100', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210111', '苏家屯区', '210100', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210112', '浑南区', '210100', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210113', '沈北新区', '210100', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210114', '于洪区', '210100', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210115', '辽中区', '210100', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210123', '康平县', '210100', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210124', '法库县', '210100', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210181', '新民市', '210100', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210200', '大连市', '210000', 2, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210201', '市辖区', '210200', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210202', '中山区', '210200', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210203', '西岗区', '210200', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210204', '沙河口区', '210200', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210211', '甘井子区', '210200', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210212', '旅顺口区', '210200', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210213', '金州区', '210200', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210214', '普兰店区', '210200', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210224', '长海县', '210200', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210281', '瓦房店市', '210200', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210283', '庄河市', '210200', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210300', '鞍山市', '210000', 2, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210301', '市辖区', '210300', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210302', '铁东区', '210300', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210303', '铁西区', '210300', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210304', '立山区', '210300', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210311', '千山区', '210300', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210321', '台安县', '210300', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210323', '岫岩满族自治县', '210300', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210381', '海城市', '210300', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210400', '抚顺市', '210000', 2, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210401', '市辖区', '210400', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210402', '新抚区', '210400', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210403', '东洲区', '210400', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210404', '望花区', '210400', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210411', '顺城区', '210400', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210421', '抚顺县', '210400', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210422', '新宾满族自治县', '210400', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210423', '清原满族自治县', '210400', 3, '2017-09-12 22:11:43', NULL);
INSERT INTO `rc_base_area` VALUES ('210500', '本溪市', '210000', 2, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210501', '市辖区', '210500', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210502', '平山区', '210500', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210503', '溪湖区', '210500', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210504', '明山区', '210500', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210505', '南芬区', '210500', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210521', '本溪满族自治县', '210500', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210522', '桓仁满族自治县', '210500', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210600', '丹东市', '210000', 2, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210601', '市辖区', '210600', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210602', '元宝区', '210600', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210603', '振兴区', '210600', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210604', '振安区', '210600', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210624', '宽甸满族自治县', '210600', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210681', '东港市', '210600', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210682', '凤城市', '210600', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210700', '锦州市', '210000', 2, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210701', '市辖区', '210700', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210702', '古塔区', '210700', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210703', '凌河区', '210700', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210711', '太和区', '210700', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210726', '黑山县', '210700', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210727', '义县', '210700', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210781', '凌海市', '210700', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210782', '北镇市', '210700', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210800', '营口市', '210000', 2, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210801', '市辖区', '210800', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210802', '站前区', '210800', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210803', '西市区', '210800', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210804', '鲅鱼圈区', '210800', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210811', '老边区', '210800', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210881', '盖州市', '210800', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210882', '大石桥市', '210800', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210900', '阜新市', '210000', 2, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210901', '市辖区', '210900', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210902', '海州区', '210900', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210903', '新邱区', '210900', 3, '2017-09-12 22:11:44', NULL);
INSERT INTO `rc_base_area` VALUES ('210904', '太平区', '210900', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('210905', '清河门区', '210900', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('210911', '细河区', '210900', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('210921', '阜新蒙古族自治县', '210900', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('210922', '彰武县', '210900', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211000', '辽阳市', '210000', 2, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211001', '市辖区', '211000', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211002', '白塔区', '211000', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211003', '文圣区', '211000', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211004', '宏伟区', '211000', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211005', '弓长岭区', '211000', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211011', '太子河区', '211000', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211021', '辽阳县', '211000', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211081', '灯塔市', '211000', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211100', '盘锦市', '210000', 2, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211101', '市辖区', '211100', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211102', '双台子区', '211100', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211103', '兴隆台区', '211100', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211104', '大洼区', '211100', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211122', '盘山县', '211100', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211200', '铁岭市', '210000', 2, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211201', '市辖区', '211200', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211202', '银州区', '211200', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211204', '清河区', '211200', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211221', '铁岭县', '211200', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211223', '西丰县', '211200', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211224', '昌图县', '211200', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211281', '调兵山市', '211200', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211282', '开原市', '211200', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211300', '朝阳市', '210000', 2, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211301', '市辖区', '211300', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211302', '双塔区', '211300', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211303', '龙城区', '211300', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211321', '朝阳县', '211300', 3, '2017-09-12 22:11:45', NULL);
INSERT INTO `rc_base_area` VALUES ('211322', '建平县', '211300', 3, '2017-09-12 22:11:46', NULL);
INSERT INTO `rc_base_area` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '211300', 3, '2017-09-12 22:11:46', NULL);
INSERT INTO `rc_base_area` VALUES ('211381', '北票市', '211300', 3, '2017-09-12 22:11:46', NULL);
INSERT INTO `rc_base_area` VALUES ('211382', '凌源市', '211300', 3, '2017-09-12 22:11:46', NULL);
INSERT INTO `rc_base_area` VALUES ('211400', '葫芦岛市', '210000', 2, '2017-09-12 22:11:46', NULL);
INSERT INTO `rc_base_area` VALUES ('211401', '市辖区', '211400', 3, '2017-09-12 22:11:46', NULL);
INSERT INTO `rc_base_area` VALUES ('211402', '连山区', '211400', 3, '2017-09-12 22:11:46', NULL);
INSERT INTO `rc_base_area` VALUES ('211403', '龙港区', '211400', 3, '2017-09-12 22:11:46', NULL);
INSERT INTO `rc_base_area` VALUES ('211404', '南票区', '211400', 3, '2017-09-12 22:11:46', NULL);
INSERT INTO `rc_base_area` VALUES ('211421', '绥中县', '211400', 3, '2017-09-12 22:11:46', NULL);
INSERT INTO `rc_base_area` VALUES ('211422', '建昌县', '211400', 3, '2017-09-12 22:11:46', NULL);
INSERT INTO `rc_base_area` VALUES ('211481', '兴城市', '211400', 3, '2017-09-12 22:11:46', NULL);
INSERT INTO `rc_base_area` VALUES ('220000', '吉林省', '0', 1, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220100', '长春市', '220000', 2, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220101', '市辖区', '220100', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220102', '南关区', '220100', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220103', '宽城区', '220100', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220104', '朝阳区', '220100', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220105', '二道区', '220100', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220106', '绿园区', '220100', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220112', '双阳区', '220100', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220113', '九台区', '220100', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220122', '农安县', '220100', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220182', '榆树市', '220100', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220183', '德惠市', '220100', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220200', '吉林市', '220000', 2, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220201', '市辖区', '220200', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220202', '昌邑区', '220200', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220203', '龙潭区', '220200', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220204', '船营区', '220200', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220211', '丰满区', '220200', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220221', '永吉县', '220200', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220281', '蛟河市', '220200', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220282', '桦甸市', '220200', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220283', '舒兰市', '220200', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220284', '磐石市', '220200', 3, '2017-09-12 22:14:00', NULL);
INSERT INTO `rc_base_area` VALUES ('220300', '四平市', '220000', 2, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220301', '市辖区', '220300', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220302', '铁西区', '220300', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220303', '铁东区', '220300', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220322', '梨树县', '220300', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220323', '伊通满族自治县', '220300', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220381', '公主岭市', '220300', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220382', '双辽市', '220300', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220400', '辽源市', '220000', 2, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220401', '市辖区', '220400', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220402', '龙山区', '220400', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220403', '西安区', '220400', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220421', '东丰县', '220400', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220422', '东辽县', '220400', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220500', '通化市', '220000', 2, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220501', '市辖区', '220500', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220502', '东昌区', '220500', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220503', '二道江区', '220500', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220521', '通化县', '220500', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220523', '辉南县', '220500', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220524', '柳河县', '220500', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220581', '梅河口市', '220500', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220582', '集安市', '220500', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220600', '白山市', '220000', 2, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220601', '市辖区', '220600', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220602', '浑江区', '220600', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220605', '江源区', '220600', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220621', '抚松县', '220600', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220622', '靖宇县', '220600', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220623', '长白朝鲜族自治县', '220600', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220681', '临江市', '220600', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220700', '松原市', '220000', 2, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220701', '市辖区', '220700', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220702', '宁江区', '220700', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '220700', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220722', '长岭县', '220700', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220723', '乾安县', '220700', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220781', '扶余市', '220700', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220800', '白城市', '220000', 2, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220801', '市辖区', '220800', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220802', '洮北区', '220800', 3, '2017-09-12 22:14:01', NULL);
INSERT INTO `rc_base_area` VALUES ('220821', '镇赉县', '220800', 3, '2017-09-12 22:14:02', NULL);
INSERT INTO `rc_base_area` VALUES ('220822', '通榆县', '220800', 3, '2017-09-12 22:14:02', NULL);
INSERT INTO `rc_base_area` VALUES ('220881', '洮南市', '220800', 3, '2017-09-12 22:14:02', NULL);
INSERT INTO `rc_base_area` VALUES ('220882', '大安市', '220800', 3, '2017-09-12 22:14:02', NULL);
INSERT INTO `rc_base_area` VALUES ('222400', '延边朝鲜族自治州', '220000', 2, '2017-09-12 22:14:02', NULL);
INSERT INTO `rc_base_area` VALUES ('222401', '延吉市', '222400', 3, '2017-09-12 22:14:02', NULL);
INSERT INTO `rc_base_area` VALUES ('222402', '图们市', '222400', 3, '2017-09-12 22:14:02', NULL);
INSERT INTO `rc_base_area` VALUES ('222403', '敦化市', '222400', 3, '2017-09-12 22:14:02', NULL);
INSERT INTO `rc_base_area` VALUES ('222404', '珲春市', '222400', 3, '2017-09-12 22:14:02', NULL);
INSERT INTO `rc_base_area` VALUES ('222405', '龙井市', '222400', 3, '2017-09-12 22:14:02', NULL);
INSERT INTO `rc_base_area` VALUES ('222406', '和龙市', '222400', 3, '2017-09-12 22:14:02', NULL);
INSERT INTO `rc_base_area` VALUES ('222424', '汪清县', '222400', 3, '2017-09-12 22:14:02', NULL);
INSERT INTO `rc_base_area` VALUES ('222426', '安图县', '222400', 3, '2017-09-12 22:14:02', NULL);
INSERT INTO `rc_base_area` VALUES ('230000', '黑龙江省', '0', 1, '2017-09-12 22:14:37', NULL);
INSERT INTO `rc_base_area` VALUES ('230100', '哈尔滨市', '230000', 2, '2017-09-12 22:14:37', NULL);
INSERT INTO `rc_base_area` VALUES ('230101', '市辖区', '230100', 3, '2017-09-12 22:14:37', NULL);
INSERT INTO `rc_base_area` VALUES ('230102', '道里区', '230100', 3, '2017-09-12 22:14:37', NULL);
INSERT INTO `rc_base_area` VALUES ('230103', '南岗区', '230100', 3, '2017-09-12 22:14:37', NULL);
INSERT INTO `rc_base_area` VALUES ('230104', '道外区', '230100', 3, '2017-09-12 22:14:37', NULL);
INSERT INTO `rc_base_area` VALUES ('230108', '平房区', '230100', 3, '2017-09-12 22:14:37', NULL);
INSERT INTO `rc_base_area` VALUES ('230109', '松北区', '230100', 3, '2017-09-12 22:14:37', NULL);
INSERT INTO `rc_base_area` VALUES ('230110', '香坊区', '230100', 3, '2017-09-12 22:14:37', NULL);
INSERT INTO `rc_base_area` VALUES ('230111', '呼兰区', '230100', 3, '2017-09-12 22:14:37', NULL);
INSERT INTO `rc_base_area` VALUES ('230112', '阿城区', '230100', 3, '2017-09-12 22:14:37', NULL);
INSERT INTO `rc_base_area` VALUES ('230113', '双城区', '230100', 3, '2017-09-12 22:14:37', NULL);
INSERT INTO `rc_base_area` VALUES ('230123', '依兰县', '230100', 3, '2017-09-12 22:14:37', NULL);
INSERT INTO `rc_base_area` VALUES ('230124', '方正县', '230100', 3, '2017-09-12 22:14:37', NULL);
INSERT INTO `rc_base_area` VALUES ('230125', '宾县', '230100', 3, '2017-09-12 22:14:37', NULL);
INSERT INTO `rc_base_area` VALUES ('230126', '巴彦县', '230100', 3, '2017-09-12 22:14:37', NULL);
INSERT INTO `rc_base_area` VALUES ('230127', '木兰县', '230100', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230128', '通河县', '230100', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230129', '延寿县', '230100', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230183', '尚志市', '230100', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230184', '五常市', '230100', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230200', '齐齐哈尔市', '230000', 2, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230201', '市辖区', '230200', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230202', '龙沙区', '230200', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230203', '建华区', '230200', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230204', '铁锋区', '230200', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230205', '昂昂溪区', '230200', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230206', '富拉尔基区', '230200', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230207', '碾子山区', '230200', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230208', '梅里斯达斡尔族区', '230200', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230221', '龙江县', '230200', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230223', '依安县', '230200', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230224', '泰来县', '230200', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230225', '甘南县', '230200', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230227', '富裕县', '230200', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230229', '克山县', '230200', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230230', '克东县', '230200', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230231', '拜泉县', '230200', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230281', '讷河市', '230200', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230300', '鸡西市', '230000', 2, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230301', '市辖区', '230300', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230302', '鸡冠区', '230300', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230303', '恒山区', '230300', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230304', '滴道区', '230300', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230305', '梨树区', '230300', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230306', '城子河区', '230300', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230307', '麻山区', '230300', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230321', '鸡东县', '230300', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230381', '虎林市', '230300', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230382', '密山市', '230300', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230400', '鹤岗市', '230000', 2, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230401', '市辖区', '230400', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230402', '向阳区', '230400', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230403', '工农区', '230400', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230404', '南山区', '230400', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230405', '兴安区', '230400', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230406', '东山区', '230400', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230407', '兴山区', '230400', 3, '2017-09-12 22:14:38', NULL);
INSERT INTO `rc_base_area` VALUES ('230421', '萝北县', '230400', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230422', '绥滨县', '230400', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230500', '双鸭山市', '230000', 2, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230501', '市辖区', '230500', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230502', '尖山区', '230500', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230503', '岭东区', '230500', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230505', '四方台区', '230500', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230506', '宝山区', '230500', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230521', '集贤县', '230500', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230522', '友谊县', '230500', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230523', '宝清县', '230500', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230524', '饶河县', '230500', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230600', '大庆市', '230000', 2, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230601', '市辖区', '230600', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230602', '萨尔图区', '230600', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230603', '龙凤区', '230600', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230604', '让胡路区', '230600', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230605', '红岗区', '230600', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230606', '大同区', '230600', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230621', '肇州县', '230600', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230622', '肇源县', '230600', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230623', '林甸县', '230600', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230624', '杜尔伯特蒙古族自治县', '230600', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230700', '伊春市', '230000', 2, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230701', '市辖区', '230700', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230702', '伊春区', '230700', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230703', '南岔区', '230700', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230704', '友好区', '230700', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230705', '西林区', '230700', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230706', '翠峦区', '230700', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230707', '新青区', '230700', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230708', '美溪区', '230700', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230709', '金山屯区', '230700', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230710', '五营区', '230700', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230711', '乌马河区', '230700', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230712', '汤旺河区', '230700', 3, '2017-09-12 22:14:39', NULL);
INSERT INTO `rc_base_area` VALUES ('230713', '带岭区', '230700', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230714', '乌伊岭区', '230700', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230715', '红星区', '230700', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230716', '上甘岭区', '230700', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230722', '嘉荫县', '230700', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230781', '铁力市', '230700', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230800', '佳木斯市', '230000', 2, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230801', '市辖区', '230800', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230803', '向阳区', '230800', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230804', '前进区', '230800', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230805', '东风区', '230800', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230811', '郊区', '230800', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230822', '桦南县', '230800', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230826', '桦川县', '230800', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230828', '汤原县', '230800', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230881', '同江市', '230800', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230882', '富锦市', '230800', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230883', '抚远市', '230800', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230900', '七台河市', '230000', 2, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230901', '市辖区', '230900', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230902', '新兴区', '230900', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230903', '桃山区', '230900', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230904', '茄子河区', '230900', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('230921', '勃利县', '230900', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('231000', '牡丹江市', '230000', 2, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('231001', '市辖区', '231000', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('231002', '东安区', '231000', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('231003', '阳明区', '231000', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('231004', '爱民区', '231000', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('231005', '西安区', '231000', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('231025', '林口县', '231000', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('231081', '绥芬河市', '231000', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('231083', '海林市', '231000', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('231084', '宁安市', '231000', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('231085', '穆棱市', '231000', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('231086', '东宁市', '231000', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('231100', '黑河市', '230000', 2, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('231101', '市辖区', '231100', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('231102', '爱辉区', '231100', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('231121', '嫩江县', '231100', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('231123', '逊克县', '231100', 3, '2017-09-12 22:14:40', NULL);
INSERT INTO `rc_base_area` VALUES ('231124', '孙吴县', '231100', 3, '2017-09-12 22:14:41', NULL);
INSERT INTO `rc_base_area` VALUES ('231181', '北安市', '231100', 3, '2017-09-12 22:14:41', NULL);
INSERT INTO `rc_base_area` VALUES ('231182', '五大连池市', '231100', 3, '2017-09-12 22:14:41', NULL);
INSERT INTO `rc_base_area` VALUES ('231200', '绥化市', '230000', 2, '2017-09-12 22:14:41', NULL);
INSERT INTO `rc_base_area` VALUES ('231201', '市辖区', '231200', 3, '2017-09-12 22:14:41', NULL);
INSERT INTO `rc_base_area` VALUES ('231202', '北林区', '231200', 3, '2017-09-12 22:14:41', NULL);
INSERT INTO `rc_base_area` VALUES ('231221', '望奎县', '231200', 3, '2017-09-12 22:14:41', NULL);
INSERT INTO `rc_base_area` VALUES ('231222', '兰西县', '231200', 3, '2017-09-12 22:14:41', NULL);
INSERT INTO `rc_base_area` VALUES ('231223', '青冈县', '231200', 3, '2017-09-12 22:14:41', NULL);
INSERT INTO `rc_base_area` VALUES ('231224', '庆安县', '231200', 3, '2017-09-12 22:14:41', NULL);
INSERT INTO `rc_base_area` VALUES ('231225', '明水县', '231200', 3, '2017-09-12 22:14:41', NULL);
INSERT INTO `rc_base_area` VALUES ('231226', '绥棱县', '231200', 3, '2017-09-12 22:14:41', NULL);
INSERT INTO `rc_base_area` VALUES ('231281', '安达市', '231200', 3, '2017-09-12 22:14:41', NULL);
INSERT INTO `rc_base_area` VALUES ('231282', '肇东市', '231200', 3, '2017-09-12 22:14:41', NULL);
INSERT INTO `rc_base_area` VALUES ('231283', '海伦市', '231200', 3, '2017-09-12 22:14:41', NULL);
INSERT INTO `rc_base_area` VALUES ('232700', '大兴安岭地区', '230000', 2, '2017-09-12 22:14:41', NULL);
INSERT INTO `rc_base_area` VALUES ('232721', '呼玛县', '232700', 3, '2017-09-12 22:14:41', NULL);
INSERT INTO `rc_base_area` VALUES ('232722', '塔河县', '232700', 3, '2017-09-12 22:14:41', NULL);
INSERT INTO `rc_base_area` VALUES ('232723', '漠河县', '232700', 3, '2017-09-12 22:14:41', NULL);
INSERT INTO `rc_base_area` VALUES ('310000', '上海市', '0', 1, '2017-09-12 22:15:21', NULL);
INSERT INTO `rc_base_area` VALUES ('310100', '市辖区', '310000', 2, '2017-09-12 22:15:22', NULL);
INSERT INTO `rc_base_area` VALUES ('310101', '黄浦区', '310100', 3, '2017-09-12 22:15:22', NULL);
INSERT INTO `rc_base_area` VALUES ('310104', '徐汇区', '310100', 3, '2017-09-12 22:15:22', NULL);
INSERT INTO `rc_base_area` VALUES ('310105', '长宁区', '310100', 3, '2017-09-12 22:15:22', NULL);
INSERT INTO `rc_base_area` VALUES ('310106', '静安区', '310100', 3, '2017-09-12 22:15:22', NULL);
INSERT INTO `rc_base_area` VALUES ('310107', '普陀区', '310100', 3, '2017-09-12 22:15:22', NULL);
INSERT INTO `rc_base_area` VALUES ('310109', '虹口区', '310100', 3, '2017-09-12 22:15:22', NULL);
INSERT INTO `rc_base_area` VALUES ('310110', '杨浦区', '310100', 3, '2017-09-12 22:15:22', NULL);
INSERT INTO `rc_base_area` VALUES ('310112', '闵行区', '310100', 3, '2017-09-12 22:15:22', NULL);
INSERT INTO `rc_base_area` VALUES ('310113', '宝山区', '310100', 3, '2017-09-12 22:15:22', NULL);
INSERT INTO `rc_base_area` VALUES ('310114', '嘉定区', '310100', 3, '2017-09-12 22:15:22', NULL);
INSERT INTO `rc_base_area` VALUES ('310115', '浦东新区', '310100', 3, '2017-09-12 22:15:22', NULL);
INSERT INTO `rc_base_area` VALUES ('310116', '金山区', '310100', 3, '2017-09-12 22:15:22', NULL);
INSERT INTO `rc_base_area` VALUES ('310117', '松江区', '310100', 3, '2017-09-12 22:15:22', NULL);
INSERT INTO `rc_base_area` VALUES ('310118', '青浦区', '310100', 3, '2017-09-12 22:15:22', NULL);
INSERT INTO `rc_base_area` VALUES ('310120', '奉贤区', '310100', 3, '2017-09-12 22:15:22', NULL);
INSERT INTO `rc_base_area` VALUES ('310151', '崇明区', '310100', 3, '2017-09-12 22:15:22', NULL);
INSERT INTO `rc_base_area` VALUES ('320000', '江苏省', '0', 1, '2017-09-12 22:18:02', NULL);
INSERT INTO `rc_base_area` VALUES ('320100', '南京市', '320000', 2, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320101', '市辖区', '320100', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320102', '玄武区', '320100', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320104', '秦淮区', '320100', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320105', '建邺区', '320100', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320106', '鼓楼区', '320100', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320111', '浦口区', '320100', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320113', '栖霞区', '320100', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320114', '雨花台区', '320100', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320115', '江宁区', '320100', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320116', '六合区', '320100', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320117', '溧水区', '320100', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320118', '高淳区', '320100', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320200', '无锡市', '320000', 2, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320201', '市辖区', '320200', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320205', '锡山区', '320200', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320206', '惠山区', '320200', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320211', '滨湖区', '320200', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320213', '梁溪区', '320200', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320214', '新吴区', '320200', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320281', '江阴市', '320200', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320282', '宜兴市', '320200', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320300', '徐州市', '320000', 2, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320301', '市辖区', '320300', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320302', '鼓楼区', '320300', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320303', '云龙区', '320300', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320305', '贾汪区', '320300', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320311', '泉山区', '320300', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320312', '铜山区', '320300', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320321', '丰县', '320300', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320322', '沛县', '320300', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320324', '睢宁县', '320300', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320381', '新沂市', '320300', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320382', '邳州市', '320300', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320400', '常州市', '320000', 2, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320401', '市辖区', '320400', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320402', '天宁区', '320400', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320404', '钟楼区', '320400', 3, '2017-09-12 22:18:03', NULL);
INSERT INTO `rc_base_area` VALUES ('320411', '新北区', '320400', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320412', '武进区', '320400', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320413', '金坛区', '320400', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320481', '溧阳市', '320400', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320500', '苏州市', '320000', 2, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320501', '市辖区', '320500', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320505', '虎丘区', '320500', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320506', '吴中区', '320500', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320507', '相城区', '320500', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320508', '姑苏区', '320500', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320509', '吴江区', '320500', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320581', '常熟市', '320500', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320582', '张家港市', '320500', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320583', '昆山市', '320500', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320585', '太仓市', '320500', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320600', '南通市', '320000', 2, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320601', '市辖区', '320600', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320602', '崇川区', '320600', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320611', '港闸区', '320600', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320612', '通州区', '320600', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320621', '海安县', '320600', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320623', '如东县', '320600', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320681', '启东市', '320600', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320682', '如皋市', '320600', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320684', '海门市', '320600', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320700', '连云港市', '320000', 2, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320701', '市辖区', '320700', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320703', '连云区', '320700', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320706', '海州区', '320700', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320707', '赣榆区', '320700', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320722', '东海县', '320700', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320723', '灌云县', '320700', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320724', '灌南县', '320700', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320800', '淮安市', '320000', 2, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320801', '市辖区', '320800', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320803', '淮安区', '320800', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320804', '淮阴区', '320800', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320812', '清江浦区', '320800', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320813', '洪泽区', '320800', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320826', '涟水县', '320800', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320830', '盱眙县', '320800', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320831', '金湖县', '320800', 3, '2017-09-12 22:18:04', NULL);
INSERT INTO `rc_base_area` VALUES ('320900', '盐城市', '320000', 2, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('320901', '市辖区', '320900', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('320902', '亭湖区', '320900', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('320903', '盐都区', '320900', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('320904', '大丰区', '320900', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('320921', '响水县', '320900', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('320922', '滨海县', '320900', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('320923', '阜宁县', '320900', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('320924', '射阳县', '320900', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('320925', '建湖县', '320900', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('320981', '东台市', '320900', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321000', '扬州市', '320000', 2, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321001', '市辖区', '321000', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321002', '广陵区', '321000', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321003', '邗江区', '321000', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321012', '江都区', '321000', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321023', '宝应县', '321000', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321081', '仪征市', '321000', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321084', '高邮市', '321000', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321100', '镇江市', '320000', 2, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321101', '市辖区', '321100', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321102', '京口区', '321100', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321111', '润州区', '321100', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321112', '丹徒区', '321100', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321181', '丹阳市', '321100', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321182', '扬中市', '321100', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321183', '句容市', '321100', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321200', '泰州市', '320000', 2, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321201', '市辖区', '321200', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321202', '海陵区', '321200', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321203', '高港区', '321200', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321204', '姜堰区', '321200', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321281', '兴化市', '321200', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321282', '靖江市', '321200', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321283', '泰兴市', '321200', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321300', '宿迁市', '320000', 2, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321301', '市辖区', '321300', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321302', '宿城区', '321300', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321311', '宿豫区', '321300', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321322', '沭阳县', '321300', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321323', '泗阳县', '321300', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('321324', '泗洪县', '321300', 3, '2017-09-12 22:18:05', NULL);
INSERT INTO `rc_base_area` VALUES ('330000', '浙江省', '0', 1, '2017-09-12 22:19:35', NULL);
INSERT INTO `rc_base_area` VALUES ('330100', '杭州市', '330000', 2, '2017-09-12 22:19:35', NULL);
INSERT INTO `rc_base_area` VALUES ('330101', '市辖区', '330100', 3, '2017-09-12 22:19:35', NULL);
INSERT INTO `rc_base_area` VALUES ('330102', '上城区', '330100', 3, '2017-09-12 22:19:35', NULL);
INSERT INTO `rc_base_area` VALUES ('330103', '下城区', '330100', 3, '2017-09-12 22:19:35', NULL);
INSERT INTO `rc_base_area` VALUES ('330104', '江干区', '330100', 3, '2017-09-12 22:19:35', NULL);
INSERT INTO `rc_base_area` VALUES ('330105', '拱墅区', '330100', 3, '2017-09-12 22:19:35', NULL);
INSERT INTO `rc_base_area` VALUES ('330106', '西湖区', '330100', 3, '2017-09-12 22:19:35', NULL);
INSERT INTO `rc_base_area` VALUES ('330108', '滨江区', '330100', 3, '2017-09-12 22:19:35', NULL);
INSERT INTO `rc_base_area` VALUES ('330109', '萧山区', '330100', 3, '2017-09-12 22:19:35', NULL);
INSERT INTO `rc_base_area` VALUES ('330110', '余杭区', '330100', 3, '2017-09-12 22:19:35', NULL);
INSERT INTO `rc_base_area` VALUES ('330111', '富阳区', '330100', 3, '2017-09-12 22:19:35', NULL);
INSERT INTO `rc_base_area` VALUES ('330122', '桐庐县', '330100', 3, '2017-09-12 22:19:35', NULL);
INSERT INTO `rc_base_area` VALUES ('330127', '淳安县', '330100', 3, '2017-09-12 22:19:35', NULL);
INSERT INTO `rc_base_area` VALUES ('330182', '建德市', '330100', 3, '2017-09-12 22:19:35', NULL);
INSERT INTO `rc_base_area` VALUES ('330185', '临安市', '330100', 3, '2017-09-12 22:19:35', NULL);
INSERT INTO `rc_base_area` VALUES ('330200', '宁波市', '330000', 2, '2017-09-12 22:19:35', NULL);
INSERT INTO `rc_base_area` VALUES ('330201', '市辖区', '330200', 3, '2017-09-12 22:19:35', NULL);
INSERT INTO `rc_base_area` VALUES ('330203', '海曙区', '330200', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330204', '江东区', '330200', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330205', '江北区', '330200', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330206', '北仑区', '330200', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330211', '镇海区', '330200', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330212', '鄞州区', '330200', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330225', '象山县', '330200', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330226', '宁海县', '330200', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330281', '余姚市', '330200', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330282', '慈溪市', '330200', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330283', '奉化市', '330200', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330300', '温州市', '330000', 2, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330301', '市辖区', '330300', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330302', '鹿城区', '330300', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330303', '龙湾区', '330300', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330304', '瓯海区', '330300', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330305', '洞头区', '330300', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330324', '永嘉县', '330300', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330326', '平阳县', '330300', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330327', '苍南县', '330300', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330328', '文成县', '330300', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330329', '泰顺县', '330300', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330381', '瑞安市', '330300', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330382', '乐清市', '330300', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330400', '嘉兴市', '330000', 2, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330401', '市辖区', '330400', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330402', '南湖区', '330400', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330411', '秀洲区', '330400', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330421', '嘉善县', '330400', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330424', '海盐县', '330400', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330481', '海宁市', '330400', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330482', '平湖市', '330400', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330483', '桐乡市', '330400', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330500', '湖州市', '330000', 2, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330501', '市辖区', '330500', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330502', '吴兴区', '330500', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330503', '南浔区', '330500', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330521', '德清县', '330500', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330522', '长兴县', '330500', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330523', '安吉县', '330500', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330600', '绍兴市', '330000', 2, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330601', '市辖区', '330600', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330602', '越城区', '330600', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330603', '柯桥区', '330600', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330604', '上虞区', '330600', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330624', '新昌县', '330600', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330681', '诸暨市', '330600', 3, '2017-09-12 22:19:36', NULL);
INSERT INTO `rc_base_area` VALUES ('330683', '嵊州市', '330600', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330700', '金华市', '330000', 2, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330701', '市辖区', '330700', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330702', '婺城区', '330700', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330703', '金东区', '330700', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330723', '武义县', '330700', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330726', '浦江县', '330700', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330727', '磐安县', '330700', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330781', '兰溪市', '330700', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330782', '义乌市', '330700', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330783', '东阳市', '330700', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330784', '永康市', '330700', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330800', '衢州市', '330000', 2, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330801', '市辖区', '330800', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330802', '柯城区', '330800', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330803', '衢江区', '330800', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330822', '常山县', '330800', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330824', '开化县', '330800', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330825', '龙游县', '330800', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330881', '江山市', '330800', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330900', '舟山市', '330000', 2, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330901', '市辖区', '330900', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330902', '定海区', '330900', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330903', '普陀区', '330900', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330921', '岱山县', '330900', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('330922', '嵊泗县', '330900', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331000', '台州市', '330000', 2, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331001', '市辖区', '331000', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331002', '椒江区', '331000', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331003', '黄岩区', '331000', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331004', '路桥区', '331000', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331021', '玉环县', '331000', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331022', '三门县', '331000', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331023', '天台县', '331000', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331024', '仙居县', '331000', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331081', '温岭市', '331000', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331082', '临海市', '331000', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331100', '丽水市', '330000', 2, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331101', '市辖区', '331100', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331102', '莲都区', '331100', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331121', '青田县', '331100', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331122', '缙云县', '331100', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331123', '遂昌县', '331100', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331124', '松阳县', '331100', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331125', '云和县', '331100', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331126', '庆元县', '331100', 3, '2017-09-12 22:19:37', NULL);
INSERT INTO `rc_base_area` VALUES ('331127', '景宁畲族自治县', '331100', 3, '2017-09-12 22:19:38', NULL);
INSERT INTO `rc_base_area` VALUES ('331181', '龙泉市', '331100', 3, '2017-09-12 22:19:38', NULL);
INSERT INTO `rc_base_area` VALUES ('340000', '安徽省', '0', 1, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340100', '合肥市', '340000', 2, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340101', '市辖区', '340100', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340102', '瑶海区', '340100', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340103', '庐阳区', '340100', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340104', '蜀山区', '340100', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340111', '包河区', '340100', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340121', '长丰县', '340100', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340122', '肥东县', '340100', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340123', '肥西县', '340100', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340124', '庐江县', '340100', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340181', '巢湖市', '340100', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340200', '芜湖市', '340000', 2, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340201', '市辖区', '340200', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340202', '镜湖区', '340200', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340203', '弋江区', '340200', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340207', '鸠江区', '340200', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340208', '三山区', '340200', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340221', '芜湖县', '340200', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340222', '繁昌县', '340200', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340223', '南陵县', '340200', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340225', '无为县', '340200', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340300', '蚌埠市', '340000', 2, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340301', '市辖区', '340300', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340302', '龙子湖区', '340300', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340303', '蚌山区', '340300', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340304', '禹会区', '340300', 3, '2017-09-12 22:20:21', NULL);
INSERT INTO `rc_base_area` VALUES ('340311', '淮上区', '340300', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340321', '怀远县', '340300', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340322', '五河县', '340300', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340323', '固镇县', '340300', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340400', '淮南市', '340000', 2, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340401', '市辖区', '340400', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340402', '大通区', '340400', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340403', '田家庵区', '340400', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340404', '谢家集区', '340400', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340405', '八公山区', '340400', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340406', '潘集区', '340400', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340421', '凤台县', '340400', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340422', '寿县', '340400', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340500', '马鞍山市', '340000', 2, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340501', '市辖区', '340500', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340503', '花山区', '340500', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340504', '雨山区', '340500', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340506', '博望区', '340500', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340521', '当涂县', '340500', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340522', '含山县', '340500', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340523', '和县', '340500', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340600', '淮北市', '340000', 2, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340601', '市辖区', '340600', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340602', '杜集区', '340600', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340603', '相山区', '340600', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340604', '烈山区', '340600', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340621', '濉溪县', '340600', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340700', '铜陵市', '340000', 2, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340701', '市辖区', '340700', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340705', '铜官区', '340700', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340706', '义安区', '340700', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340711', '郊区', '340700', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340722', '枞阳县', '340700', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340800', '安庆市', '340000', 2, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340801', '市辖区', '340800', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340802', '迎江区', '340800', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340803', '大观区', '340800', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340811', '宜秀区', '340800', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340822', '怀宁县', '340800', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340824', '潜山县', '340800', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340825', '太湖县', '340800', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340826', '宿松县', '340800', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340827', '望江县', '340800', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340828', '岳西县', '340800', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('340881', '桐城市', '340800', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('341000', '黄山市', '340000', 2, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('341001', '市辖区', '341000', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('341002', '屯溪区', '341000', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('341003', '黄山区', '341000', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('341004', '徽州区', '341000', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('341021', '歙县', '341000', 3, '2017-09-12 22:20:22', NULL);
INSERT INTO `rc_base_area` VALUES ('341022', '休宁县', '341000', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341023', '黟县', '341000', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341024', '祁门县', '341000', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341100', '滁州市', '340000', 2, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341101', '市辖区', '341100', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341102', '琅琊区', '341100', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341103', '南谯区', '341100', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341122', '来安县', '341100', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341124', '全椒县', '341100', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341125', '定远县', '341100', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341126', '凤阳县', '341100', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341181', '天长市', '341100', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341182', '明光市', '341100', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341200', '阜阳市', '340000', 2, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341201', '市辖区', '341200', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341202', '颍州区', '341200', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341203', '颍东区', '341200', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341204', '颍泉区', '341200', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341221', '临泉县', '341200', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341222', '太和县', '341200', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341225', '阜南县', '341200', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341226', '颍上县', '341200', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341282', '界首市', '341200', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341300', '宿州市', '340000', 2, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341301', '市辖区', '341300', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341302', '埇桥区', '341300', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341321', '砀山县', '341300', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341322', '萧县', '341300', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341323', '灵璧县', '341300', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341324', '泗县', '341300', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341500', '六安市', '340000', 2, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341501', '市辖区', '341500', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341502', '金安区', '341500', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341503', '裕安区', '341500', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341504', '叶集区', '341500', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341522', '霍邱县', '341500', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341523', '舒城县', '341500', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341524', '金寨县', '341500', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341525', '霍山县', '341500', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341600', '亳州市', '340000', 2, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341601', '市辖区', '341600', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341602', '谯城区', '341600', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341621', '涡阳县', '341600', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341622', '蒙城县', '341600', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341623', '利辛县', '341600', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341700', '池州市', '340000', 2, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341701', '市辖区', '341700', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341702', '贵池区', '341700', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341721', '东至县', '341700', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341722', '石台县', '341700', 3, '2017-09-12 22:20:23', NULL);
INSERT INTO `rc_base_area` VALUES ('341723', '青阳县', '341700', 3, '2017-09-12 22:20:24', NULL);
INSERT INTO `rc_base_area` VALUES ('341800', '宣城市', '340000', 2, '2017-09-12 22:20:24', NULL);
INSERT INTO `rc_base_area` VALUES ('341801', '市辖区', '341800', 3, '2017-09-12 22:20:24', NULL);
INSERT INTO `rc_base_area` VALUES ('341802', '宣州区', '341800', 3, '2017-09-12 22:20:24', NULL);
INSERT INTO `rc_base_area` VALUES ('341821', '郎溪县', '341800', 3, '2017-09-12 22:20:24', NULL);
INSERT INTO `rc_base_area` VALUES ('341822', '广德县', '341800', 3, '2017-09-12 22:20:24', NULL);
INSERT INTO `rc_base_area` VALUES ('341823', '泾县', '341800', 3, '2017-09-12 22:20:24', NULL);
INSERT INTO `rc_base_area` VALUES ('341824', '绩溪县', '341800', 3, '2017-09-12 22:20:24', NULL);
INSERT INTO `rc_base_area` VALUES ('341825', '旌德县', '341800', 3, '2017-09-12 22:20:24', NULL);
INSERT INTO `rc_base_area` VALUES ('341881', '宁国市', '341800', 3, '2017-09-12 22:20:24', NULL);
INSERT INTO `rc_base_area` VALUES ('350000', '福建省', '0', 1, '2017-09-12 22:20:56', NULL);
INSERT INTO `rc_base_area` VALUES ('350100', '福州市', '350000', 2, '2017-09-12 22:20:56', NULL);
INSERT INTO `rc_base_area` VALUES ('350101', '市辖区', '350100', 3, '2017-09-12 22:20:56', NULL);
INSERT INTO `rc_base_area` VALUES ('350102', '鼓楼区', '350100', 3, '2017-09-12 22:20:56', NULL);
INSERT INTO `rc_base_area` VALUES ('350103', '台江区', '350100', 3, '2017-09-12 22:20:56', NULL);
INSERT INTO `rc_base_area` VALUES ('350104', '仓山区', '350100', 3, '2017-09-12 22:20:56', NULL);
INSERT INTO `rc_base_area` VALUES ('350105', '马尾区', '350100', 3, '2017-09-12 22:20:56', NULL);
INSERT INTO `rc_base_area` VALUES ('350111', '晋安区', '350100', 3, '2017-09-12 22:20:56', NULL);
INSERT INTO `rc_base_area` VALUES ('350121', '闽侯县', '350100', 3, '2017-09-12 22:20:56', NULL);
INSERT INTO `rc_base_area` VALUES ('350122', '连江县', '350100', 3, '2017-09-12 22:20:56', NULL);
INSERT INTO `rc_base_area` VALUES ('350123', '罗源县', '350100', 3, '2017-09-12 22:20:56', NULL);
INSERT INTO `rc_base_area` VALUES ('350124', '闽清县', '350100', 3, '2017-09-12 22:20:56', NULL);
INSERT INTO `rc_base_area` VALUES ('350125', '永泰县', '350100', 3, '2017-09-12 22:20:56', NULL);
INSERT INTO `rc_base_area` VALUES ('350128', '平潭县', '350100', 3, '2017-09-12 22:20:56', NULL);
INSERT INTO `rc_base_area` VALUES ('350181', '福清市', '350100', 3, '2017-09-12 22:20:56', NULL);
INSERT INTO `rc_base_area` VALUES ('350182', '长乐市', '350100', 3, '2017-09-12 22:20:56', NULL);
INSERT INTO `rc_base_area` VALUES ('350200', '厦门市', '350000', 2, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350201', '市辖区', '350200', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350203', '思明区', '350200', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350205', '海沧区', '350200', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350206', '湖里区', '350200', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350211', '集美区', '350200', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350212', '同安区', '350200', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350213', '翔安区', '350200', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350300', '莆田市', '350000', 2, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350301', '市辖区', '350300', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350302', '城厢区', '350300', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350303', '涵江区', '350300', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350304', '荔城区', '350300', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350305', '秀屿区', '350300', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350322', '仙游县', '350300', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350400', '三明市', '350000', 2, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350401', '市辖区', '350400', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350402', '梅列区', '350400', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350403', '三元区', '350400', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350421', '明溪县', '350400', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350423', '清流县', '350400', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350424', '宁化县', '350400', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350425', '大田县', '350400', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350426', '尤溪县', '350400', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350427', '沙县', '350400', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350428', '将乐县', '350400', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350429', '泰宁县', '350400', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350430', '建宁县', '350400', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350481', '永安市', '350400', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350500', '泉州市', '350000', 2, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350501', '市辖区', '350500', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350502', '鲤城区', '350500', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350503', '丰泽区', '350500', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350504', '洛江区', '350500', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350505', '泉港区', '350500', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350521', '惠安县', '350500', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350524', '安溪县', '350500', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350525', '永春县', '350500', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350526', '德化县', '350500', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350527', '金门县', '350500', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350581', '石狮市', '350500', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350582', '晋江市', '350500', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350583', '南安市', '350500', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350600', '漳州市', '350000', 2, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350601', '市辖区', '350600', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350602', '芗城区', '350600', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350603', '龙文区', '350600', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350622', '云霄县', '350600', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350623', '漳浦县', '350600', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350624', '诏安县', '350600', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350625', '长泰县', '350600', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350626', '东山县', '350600', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350627', '南靖县', '350600', 3, '2017-09-12 22:20:57', NULL);
INSERT INTO `rc_base_area` VALUES ('350628', '平和县', '350600', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350629', '华安县', '350600', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350681', '龙海市', '350600', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350700', '南平市', '350000', 2, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350701', '市辖区', '350700', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350702', '延平区', '350700', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350703', '建阳区', '350700', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350721', '顺昌县', '350700', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350722', '浦城县', '350700', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350723', '光泽县', '350700', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350724', '松溪县', '350700', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350725', '政和县', '350700', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350781', '邵武市', '350700', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350782', '武夷山市', '350700', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350783', '建瓯市', '350700', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350800', '龙岩市', '350000', 2, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350801', '市辖区', '350800', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350802', '新罗区', '350800', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350803', '永定区', '350800', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350821', '长汀县', '350800', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350823', '上杭县', '350800', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350824', '武平县', '350800', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350825', '连城县', '350800', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350881', '漳平市', '350800', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350900', '宁德市', '350000', 2, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350901', '市辖区', '350900', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350902', '蕉城区', '350900', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350921', '霞浦县', '350900', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350922', '古田县', '350900', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350923', '屏南县', '350900', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350924', '寿宁县', '350900', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350925', '周宁县', '350900', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350926', '柘荣县', '350900', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350981', '福安市', '350900', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('350982', '福鼎市', '350900', 3, '2017-09-12 22:20:58', NULL);
INSERT INTO `rc_base_area` VALUES ('360000', '江西省', '0', 1, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360100', '南昌市', '360000', 2, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360101', '市辖区', '360100', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360102', '东湖区', '360100', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360103', '西湖区', '360100', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360104', '青云谱区', '360100', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360105', '湾里区', '360100', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360111', '青山湖区', '360100', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360112', '新建区', '360100', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360121', '南昌县', '360100', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360123', '安义县', '360100', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360124', '进贤县', '360100', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360200', '景德镇市', '360000', 2, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360201', '市辖区', '360200', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360202', '昌江区', '360200', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360203', '珠山区', '360200', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360222', '浮梁县', '360200', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360281', '乐平市', '360200', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360300', '萍乡市', '360000', 2, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360301', '市辖区', '360300', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360302', '安源区', '360300', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360313', '湘东区', '360300', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360321', '莲花县', '360300', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360322', '上栗县', '360300', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360323', '芦溪县', '360300', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360400', '九江市', '360000', 2, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360401', '市辖区', '360400', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360402', '濂溪区', '360400', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360403', '浔阳区', '360400', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360421', '九江县', '360400', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360423', '武宁县', '360400', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360424', '修水县', '360400', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360425', '永修县', '360400', 3, '2017-09-12 22:21:35', NULL);
INSERT INTO `rc_base_area` VALUES ('360426', '德安县', '360400', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360428', '都昌县', '360400', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360429', '湖口县', '360400', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360430', '彭泽县', '360400', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360481', '瑞昌市', '360400', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360482', '共青城市', '360400', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360483', '庐山市', '360400', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360500', '新余市', '360000', 2, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360501', '市辖区', '360500', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360502', '渝水区', '360500', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360521', '分宜县', '360500', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360600', '鹰潭市', '360000', 2, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360601', '市辖区', '360600', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360602', '月湖区', '360600', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360622', '余江县', '360600', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360681', '贵溪市', '360600', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360700', '赣州市', '360000', 2, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360701', '市辖区', '360700', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360702', '章贡区', '360700', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360703', '南康区', '360700', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360721', '赣县', '360700', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360722', '信丰县', '360700', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360723', '大余县', '360700', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360724', '上犹县', '360700', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360725', '崇义县', '360700', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360726', '安远县', '360700', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360727', '龙南县', '360700', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360728', '定南县', '360700', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360729', '全南县', '360700', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360730', '宁都县', '360700', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360731', '于都县', '360700', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360732', '兴国县', '360700', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360733', '会昌县', '360700', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360734', '寻乌县', '360700', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360735', '石城县', '360700', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360781', '瑞金市', '360700', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360800', '吉安市', '360000', 2, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360801', '市辖区', '360800', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360802', '吉州区', '360800', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360803', '青原区', '360800', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360821', '吉安县', '360800', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360822', '吉水县', '360800', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360823', '峡江县', '360800', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360824', '新干县', '360800', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360825', '永丰县', '360800', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360826', '泰和县', '360800', 3, '2017-09-12 22:21:36', NULL);
INSERT INTO `rc_base_area` VALUES ('360827', '遂川县', '360800', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('360828', '万安县', '360800', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('360829', '安福县', '360800', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('360830', '永新县', '360800', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('360881', '井冈山市', '360800', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('360900', '宜春市', '360000', 2, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('360901', '市辖区', '360900', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('360902', '袁州区', '360900', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('360921', '奉新县', '360900', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('360922', '万载县', '360900', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('360923', '上高县', '360900', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('360924', '宜丰县', '360900', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('360925', '靖安县', '360900', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('360926', '铜鼓县', '360900', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('360981', '丰城市', '360900', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('360982', '樟树市', '360900', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('360983', '高安市', '360900', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361000', '抚州市', '360000', 2, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361001', '市辖区', '361000', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361002', '临川区', '361000', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361021', '南城县', '361000', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361022', '黎川县', '361000', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361023', '南丰县', '361000', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361024', '崇仁县', '361000', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361025', '乐安县', '361000', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361026', '宜黄县', '361000', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361027', '金溪县', '361000', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361028', '资溪县', '361000', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361029', '东乡县', '361000', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361030', '广昌县', '361000', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361100', '上饶市', '360000', 2, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361101', '市辖区', '361100', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361102', '信州区', '361100', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361103', '广丰区', '361100', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361121', '上饶县', '361100', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361123', '玉山县', '361100', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361124', '铅山县', '361100', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361125', '横峰县', '361100', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361126', '弋阳县', '361100', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361127', '余干县', '361100', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361128', '鄱阳县', '361100', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361129', '万年县', '361100', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361130', '婺源县', '361100', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('361181', '德兴市', '361100', 3, '2017-09-12 22:21:37', NULL);
INSERT INTO `rc_base_area` VALUES ('370000', '山东省', '0', 1, '2017-09-12 22:22:09', NULL);
INSERT INTO `rc_base_area` VALUES ('370100', '济南市', '370000', 2, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370101', '市辖区', '370100', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370102', '历下区', '370100', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370103', '市中区', '370100', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370104', '槐荫区', '370100', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370105', '天桥区', '370100', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370112', '历城区', '370100', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370113', '长清区', '370100', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370124', '平阴县', '370100', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370125', '济阳县', '370100', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370126', '商河县', '370100', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370181', '章丘市', '370100', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370200', '青岛市', '370000', 2, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370201', '市辖区', '370200', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370202', '市南区', '370200', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370203', '市北区', '370200', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370211', '黄岛区', '370200', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370212', '崂山区', '370200', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370213', '李沧区', '370200', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370214', '城阳区', '370200', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370281', '胶州市', '370200', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370282', '即墨市', '370200', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370283', '平度市', '370200', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370285', '莱西市', '370200', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370300', '淄博市', '370000', 2, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370301', '市辖区', '370300', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370302', '淄川区', '370300', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370303', '张店区', '370300', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370304', '博山区', '370300', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370305', '临淄区', '370300', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370306', '周村区', '370300', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370321', '桓台县', '370300', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370322', '高青县', '370300', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370323', '沂源县', '370300', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370400', '枣庄市', '370000', 2, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370401', '市辖区', '370400', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370402', '市中区', '370400', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370403', '薛城区', '370400', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370404', '峄城区', '370400', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370405', '台儿庄区', '370400', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370406', '山亭区', '370400', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370481', '滕州市', '370400', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370500', '东营市', '370000', 2, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370501', '市辖区', '370500', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370502', '东营区', '370500', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370503', '河口区', '370500', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370505', '垦利区', '370500', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370522', '利津县', '370500', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370523', '广饶县', '370500', 3, '2017-09-12 22:22:10', NULL);
INSERT INTO `rc_base_area` VALUES ('370600', '烟台市', '370000', 2, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370601', '市辖区', '370600', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370602', '芝罘区', '370600', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370611', '福山区', '370600', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370612', '牟平区', '370600', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370613', '莱山区', '370600', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370634', '长岛县', '370600', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370681', '龙口市', '370600', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370682', '莱阳市', '370600', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370683', '莱州市', '370600', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370684', '蓬莱市', '370600', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370685', '招远市', '370600', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370686', '栖霞市', '370600', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370687', '海阳市', '370600', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370700', '潍坊市', '370000', 2, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370701', '市辖区', '370700', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370702', '潍城区', '370700', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370703', '寒亭区', '370700', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370704', '坊子区', '370700', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370705', '奎文区', '370700', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370724', '临朐县', '370700', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370725', '昌乐县', '370700', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370781', '青州市', '370700', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370782', '诸城市', '370700', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370783', '寿光市', '370700', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370784', '安丘市', '370700', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370785', '高密市', '370700', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370786', '昌邑市', '370700', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370800', '济宁市', '370000', 2, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370801', '市辖区', '370800', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370811', '任城区', '370800', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370812', '兖州区', '370800', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370826', '微山县', '370800', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370827', '鱼台县', '370800', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370828', '金乡县', '370800', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370829', '嘉祥县', '370800', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370830', '汶上县', '370800', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370831', '泗水县', '370800', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370832', '梁山县', '370800', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370881', '曲阜市', '370800', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370883', '邹城市', '370800', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370900', '泰安市', '370000', 2, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370901', '市辖区', '370900', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370902', '泰山区', '370900', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370911', '岱岳区', '370900', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370921', '宁阳县', '370900', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370923', '东平县', '370900', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370982', '新泰市', '370900', 3, '2017-09-12 22:22:11', NULL);
INSERT INTO `rc_base_area` VALUES ('370983', '肥城市', '370900', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371000', '威海市', '370000', 2, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371001', '市辖区', '371000', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371002', '环翠区', '371000', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371003', '文登区', '371000', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371082', '荣成市', '371000', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371083', '乳山市', '371000', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371100', '日照市', '370000', 2, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371101', '市辖区', '371100', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371102', '东港区', '371100', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371103', '岚山区', '371100', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371121', '五莲县', '371100', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371122', '莒县', '371100', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371200', '莱芜市', '370000', 2, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371201', '市辖区', '371200', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371202', '莱城区', '371200', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371203', '钢城区', '371200', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371300', '临沂市', '370000', 2, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371301', '市辖区', '371300', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371302', '兰山区', '371300', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371311', '罗庄区', '371300', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371312', '河东区', '371300', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371321', '沂南县', '371300', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371322', '郯城县', '371300', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371323', '沂水县', '371300', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371324', '兰陵县', '371300', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371325', '费县', '371300', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371326', '平邑县', '371300', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371327', '莒南县', '371300', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371328', '蒙阴县', '371300', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371329', '临沭县', '371300', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371400', '德州市', '370000', 2, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371401', '市辖区', '371400', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371402', '德城区', '371400', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371403', '陵城区', '371400', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371422', '宁津县', '371400', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371423', '庆云县', '371400', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371424', '临邑县', '371400', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371425', '齐河县', '371400', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371426', '平原县', '371400', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371427', '夏津县', '371400', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371428', '武城县', '371400', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371481', '乐陵市', '371400', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371482', '禹城市', '371400', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371500', '聊城市', '370000', 2, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371501', '市辖区', '371500', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371502', '东昌府区', '371500', 3, '2017-09-12 22:22:12', NULL);
INSERT INTO `rc_base_area` VALUES ('371521', '阳谷县', '371500', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371522', '莘县', '371500', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371523', '茌平县', '371500', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371524', '东阿县', '371500', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371525', '冠县', '371500', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371526', '高唐县', '371500', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371581', '临清市', '371500', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371600', '滨州市', '370000', 2, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371601', '市辖区', '371600', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371602', '滨城区', '371600', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371603', '沾化区', '371600', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371621', '惠民县', '371600', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371622', '阳信县', '371600', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371623', '无棣县', '371600', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371625', '博兴县', '371600', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371626', '邹平县', '371600', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371700', '菏泽市', '370000', 2, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371701', '市辖区', '371700', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371702', '牡丹区', '371700', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371703', '定陶区', '371700', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371721', '曹县', '371700', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371722', '单县', '371700', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371723', '成武县', '371700', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371724', '巨野县', '371700', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371725', '郓城县', '371700', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371726', '鄄城县', '371700', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('371728', '东明县', '371700', 3, '2017-09-12 22:22:13', NULL);
INSERT INTO `rc_base_area` VALUES ('410000', '河南省', '0', 1, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410100', '郑州市', '410000', 2, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410101', '市辖区', '410100', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410102', '中原区', '410100', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410103', '二七区', '410100', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410104', '管城回族区', '410100', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410105', '金水区', '410100', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410106', '上街区', '410100', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410108', '惠济区', '410100', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410122', '中牟县', '410100', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410181', '巩义市', '410100', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410182', '荥阳市', '410100', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410183', '新密市', '410100', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410184', '新郑市', '410100', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410185', '登封市', '410100', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410200', '开封市', '410000', 2, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410201', '市辖区', '410200', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410202', '龙亭区', '410200', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410203', '顺河回族区', '410200', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410204', '鼓楼区', '410200', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410205', '禹王台区', '410200', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410211', '金明区', '410200', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410212', '祥符区', '410200', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410221', '杞县', '410200', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410222', '通许县', '410200', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410223', '尉氏县', '410200', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410225', '兰考县', '410200', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410300', '洛阳市', '410000', 2, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410301', '市辖区', '410300', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410302', '老城区', '410300', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410303', '西工区', '410300', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410304', '瀍河回族区', '410300', 3, '2017-09-12 22:22:49', NULL);
INSERT INTO `rc_base_area` VALUES ('410305', '涧西区', '410300', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410306', '吉利区', '410300', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410311', '洛龙区', '410300', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410322', '孟津县', '410300', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410323', '新安县', '410300', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410324', '栾川县', '410300', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410325', '嵩县', '410300', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410326', '汝阳县', '410300', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410327', '宜阳县', '410300', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410328', '洛宁县', '410300', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410329', '伊川县', '410300', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410381', '偃师市', '410300', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410400', '平顶山市', '410000', 2, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410401', '市辖区', '410400', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410402', '新华区', '410400', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410403', '卫东区', '410400', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410404', '石龙区', '410400', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410411', '湛河区', '410400', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410421', '宝丰县', '410400', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410422', '叶县', '410400', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410423', '鲁山县', '410400', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410425', '郏县', '410400', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410481', '舞钢市', '410400', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410482', '汝州市', '410400', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410500', '安阳市', '410000', 2, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410501', '市辖区', '410500', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410502', '文峰区', '410500', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410503', '北关区', '410500', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410505', '殷都区', '410500', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410506', '龙安区', '410500', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410522', '安阳县', '410500', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410523', '汤阴县', '410500', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410526', '滑县', '410500', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410527', '内黄县', '410500', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410581', '林州市', '410500', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410600', '鹤壁市', '410000', 2, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410601', '市辖区', '410600', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410602', '鹤山区', '410600', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410603', '山城区', '410600', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410611', '淇滨区', '410600', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410621', '浚县', '410600', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410622', '淇县', '410600', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410700', '新乡市', '410000', 2, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410701', '市辖区', '410700', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410702', '红旗区', '410700', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410703', '卫滨区', '410700', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410704', '凤泉区', '410700', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410711', '牧野区', '410700', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410721', '新乡县', '410700', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410724', '获嘉县', '410700', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410725', '原阳县', '410700', 3, '2017-09-12 22:22:50', NULL);
INSERT INTO `rc_base_area` VALUES ('410726', '延津县', '410700', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410727', '封丘县', '410700', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410728', '长垣县', '410700', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410781', '卫辉市', '410700', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410782', '辉县市', '410700', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410800', '焦作市', '410000', 2, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410801', '市辖区', '410800', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410802', '解放区', '410800', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410803', '中站区', '410800', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410804', '马村区', '410800', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410811', '山阳区', '410800', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410821', '修武县', '410800', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410822', '博爱县', '410800', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410823', '武陟县', '410800', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410825', '温县', '410800', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410882', '沁阳市', '410800', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410883', '孟州市', '410800', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410900', '濮阳市', '410000', 2, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410901', '市辖区', '410900', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410902', '华龙区', '410900', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410922', '清丰县', '410900', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410923', '南乐县', '410900', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410926', '范县', '410900', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410927', '台前县', '410900', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('410928', '濮阳县', '410900', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('411000', '许昌市', '410000', 2, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('411001', '市辖区', '411000', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('411002', '魏都区', '411000', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('411023', '许昌县', '411000', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('411024', '鄢陵县', '411000', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('411025', '襄城县', '411000', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('411081', '禹州市', '411000', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('411082', '长葛市', '411000', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('411100', '漯河市', '410000', 2, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('411101', '市辖区', '411100', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('411102', '源汇区', '411100', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('411103', '郾城区', '411100', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('411104', '召陵区', '411100', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('411121', '舞阳县', '411100', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('411122', '临颍县', '411100', 3, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('411200', '三门峡市', '410000', 2, '2017-09-12 22:22:51', NULL);
INSERT INTO `rc_base_area` VALUES ('411201', '市辖区', '411200', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411202', '湖滨区', '411200', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411203', '陕州区', '411200', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411221', '渑池县', '411200', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411224', '卢氏县', '411200', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411281', '义马市', '411200', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411282', '灵宝市', '411200', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411300', '南阳市', '410000', 2, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411301', '市辖区', '411300', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411302', '宛城区', '411300', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411303', '卧龙区', '411300', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411321', '南召县', '411300', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411322', '方城县', '411300', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411323', '西峡县', '411300', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411324', '镇平县', '411300', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411325', '内乡县', '411300', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411326', '淅川县', '411300', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411327', '社旗县', '411300', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411328', '唐河县', '411300', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411329', '新野县', '411300', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411330', '桐柏县', '411300', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411381', '邓州市', '411300', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411400', '商丘市', '410000', 2, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411401', '市辖区', '411400', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411402', '梁园区', '411400', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411403', '睢阳区', '411400', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411421', '民权县', '411400', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411422', '睢县', '411400', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411423', '宁陵县', '411400', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411424', '柘城县', '411400', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411425', '虞城县', '411400', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411426', '夏邑县', '411400', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411481', '永城市', '411400', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411500', '信阳市', '410000', 2, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411501', '市辖区', '411500', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411502', '浉河区', '411500', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411503', '平桥区', '411500', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411521', '罗山县', '411500', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411522', '光山县', '411500', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411523', '新县', '411500', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411524', '商城县', '411500', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411525', '固始县', '411500', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411526', '潢川县', '411500', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411527', '淮滨县', '411500', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411528', '息县', '411500', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411600', '周口市', '410000', 2, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411601', '市辖区', '411600', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411602', '川汇区', '411600', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411621', '扶沟县', '411600', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411622', '西华县', '411600', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411623', '商水县', '411600', 3, '2017-09-12 22:22:52', NULL);
INSERT INTO `rc_base_area` VALUES ('411624', '沈丘县', '411600', 3, '2017-09-12 22:22:53', NULL);
INSERT INTO `rc_base_area` VALUES ('411625', '郸城县', '411600', 3, '2017-09-12 22:22:53', NULL);
INSERT INTO `rc_base_area` VALUES ('411626', '淮阳县', '411600', 3, '2017-09-12 22:22:53', NULL);
INSERT INTO `rc_base_area` VALUES ('411627', '太康县', '411600', 3, '2017-09-12 22:22:53', NULL);
INSERT INTO `rc_base_area` VALUES ('411628', '鹿邑县', '411600', 3, '2017-09-12 22:22:53', NULL);
INSERT INTO `rc_base_area` VALUES ('411681', '项城市', '411600', 3, '2017-09-12 22:22:53', NULL);
INSERT INTO `rc_base_area` VALUES ('411700', '驻马店市', '410000', 2, '2017-09-12 22:22:53', NULL);
INSERT INTO `rc_base_area` VALUES ('411701', '市辖区', '411700', 3, '2017-09-12 22:22:53', NULL);
INSERT INTO `rc_base_area` VALUES ('411702', '驿城区', '411700', 3, '2017-09-12 22:22:53', NULL);
INSERT INTO `rc_base_area` VALUES ('411721', '西平县', '411700', 3, '2017-09-12 22:22:53', NULL);
INSERT INTO `rc_base_area` VALUES ('411722', '上蔡县', '411700', 3, '2017-09-12 22:22:53', NULL);
INSERT INTO `rc_base_area` VALUES ('411723', '平舆县', '411700', 3, '2017-09-12 22:22:53', NULL);
INSERT INTO `rc_base_area` VALUES ('411724', '正阳县', '411700', 3, '2017-09-12 22:22:53', NULL);
INSERT INTO `rc_base_area` VALUES ('411725', '确山县', '411700', 3, '2017-09-12 22:22:53', NULL);
INSERT INTO `rc_base_area` VALUES ('411726', '泌阳县', '411700', 3, '2017-09-12 22:22:53', NULL);
INSERT INTO `rc_base_area` VALUES ('411727', '汝南县', '411700', 3, '2017-09-12 22:22:53', NULL);
INSERT INTO `rc_base_area` VALUES ('411728', '遂平县', '411700', 3, '2017-09-12 22:22:53', NULL);
INSERT INTO `rc_base_area` VALUES ('411729', '新蔡县', '411700', 3, '2017-09-12 22:22:53', NULL);
INSERT INTO `rc_base_area` VALUES ('419000', '省直辖县级行政区划', '410000', 2, '2017-09-12 22:22:53', NULL);
INSERT INTO `rc_base_area` VALUES ('419001', '济源市', '419000', 3, '2017-09-12 22:22:53', NULL);
INSERT INTO `rc_base_area` VALUES ('420000', '湖北省', '0', 1, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420100', '武汉市', '420000', 2, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420101', '市辖区', '420100', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420102', '江岸区', '420100', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420103', '江汉区', '420100', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420104', '硚口区', '420100', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420105', '汉阳区', '420100', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420106', '武昌区', '420100', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420107', '青山区', '420100', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420111', '洪山区', '420100', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420112', '东西湖区', '420100', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420113', '汉南区', '420100', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420114', '蔡甸区', '420100', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420115', '江夏区', '420100', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420116', '黄陂区', '420100', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420117', '新洲区', '420100', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420200', '黄石市', '420000', 2, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420201', '市辖区', '420200', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420202', '黄石港区', '420200', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420203', '西塞山区', '420200', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420204', '下陆区', '420200', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420205', '铁山区', '420200', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420222', '阳新县', '420200', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420281', '大冶市', '420200', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420300', '十堰市', '420000', 2, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420301', '市辖区', '420300', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420302', '茅箭区', '420300', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420303', '张湾区', '420300', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420304', '郧阳区', '420300', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420322', '郧西县', '420300', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420323', '竹山县', '420300', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420324', '竹溪县', '420300', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420325', '房县', '420300', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420381', '丹江口市', '420300', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420500', '宜昌市', '420000', 2, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420501', '市辖区', '420500', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420502', '西陵区', '420500', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420503', '伍家岗区', '420500', 3, '2017-09-12 22:23:28', NULL);
INSERT INTO `rc_base_area` VALUES ('420504', '点军区', '420500', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420505', '猇亭区', '420500', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420506', '夷陵区', '420500', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420525', '远安县', '420500', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420526', '兴山县', '420500', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420527', '秭归县', '420500', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420528', '长阳土家族自治县', '420500', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420529', '五峰土家族自治县', '420500', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420581', '宜都市', '420500', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420582', '当阳市', '420500', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420583', '枝江市', '420500', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420600', '襄阳市', '420000', 2, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420601', '市辖区', '420600', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420602', '襄城区', '420600', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420606', '樊城区', '420600', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420607', '襄州区', '420600', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420624', '南漳县', '420600', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420625', '谷城县', '420600', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420626', '保康县', '420600', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420682', '老河口市', '420600', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420683', '枣阳市', '420600', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420684', '宜城市', '420600', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420700', '鄂州市', '420000', 2, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420701', '市辖区', '420700', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420702', '梁子湖区', '420700', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420703', '华容区', '420700', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420704', '鄂城区', '420700', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420800', '荆门市', '420000', 2, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420801', '市辖区', '420800', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420802', '东宝区', '420800', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420804', '掇刀区', '420800', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420821', '京山县', '420800', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420822', '沙洋县', '420800', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420881', '钟祥市', '420800', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420900', '孝感市', '420000', 2, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420901', '市辖区', '420900', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420902', '孝南区', '420900', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420921', '孝昌县', '420900', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420922', '大悟县', '420900', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420923', '云梦县', '420900', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420981', '应城市', '420900', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420982', '安陆市', '420900', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('420984', '汉川市', '420900', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('421000', '荆州市', '420000', 2, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('421001', '市辖区', '421000', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('421002', '沙市区', '421000', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('421003', '荆州区', '421000', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('421022', '公安县', '421000', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('421023', '监利县', '421000', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('421024', '江陵县', '421000', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('421081', '石首市', '421000', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('421083', '洪湖市', '421000', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('421087', '松滋市', '421000', 3, '2017-09-12 22:23:29', NULL);
INSERT INTO `rc_base_area` VALUES ('421100', '黄冈市', '420000', 2, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421101', '市辖区', '421100', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421102', '黄州区', '421100', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421121', '团风县', '421100', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421122', '红安县', '421100', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421123', '罗田县', '421100', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421124', '英山县', '421100', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421125', '浠水县', '421100', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421126', '蕲春县', '421100', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421127', '黄梅县', '421100', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421181', '麻城市', '421100', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421182', '武穴市', '421100', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421200', '咸宁市', '420000', 2, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421201', '市辖区', '421200', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421202', '咸安区', '421200', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421221', '嘉鱼县', '421200', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421222', '通城县', '421200', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421223', '崇阳县', '421200', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421224', '通山县', '421200', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421281', '赤壁市', '421200', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421300', '随州市', '420000', 2, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421301', '市辖区', '421300', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421303', '曾都区', '421300', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421321', '随县', '421300', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('421381', '广水市', '421300', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('422800', '恩施土家族苗族自治州', '420000', 2, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('422801', '恩施市', '422800', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('422802', '利川市', '422800', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('422822', '建始县', '422800', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('422823', '巴东县', '422800', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('422825', '宣恩县', '422800', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('422826', '咸丰县', '422800', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('422827', '来凤县', '422800', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('422828', '鹤峰县', '422800', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('429000', '省直辖县级行政区划', '420000', 2, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('429004', '仙桃市', '429000', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('429005', '潜江市', '429000', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('429006', '天门市', '429000', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('429021', '神农架林区', '429000', 3, '2017-09-12 22:23:30', NULL);
INSERT INTO `rc_base_area` VALUES ('430000', '湖南省', '0', 1, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430100', '长沙市', '430000', 2, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430101', '市辖区', '430100', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430102', '芙蓉区', '430100', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430103', '天心区', '430100', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430104', '岳麓区', '430100', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430105', '开福区', '430100', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430111', '雨花区', '430100', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430112', '望城区', '430100', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430121', '长沙县', '430100', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430124', '宁乡县', '430100', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430181', '浏阳市', '430100', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430200', '株洲市', '430000', 2, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430201', '市辖区', '430200', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430202', '荷塘区', '430200', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430203', '芦淞区', '430200', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430204', '石峰区', '430200', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430211', '天元区', '430200', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430221', '株洲县', '430200', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430223', '攸县', '430200', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430224', '茶陵县', '430200', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430225', '炎陵县', '430200', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430281', '醴陵市', '430200', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430300', '湘潭市', '430000', 2, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430301', '市辖区', '430300', 3, '2017-09-12 22:25:20', NULL);
INSERT INTO `rc_base_area` VALUES ('430302', '雨湖区', '430300', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430304', '岳塘区', '430300', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430321', '湘潭县', '430300', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430381', '湘乡市', '430300', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430382', '韶山市', '430300', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430400', '衡阳市', '430000', 2, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430401', '市辖区', '430400', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430405', '珠晖区', '430400', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430406', '雁峰区', '430400', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430407', '石鼓区', '430400', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430408', '蒸湘区', '430400', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430412', '南岳区', '430400', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430421', '衡阳县', '430400', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430422', '衡南县', '430400', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430423', '衡山县', '430400', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430424', '衡东县', '430400', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430426', '祁东县', '430400', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430481', '耒阳市', '430400', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430482', '常宁市', '430400', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430500', '邵阳市', '430000', 2, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430501', '市辖区', '430500', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430502', '双清区', '430500', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430503', '大祥区', '430500', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430511', '北塔区', '430500', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430521', '邵东县', '430500', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430522', '新邵县', '430500', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430523', '邵阳县', '430500', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430524', '隆回县', '430500', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430525', '洞口县', '430500', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430527', '绥宁县', '430500', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430528', '新宁县', '430500', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430529', '城步苗族自治县', '430500', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430581', '武冈市', '430500', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430600', '岳阳市', '430000', 2, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430601', '市辖区', '430600', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430602', '岳阳楼区', '430600', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430603', '云溪区', '430600', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430611', '君山区', '430600', 3, '2017-09-12 22:25:21', NULL);
INSERT INTO `rc_base_area` VALUES ('430621', '岳阳县', '430600', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430623', '华容县', '430600', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430624', '湘阴县', '430600', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430626', '平江县', '430600', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430681', '汨罗市', '430600', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430682', '临湘市', '430600', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430700', '常德市', '430000', 2, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430701', '市辖区', '430700', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430702', '武陵区', '430700', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430703', '鼎城区', '430700', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430721', '安乡县', '430700', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430722', '汉寿县', '430700', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430723', '澧县', '430700', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430724', '临澧县', '430700', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430725', '桃源县', '430700', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430726', '石门县', '430700', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430781', '津市市', '430700', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430800', '张家界市', '430000', 2, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430801', '市辖区', '430800', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430802', '永定区', '430800', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430811', '武陵源区', '430800', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430821', '慈利县', '430800', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430822', '桑植县', '430800', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430900', '益阳市', '430000', 2, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430901', '市辖区', '430900', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430902', '资阳区', '430900', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430903', '赫山区', '430900', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430921', '南县', '430900', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430922', '桃江县', '430900', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430923', '安化县', '430900', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('430981', '沅江市', '430900', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('431000', '郴州市', '430000', 2, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('431001', '市辖区', '431000', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('431002', '北湖区', '431000', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('431003', '苏仙区', '431000', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('431021', '桂阳县', '431000', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('431022', '宜章县', '431000', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('431023', '永兴县', '431000', 3, '2017-09-12 22:25:22', NULL);
INSERT INTO `rc_base_area` VALUES ('431024', '嘉禾县', '431000', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431025', '临武县', '431000', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431026', '汝城县', '431000', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431027', '桂东县', '431000', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431028', '安仁县', '431000', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431081', '资兴市', '431000', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431100', '永州市', '430000', 2, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431101', '市辖区', '431100', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431102', '零陵区', '431100', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431103', '冷水滩区', '431100', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431121', '祁阳县', '431100', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431122', '东安县', '431100', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431123', '双牌县', '431100', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431124', '道县', '431100', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431125', '江永县', '431100', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431126', '宁远县', '431100', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431127', '蓝山县', '431100', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431128', '新田县', '431100', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431129', '江华瑶族自治县', '431100', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431200', '怀化市', '430000', 2, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431201', '市辖区', '431200', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431202', '鹤城区', '431200', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431221', '中方县', '431200', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431222', '沅陵县', '431200', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431223', '辰溪县', '431200', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431224', '溆浦县', '431200', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431225', '会同县', '431200', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431226', '麻阳苗族自治县', '431200', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431227', '新晃侗族自治县', '431200', 3, '2017-09-12 22:25:23', NULL);
INSERT INTO `rc_base_area` VALUES ('431228', '芷江侗族自治县', '431200', 3, '2017-09-12 22:25:24', NULL);
INSERT INTO `rc_base_area` VALUES ('431229', '靖州苗族侗族自治县', '431200', 3, '2017-09-12 22:25:24', NULL);
INSERT INTO `rc_base_area` VALUES ('431230', '通道侗族自治县', '431200', 3, '2017-09-12 22:25:24', NULL);
INSERT INTO `rc_base_area` VALUES ('431281', '洪江市', '431200', 3, '2017-09-12 22:25:24', NULL);
INSERT INTO `rc_base_area` VALUES ('431300', '娄底市', '430000', 2, '2017-09-12 22:25:24', NULL);
INSERT INTO `rc_base_area` VALUES ('431301', '市辖区', '431300', 3, '2017-09-12 22:25:24', NULL);
INSERT INTO `rc_base_area` VALUES ('431302', '娄星区', '431300', 3, '2017-09-12 22:25:24', NULL);
INSERT INTO `rc_base_area` VALUES ('431321', '双峰县', '431300', 3, '2017-09-12 22:25:24', NULL);
INSERT INTO `rc_base_area` VALUES ('431322', '新化县', '431300', 3, '2017-09-12 22:25:24', NULL);
INSERT INTO `rc_base_area` VALUES ('431381', '冷水江市', '431300', 3, '2017-09-12 22:25:24', NULL);
INSERT INTO `rc_base_area` VALUES ('431382', '涟源市', '431300', 3, '2017-09-12 22:25:24', NULL);
INSERT INTO `rc_base_area` VALUES ('433100', '湘西土家族苗族自治州', '430000', 2, '2017-09-12 22:25:24', NULL);
INSERT INTO `rc_base_area` VALUES ('433101', '吉首市', '433100', 3, '2017-09-12 22:25:24', NULL);
INSERT INTO `rc_base_area` VALUES ('433122', '泸溪县', '433100', 3, '2017-09-12 22:25:24', NULL);
INSERT INTO `rc_base_area` VALUES ('433123', '凤凰县', '433100', 3, '2017-09-12 22:25:24', NULL);
INSERT INTO `rc_base_area` VALUES ('433124', '花垣县', '433100', 3, '2017-09-12 22:25:24', NULL);
INSERT INTO `rc_base_area` VALUES ('433125', '保靖县', '433100', 3, '2017-09-12 22:25:24', NULL);
INSERT INTO `rc_base_area` VALUES ('433126', '古丈县', '433100', 3, '2017-09-12 22:25:24', NULL);
INSERT INTO `rc_base_area` VALUES ('433127', '永顺县', '433100', 3, '2017-09-12 22:25:24', NULL);
INSERT INTO `rc_base_area` VALUES ('433130', '龙山县', '433100', 3, '2017-09-12 22:25:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440000', '广东省', '0', 1, '2017-09-12 22:29:22', NULL);
INSERT INTO `rc_base_area` VALUES ('440100', '广州市', '440000', 2, '2017-09-12 22:29:22', NULL);
INSERT INTO `rc_base_area` VALUES ('440101', '市辖区', '440100', 3, '2017-09-12 22:29:22', NULL);
INSERT INTO `rc_base_area` VALUES ('440103', '荔湾区', '440100', 3, '2017-09-12 22:29:22', NULL);
INSERT INTO `rc_base_area` VALUES ('440104', '越秀区', '440100', 3, '2017-09-12 22:29:22', NULL);
INSERT INTO `rc_base_area` VALUES ('440105', '海珠区', '440100', 3, '2017-09-12 22:29:22', NULL);
INSERT INTO `rc_base_area` VALUES ('440106', '天河区', '440100', 3, '2017-09-12 22:29:22', NULL);
INSERT INTO `rc_base_area` VALUES ('440111', '白云区', '440100', 3, '2017-09-12 22:29:22', NULL);
INSERT INTO `rc_base_area` VALUES ('440112', '黄埔区', '440100', 3, '2017-09-12 22:29:22', NULL);
INSERT INTO `rc_base_area` VALUES ('440113', '番禺区', '440100', 3, '2017-09-12 22:29:22', NULL);
INSERT INTO `rc_base_area` VALUES ('440114', '花都区', '440100', 3, '2017-09-12 22:29:22', NULL);
INSERT INTO `rc_base_area` VALUES ('440115', '南沙区', '440100', 3, '2017-09-12 22:29:22', NULL);
INSERT INTO `rc_base_area` VALUES ('440117', '从化区', '440100', 3, '2017-09-12 22:29:22', NULL);
INSERT INTO `rc_base_area` VALUES ('440118', '增城区', '440100', 3, '2017-09-12 22:29:22', NULL);
INSERT INTO `rc_base_area` VALUES ('440200', '韶关市', '440000', 2, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440201', '市辖区', '440200', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440203', '武江区', '440200', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440204', '浈江区', '440200', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440205', '曲江区', '440200', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440222', '始兴县', '440200', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440224', '仁化县', '440200', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440229', '翁源县', '440200', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440232', '乳源瑶族自治县', '440200', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440233', '新丰县', '440200', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440281', '乐昌市', '440200', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440282', '南雄市', '440200', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440300', '深圳市', '440000', 2, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440301', '市辖区', '440300', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440303', '罗湖区', '440300', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440304', '福田区', '440300', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440305', '南山区', '440300', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440306', '宝安区', '440300', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440307', '龙岗区', '440300', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440308', '盐田区', '440300', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440400', '珠海市', '440000', 2, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440401', '市辖区', '440400', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440402', '香洲区', '440400', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440403', '斗门区', '440400', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440404', '金湾区', '440400', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440500', '汕头市', '440000', 2, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440501', '市辖区', '440500', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440507', '龙湖区', '440500', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440511', '金平区', '440500', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440512', '濠江区', '440500', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440513', '潮阳区', '440500', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440514', '潮南区', '440500', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440515', '澄海区', '440500', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440523', '南澳县', '440500', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440600', '佛山市', '440000', 2, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440601', '市辖区', '440600', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440604', '禅城区', '440600', 3, '2017-09-12 22:29:23', NULL);
INSERT INTO `rc_base_area` VALUES ('440605', '南海区', '440600', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440606', '顺德区', '440600', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440607', '三水区', '440600', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440608', '高明区', '440600', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440700', '江门市', '440000', 2, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440701', '市辖区', '440700', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440703', '蓬江区', '440700', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440704', '江海区', '440700', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440705', '新会区', '440700', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440781', '台山市', '440700', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440783', '开平市', '440700', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440784', '鹤山市', '440700', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440785', '恩平市', '440700', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440800', '湛江市', '440000', 2, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440801', '市辖区', '440800', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440802', '赤坎区', '440800', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440803', '霞山区', '440800', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440804', '坡头区', '440800', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440811', '麻章区', '440800', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440823', '遂溪县', '440800', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440825', '徐闻县', '440800', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440881', '廉江市', '440800', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440882', '雷州市', '440800', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440883', '吴川市', '440800', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440900', '茂名市', '440000', 2, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440901', '市辖区', '440900', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440902', '茂南区', '440900', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440904', '电白区', '440900', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440981', '高州市', '440900', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440982', '化州市', '440900', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('440983', '信宜市', '440900', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('441200', '肇庆市', '440000', 2, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('441201', '市辖区', '441200', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('441202', '端州区', '441200', 3, '2017-09-12 22:29:24', NULL);
INSERT INTO `rc_base_area` VALUES ('441203', '鼎湖区', '441200', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441204', '高要区', '441200', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441223', '广宁县', '441200', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441224', '怀集县', '441200', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441225', '封开县', '441200', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441226', '德庆县', '441200', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441284', '四会市', '441200', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441300', '惠州市', '440000', 2, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441301', '市辖区', '441300', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441302', '惠城区', '441300', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441303', '惠阳区', '441300', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441322', '博罗县', '441300', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441323', '惠东县', '441300', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441324', '龙门县', '441300', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441400', '梅州市', '440000', 2, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441401', '市辖区', '441400', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441402', '梅江区', '441400', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441403', '梅县区', '441400', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441422', '大埔县', '441400', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441423', '丰顺县', '441400', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441424', '五华县', '441400', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441426', '平远县', '441400', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441427', '蕉岭县', '441400', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441481', '兴宁市', '441400', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441500', '汕尾市', '440000', 2, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441501', '市辖区', '441500', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441502', '城区', '441500', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441521', '海丰县', '441500', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441523', '陆河县', '441500', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441581', '陆丰市', '441500', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441600', '河源市', '440000', 2, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441601', '市辖区', '441600', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441602', '源城区', '441600', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441621', '紫金县', '441600', 3, '2017-09-12 22:29:25', NULL);
INSERT INTO `rc_base_area` VALUES ('441622', '龙川县', '441600', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('441623', '连平县', '441600', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('441624', '和平县', '441600', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('441625', '东源县', '441600', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('441700', '阳江市', '440000', 2, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('441701', '市辖区', '441700', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('441702', '江城区', '441700', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('441704', '阳东区', '441700', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('441721', '阳西县', '441700', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('441781', '阳春市', '441700', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('441800', '清远市', '440000', 2, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('441801', '市辖区', '441800', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('441802', '清城区', '441800', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('441803', '清新区', '441800', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('441821', '佛冈县', '441800', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('441823', '阳山县', '441800', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('441825', '连山壮族瑶族自治县', '441800', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('441826', '连南瑶族自治县', '441800', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('441881', '英德市', '441800', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('441882', '连州市', '441800', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('441900', '东莞市', '440000', 2, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('442000', '中山市', '440000', 2, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('445100', '潮州市', '440000', 2, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('445101', '市辖区', '445100', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('445102', '湘桥区', '445100', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('445103', '潮安区', '445100', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('445122', '饶平县', '445100', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('445200', '揭阳市', '440000', 2, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('445201', '市辖区', '445200', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('445202', '榕城区', '445200', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('445203', '揭东区', '445200', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('445222', '揭西县', '445200', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('445224', '惠来县', '445200', 3, '2017-09-12 22:29:26', NULL);
INSERT INTO `rc_base_area` VALUES ('445281', '普宁市', '445200', 3, '2017-09-12 22:29:27', NULL);
INSERT INTO `rc_base_area` VALUES ('445300', '云浮市', '440000', 2, '2017-09-12 22:29:27', NULL);
INSERT INTO `rc_base_area` VALUES ('445301', '市辖区', '445300', 3, '2017-09-12 22:29:27', NULL);
INSERT INTO `rc_base_area` VALUES ('445302', '云城区', '445300', 3, '2017-09-12 22:29:27', NULL);
INSERT INTO `rc_base_area` VALUES ('445303', '云安区', '445300', 3, '2017-09-12 22:29:27', NULL);
INSERT INTO `rc_base_area` VALUES ('445321', '新兴县', '445300', 3, '2017-09-12 22:29:27', NULL);
INSERT INTO `rc_base_area` VALUES ('445322', '郁南县', '445300', 3, '2017-09-12 22:29:27', NULL);
INSERT INTO `rc_base_area` VALUES ('445381', '罗定市', '445300', 3, '2017-09-12 22:29:27', NULL);
INSERT INTO `rc_base_area` VALUES ('450000', '广西壮族自治区', '0', 1, '2017-09-12 22:33:28', NULL);
INSERT INTO `rc_base_area` VALUES ('450100', '南宁市', '450000', 2, '2017-09-12 22:33:28', NULL);
INSERT INTO `rc_base_area` VALUES ('450101', '市辖区', '450100', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450102', '兴宁区', '450100', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450103', '青秀区', '450100', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450105', '江南区', '450100', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450107', '西乡塘区', '450100', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450108', '良庆区', '450100', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450109', '邕宁区', '450100', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450110', '武鸣区', '450100', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450123', '隆安县', '450100', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450124', '马山县', '450100', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450125', '上林县', '450100', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450126', '宾阳县', '450100', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450127', '横县', '450100', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450200', '柳州市', '450000', 2, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450201', '市辖区', '450200', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450202', '城中区', '450200', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450203', '鱼峰区', '450200', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450204', '柳南区', '450200', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450205', '柳北区', '450200', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450206', '柳江区', '450200', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450222', '柳城县', '450200', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450223', '鹿寨县', '450200', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450224', '融安县', '450200', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450225', '融水苗族自治县', '450200', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450226', '三江侗族自治县', '450200', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450300', '桂林市', '450000', 2, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450301', '市辖区', '450300', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450302', '秀峰区', '450300', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450303', '叠彩区', '450300', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450304', '象山区', '450300', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450305', '七星区', '450300', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450311', '雁山区', '450300', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450312', '临桂区', '450300', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450321', '阳朔县', '450300', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450323', '灵川县', '450300', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450324', '全州县', '450300', 3, '2017-09-12 22:33:29', NULL);
INSERT INTO `rc_base_area` VALUES ('450325', '兴安县', '450300', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450326', '永福县', '450300', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450327', '灌阳县', '450300', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450328', '龙胜各族自治县', '450300', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450329', '资源县', '450300', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450330', '平乐县', '450300', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450331', '荔浦县', '450300', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450332', '恭城瑶族自治县', '450300', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450400', '梧州市', '450000', 2, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450401', '市辖区', '450400', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450403', '万秀区', '450400', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450405', '长洲区', '450400', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450406', '龙圩区', '450400', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450421', '苍梧县', '450400', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450422', '藤县', '450400', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450423', '蒙山县', '450400', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450481', '岑溪市', '450400', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450500', '北海市', '450000', 2, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450501', '市辖区', '450500', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450502', '海城区', '450500', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450503', '银海区', '450500', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450512', '铁山港区', '450500', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450521', '合浦县', '450500', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450600', '防城港市', '450000', 2, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450601', '市辖区', '450600', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450602', '港口区', '450600', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450603', '防城区', '450600', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450621', '上思县', '450600', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450681', '东兴市', '450600', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450700', '钦州市', '450000', 2, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450701', '市辖区', '450700', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450702', '钦南区', '450700', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450703', '钦北区', '450700', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450721', '灵山县', '450700', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450722', '浦北县', '450700', 3, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450800', '贵港市', '450000', 2, '2017-09-12 22:33:30', NULL);
INSERT INTO `rc_base_area` VALUES ('450801', '市辖区', '450800', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('450802', '港北区', '450800', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('450803', '港南区', '450800', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('450804', '覃塘区', '450800', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('450821', '平南县', '450800', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('450881', '桂平市', '450800', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('450900', '玉林市', '450000', 2, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('450901', '市辖区', '450900', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('450902', '玉州区', '450900', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('450903', '福绵区', '450900', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('450921', '容县', '450900', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('450922', '陆川县', '450900', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('450923', '博白县', '450900', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('450924', '兴业县', '450900', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('450981', '北流市', '450900', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('451000', '百色市', '450000', 2, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('451001', '市辖区', '451000', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('451002', '右江区', '451000', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('451021', '田阳县', '451000', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('451022', '田东县', '451000', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('451023', '平果县', '451000', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('451024', '德保县', '451000', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('451026', '那坡县', '451000', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('451027', '凌云县', '451000', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('451028', '乐业县', '451000', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('451029', '田林县', '451000', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('451030', '西林县', '451000', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('451031', '隆林各族自治县', '451000', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('451081', '靖西市', '451000', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('451100', '贺州市', '450000', 2, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('451101', '市辖区', '451100', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('451102', '八步区', '451100', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('451103', '平桂区', '451100', 3, '2017-09-12 22:33:31', NULL);
INSERT INTO `rc_base_area` VALUES ('451121', '昭平县', '451100', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451122', '钟山县', '451100', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451123', '富川瑶族自治县', '451100', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451200', '河池市', '450000', 2, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451201', '市辖区', '451200', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451202', '金城江区', '451200', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451221', '南丹县', '451200', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451222', '天峨县', '451200', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451223', '凤山县', '451200', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451224', '东兰县', '451200', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451225', '罗城仫佬族自治县', '451200', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451226', '环江毛南族自治县', '451200', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451227', '巴马瑶族自治县', '451200', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451228', '都安瑶族自治县', '451200', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451229', '大化瑶族自治县', '451200', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451281', '宜州市', '451200', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451300', '来宾市', '450000', 2, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451301', '市辖区', '451300', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451302', '兴宾区', '451300', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451321', '忻城县', '451300', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451322', '象州县', '451300', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451323', '武宣县', '451300', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451324', '金秀瑶族自治县', '451300', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451381', '合山市', '451300', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451400', '崇左市', '450000', 2, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451401', '市辖区', '451400', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451402', '江州区', '451400', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451421', '扶绥县', '451400', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451422', '宁明县', '451400', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451423', '龙州县', '451400', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451424', '大新县', '451400', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451425', '天等县', '451400', 3, '2017-09-12 22:33:32', NULL);
INSERT INTO `rc_base_area` VALUES ('451481', '凭祥市', '451400', 3, '2017-09-12 22:33:33', NULL);
INSERT INTO `rc_base_area` VALUES ('460000', '海南省', '0', 1, '2017-09-12 22:33:59', NULL);
INSERT INTO `rc_base_area` VALUES ('460100', '海口市', '460000', 2, '2017-09-12 22:33:59', NULL);
INSERT INTO `rc_base_area` VALUES ('460101', '市辖区', '460100', 3, '2017-09-12 22:33:59', NULL);
INSERT INTO `rc_base_area` VALUES ('460105', '秀英区', '460100', 3, '2017-09-12 22:33:59', NULL);
INSERT INTO `rc_base_area` VALUES ('460106', '龙华区', '460100', 3, '2017-09-12 22:33:59', NULL);
INSERT INTO `rc_base_area` VALUES ('460107', '琼山区', '460100', 3, '2017-09-12 22:33:59', NULL);
INSERT INTO `rc_base_area` VALUES ('460108', '美兰区', '460100', 3, '2017-09-12 22:33:59', NULL);
INSERT INTO `rc_base_area` VALUES ('460200', '三亚市', '460000', 2, '2017-09-12 22:33:59', NULL);
INSERT INTO `rc_base_area` VALUES ('460201', '市辖区', '460200', 3, '2017-09-12 22:33:59', NULL);
INSERT INTO `rc_base_area` VALUES ('460202', '海棠区', '460200', 3, '2017-09-12 22:33:59', NULL);
INSERT INTO `rc_base_area` VALUES ('460203', '吉阳区', '460200', 3, '2017-09-12 22:33:59', NULL);
INSERT INTO `rc_base_area` VALUES ('460204', '天涯区', '460200', 3, '2017-09-12 22:33:59', NULL);
INSERT INTO `rc_base_area` VALUES ('460205', '崖州区', '460200', 3, '2017-09-12 22:33:59', NULL);
INSERT INTO `rc_base_area` VALUES ('460300', '三沙市', '460000', 2, '2017-09-12 22:33:59', NULL);
INSERT INTO `rc_base_area` VALUES ('460400', '儋州市', '460000', 2, '2017-09-12 22:33:59', NULL);
INSERT INTO `rc_base_area` VALUES ('469000', '省直辖县级行政区划', '460000', 2, '2017-09-12 22:33:59', NULL);
INSERT INTO `rc_base_area` VALUES ('469001', '五指山市', '469000', 3, '2017-09-12 22:34:00', NULL);
INSERT INTO `rc_base_area` VALUES ('469002', '琼海市', '469000', 3, '2017-09-12 22:34:00', NULL);
INSERT INTO `rc_base_area` VALUES ('469005', '文昌市', '469000', 3, '2017-09-12 22:34:00', NULL);
INSERT INTO `rc_base_area` VALUES ('469006', '万宁市', '469000', 3, '2017-09-12 22:34:00', NULL);
INSERT INTO `rc_base_area` VALUES ('469007', '东方市', '469000', 3, '2017-09-12 22:34:00', NULL);
INSERT INTO `rc_base_area` VALUES ('469021', '定安县', '469000', 3, '2017-09-12 22:34:00', NULL);
INSERT INTO `rc_base_area` VALUES ('469022', '屯昌县', '469000', 3, '2017-09-12 22:34:00', NULL);
INSERT INTO `rc_base_area` VALUES ('469023', '澄迈县', '469000', 3, '2017-09-12 22:34:00', NULL);
INSERT INTO `rc_base_area` VALUES ('469024', '临高县', '469000', 3, '2017-09-12 22:34:00', NULL);
INSERT INTO `rc_base_area` VALUES ('469025', '白沙黎族自治县', '469000', 3, '2017-09-12 22:34:00', NULL);
INSERT INTO `rc_base_area` VALUES ('469026', '昌江黎族自治县', '469000', 3, '2017-09-12 22:34:00', NULL);
INSERT INTO `rc_base_area` VALUES ('469027', '乐东黎族自治县', '469000', 3, '2017-09-12 22:34:00', NULL);
INSERT INTO `rc_base_area` VALUES ('469028', '陵水黎族自治县', '469000', 3, '2017-09-12 22:34:00', NULL);
INSERT INTO `rc_base_area` VALUES ('469029', '保亭黎族苗族自治县', '469000', 3, '2017-09-12 22:34:00', NULL);
INSERT INTO `rc_base_area` VALUES ('469030', '琼中黎族苗族自治县', '469000', 3, '2017-09-12 22:34:00', NULL);
INSERT INTO `rc_base_area` VALUES ('500000', '重庆市', '0', 1, '2017-09-12 22:34:35', NULL);
INSERT INTO `rc_base_area` VALUES ('500100', '市辖区', '500000', 2, '2017-09-12 22:34:35', NULL);
INSERT INTO `rc_base_area` VALUES ('500101', '万州区', '500100', 3, '2017-09-12 22:34:35', NULL);
INSERT INTO `rc_base_area` VALUES ('500102', '涪陵区', '500100', 3, '2017-09-12 22:34:35', NULL);
INSERT INTO `rc_base_area` VALUES ('500103', '渝中区', '500100', 3, '2017-09-12 22:34:35', NULL);
INSERT INTO `rc_base_area` VALUES ('500104', '大渡口区', '500100', 3, '2017-09-12 22:34:35', NULL);
INSERT INTO `rc_base_area` VALUES ('500105', '江北区', '500100', 3, '2017-09-12 22:34:35', NULL);
INSERT INTO `rc_base_area` VALUES ('500106', '沙坪坝区', '500100', 3, '2017-09-12 22:34:35', NULL);
INSERT INTO `rc_base_area` VALUES ('500107', '九龙坡区', '500100', 3, '2017-09-12 22:34:35', NULL);
INSERT INTO `rc_base_area` VALUES ('500108', '南岸区', '500100', 3, '2017-09-12 22:34:35', NULL);
INSERT INTO `rc_base_area` VALUES ('500109', '北碚区', '500100', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500110', '綦江区', '500100', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500111', '大足区', '500100', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500112', '渝北区', '500100', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500113', '巴南区', '500100', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500114', '黔江区', '500100', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500115', '长寿区', '500100', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500116', '江津区', '500100', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500117', '合川区', '500100', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500118', '永川区', '500100', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500119', '南川区', '500100', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500120', '璧山区', '500100', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500151', '铜梁区', '500100', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500152', '潼南区', '500100', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500153', '荣昌区', '500100', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500154', '开州区', '500100', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500200', '县', '500000', 2, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500228', '梁平县', '500200', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500229', '城口县', '500200', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500230', '丰都县', '500200', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500231', '垫江县', '500200', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500232', '武隆县', '500200', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500233', '忠县', '500200', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500235', '云阳县', '500200', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500236', '奉节县', '500200', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500237', '巫山县', '500200', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500238', '巫溪县', '500200', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500240', '石柱土家族自治县', '500200', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500241', '秀山土家族苗族自治县', '500200', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500242', '酉阳土家族苗族自治县', '500200', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('500243', '彭水苗族土家族自治县', '500200', 3, '2017-09-12 22:34:36', NULL);
INSERT INTO `rc_base_area` VALUES ('510000', '四川省', '0', 1, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510100', '成都市', '510000', 2, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510101', '市辖区', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510104', '锦江区', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510105', '青羊区', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510106', '金牛区', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510107', '武侯区', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510108', '成华区', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510112', '龙泉驿区', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510113', '青白江区', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510114', '新都区', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510115', '温江区', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510116', '双流区', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510121', '金堂县', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510124', '郫县', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510129', '大邑县', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510131', '蒲江县', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510132', '新津县', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510181', '都江堰市', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510182', '彭州市', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510183', '邛崃市', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510184', '崇州市', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510185', '简阳市', '510100', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510300', '自贡市', '510000', 2, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510301', '市辖区', '510300', 3, '2017-09-12 22:35:21', NULL);
INSERT INTO `rc_base_area` VALUES ('510302', '自流井区', '510300', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510303', '贡井区', '510300', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510304', '大安区', '510300', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510311', '沿滩区', '510300', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510321', '荣县', '510300', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510322', '富顺县', '510300', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510400', '攀枝花市', '510000', 2, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510401', '市辖区', '510400', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510402', '东区', '510400', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510403', '西区', '510400', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510411', '仁和区', '510400', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510421', '米易县', '510400', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510422', '盐边县', '510400', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510500', '泸州市', '510000', 2, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510501', '市辖区', '510500', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510502', '江阳区', '510500', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510503', '纳溪区', '510500', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510504', '龙马潭区', '510500', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510521', '泸县', '510500', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510522', '合江县', '510500', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510524', '叙永县', '510500', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510525', '古蔺县', '510500', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510600', '德阳市', '510000', 2, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510601', '市辖区', '510600', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510603', '旌阳区', '510600', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510623', '中江县', '510600', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510626', '罗江县', '510600', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510681', '广汉市', '510600', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510682', '什邡市', '510600', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510683', '绵竹市', '510600', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510700', '绵阳市', '510000', 2, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510701', '市辖区', '510700', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510703', '涪城区', '510700', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510704', '游仙区', '510700', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510705', '安州区', '510700', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510722', '三台县', '510700', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510723', '盐亭县', '510700', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510725', '梓潼县', '510700', 3, '2017-09-12 22:35:22', NULL);
INSERT INTO `rc_base_area` VALUES ('510726', '北川羌族自治县', '510700', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('510727', '平武县', '510700', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('510781', '江油市', '510700', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('510800', '广元市', '510000', 2, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('510801', '市辖区', '510800', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('510802', '利州区', '510800', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('510811', '昭化区', '510800', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('510812', '朝天区', '510800', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('510821', '旺苍县', '510800', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('510822', '青川县', '510800', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('510823', '剑阁县', '510800', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('510824', '苍溪县', '510800', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('510900', '遂宁市', '510000', 2, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('510901', '市辖区', '510900', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('510903', '船山区', '510900', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('510904', '安居区', '510900', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('510921', '蓬溪县', '510900', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('510922', '射洪县', '510900', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('510923', '大英县', '510900', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('511000', '内江市', '510000', 2, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('511001', '市辖区', '511000', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('511002', '市中区', '511000', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('511011', '东兴区', '511000', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('511024', '威远县', '511000', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('511025', '资中县', '511000', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('511028', '隆昌县', '511000', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('511100', '乐山市', '510000', 2, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('511101', '市辖区', '511100', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('511102', '市中区', '511100', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('511111', '沙湾区', '511100', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('511112', '五通桥区', '511100', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('511113', '金口河区', '511100', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('511123', '犍为县', '511100', 3, '2017-09-12 22:35:23', NULL);
INSERT INTO `rc_base_area` VALUES ('511124', '井研县', '511100', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511126', '夹江县', '511100', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511129', '沐川县', '511100', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511132', '峨边彝族自治县', '511100', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511133', '马边彝族自治县', '511100', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511181', '峨眉山市', '511100', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511300', '南充市', '510000', 2, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511301', '市辖区', '511300', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511302', '顺庆区', '511300', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511303', '高坪区', '511300', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511304', '嘉陵区', '511300', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511321', '南部县', '511300', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511322', '营山县', '511300', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511323', '蓬安县', '511300', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511324', '仪陇县', '511300', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511325', '西充县', '511300', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511381', '阆中市', '511300', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511400', '眉山市', '510000', 2, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511401', '市辖区', '511400', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511402', '东坡区', '511400', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511403', '彭山区', '511400', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511421', '仁寿县', '511400', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511423', '洪雅县', '511400', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511424', '丹棱县', '511400', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511425', '青神县', '511400', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511500', '宜宾市', '510000', 2, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511501', '市辖区', '511500', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511502', '翠屏区', '511500', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511503', '南溪区', '511500', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511521', '宜宾县', '511500', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511523', '江安县', '511500', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511524', '长宁县', '511500', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511525', '高县', '511500', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511526', '珙县', '511500', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511527', '筠连县', '511500', 3, '2017-09-12 22:35:24', NULL);
INSERT INTO `rc_base_area` VALUES ('511528', '兴文县', '511500', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511529', '屏山县', '511500', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511600', '广安市', '510000', 2, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511601', '市辖区', '511600', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511602', '广安区', '511600', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511603', '前锋区', '511600', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511621', '岳池县', '511600', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511622', '武胜县', '511600', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511623', '邻水县', '511600', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511681', '华蓥市', '511600', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511700', '达州市', '510000', 2, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511701', '市辖区', '511700', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511702', '通川区', '511700', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511703', '达川区', '511700', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511722', '宣汉县', '511700', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511723', '开江县', '511700', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511724', '大竹县', '511700', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511725', '渠县', '511700', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511781', '万源市', '511700', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511800', '雅安市', '510000', 2, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511801', '市辖区', '511800', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511802', '雨城区', '511800', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511803', '名山区', '511800', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511822', '荥经县', '511800', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511823', '汉源县', '511800', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511824', '石棉县', '511800', 3, '2017-09-12 22:35:25', NULL);
INSERT INTO `rc_base_area` VALUES ('511825', '天全县', '511800', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('511826', '芦山县', '511800', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('511827', '宝兴县', '511800', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('511900', '巴中市', '510000', 2, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('511901', '市辖区', '511900', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('511902', '巴州区', '511900', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('511903', '恩阳区', '511900', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('511921', '通江县', '511900', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('511922', '南江县', '511900', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('511923', '平昌县', '511900', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('512000', '资阳市', '510000', 2, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('512001', '市辖区', '512000', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('512002', '雁江区', '512000', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('512021', '安岳县', '512000', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('512022', '乐至县', '512000', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513200', '阿坝藏族羌族自治州', '510000', 2, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513201', '马尔康市', '513200', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513221', '汶川县', '513200', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513222', '理县', '513200', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513223', '茂县', '513200', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513224', '松潘县', '513200', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513225', '九寨沟县', '513200', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513226', '金川县', '513200', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513227', '小金县', '513200', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513228', '黑水县', '513200', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513230', '壤塘县', '513200', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513231', '阿坝县', '513200', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513232', '若尔盖县', '513200', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513233', '红原县', '513200', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513300', '甘孜藏族自治州', '510000', 2, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513301', '康定市', '513300', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513322', '泸定县', '513300', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513323', '丹巴县', '513300', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513324', '九龙县', '513300', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513325', '雅江县', '513300', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513326', '道孚县', '513300', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513327', '炉霍县', '513300', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513328', '甘孜县', '513300', 3, '2017-09-12 22:35:26', NULL);
INSERT INTO `rc_base_area` VALUES ('513329', '新龙县', '513300', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513330', '德格县', '513300', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513331', '白玉县', '513300', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513332', '石渠县', '513300', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513333', '色达县', '513300', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513334', '理塘县', '513300', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513335', '巴塘县', '513300', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513336', '乡城县', '513300', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513337', '稻城县', '513300', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513338', '得荣县', '513300', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513400', '凉山彝族自治州', '510000', 2, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513401', '西昌市', '513400', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513422', '木里藏族自治县', '513400', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513423', '盐源县', '513400', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513424', '德昌县', '513400', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513425', '会理县', '513400', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513426', '会东县', '513400', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513427', '宁南县', '513400', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513428', '普格县', '513400', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513429', '布拖县', '513400', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513430', '金阳县', '513400', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513431', '昭觉县', '513400', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513432', '喜德县', '513400', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513433', '冕宁县', '513400', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513434', '越西县', '513400', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513435', '甘洛县', '513400', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513436', '美姑县', '513400', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('513437', '雷波县', '513400', 3, '2017-09-12 22:35:27', NULL);
INSERT INTO `rc_base_area` VALUES ('520000', '贵州省', '0', 1, '2017-09-12 22:36:49', NULL);
INSERT INTO `rc_base_area` VALUES ('520100', '贵阳市', '520000', 2, '2017-09-12 22:36:49', NULL);
INSERT INTO `rc_base_area` VALUES ('520101', '市辖区', '520100', 3, '2017-09-12 22:36:49', NULL);
INSERT INTO `rc_base_area` VALUES ('520102', '南明区', '520100', 3, '2017-09-12 22:36:49', NULL);
INSERT INTO `rc_base_area` VALUES ('520103', '云岩区', '520100', 3, '2017-09-12 22:36:49', NULL);
INSERT INTO `rc_base_area` VALUES ('520111', '花溪区', '520100', 3, '2017-09-12 22:36:49', NULL);
INSERT INTO `rc_base_area` VALUES ('520112', '乌当区', '520100', 3, '2017-09-12 22:36:49', NULL);
INSERT INTO `rc_base_area` VALUES ('520113', '白云区', '520100', 3, '2017-09-12 22:36:49', NULL);
INSERT INTO `rc_base_area` VALUES ('520115', '观山湖区', '520100', 3, '2017-09-12 22:36:49', NULL);
INSERT INTO `rc_base_area` VALUES ('520121', '开阳县', '520100', 3, '2017-09-12 22:36:49', NULL);
INSERT INTO `rc_base_area` VALUES ('520122', '息烽县', '520100', 3, '2017-09-12 22:36:49', NULL);
INSERT INTO `rc_base_area` VALUES ('520123', '修文县', '520100', 3, '2017-09-12 22:36:49', NULL);
INSERT INTO `rc_base_area` VALUES ('520181', '清镇市', '520100', 3, '2017-09-12 22:36:49', NULL);
INSERT INTO `rc_base_area` VALUES ('520200', '六盘水市', '520000', 2, '2017-09-12 22:36:49', NULL);
INSERT INTO `rc_base_area` VALUES ('520201', '钟山区', '520200', 3, '2017-09-12 22:36:49', NULL);
INSERT INTO `rc_base_area` VALUES ('520203', '六枝特区', '520200', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520221', '水城县', '520200', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520222', '盘县', '520200', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520300', '遵义市', '520000', 2, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520301', '市辖区', '520300', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520302', '红花岗区', '520300', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520303', '汇川区', '520300', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520304', '播州区', '520300', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520322', '桐梓县', '520300', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520323', '绥阳县', '520300', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520324', '正安县', '520300', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520325', '道真仡佬族苗族自治县', '520300', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520326', '务川仡佬族苗族自治县', '520300', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520327', '凤冈县', '520300', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520328', '湄潭县', '520300', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520329', '余庆县', '520300', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520330', '习水县', '520300', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520381', '赤水市', '520300', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520382', '仁怀市', '520300', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520400', '安顺市', '520000', 2, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520401', '市辖区', '520400', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520402', '西秀区', '520400', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520403', '平坝区', '520400', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520422', '普定县', '520400', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520423', '镇宁布依族苗族自治县', '520400', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520424', '关岭布依族苗族自治县', '520400', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520425', '紫云苗族布依族自治县', '520400', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520500', '毕节市', '520000', 2, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520501', '市辖区', '520500', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520502', '七星关区', '520500', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520521', '大方县', '520500', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520522', '黔西县', '520500', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520523', '金沙县', '520500', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520524', '织金县', '520500', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520525', '纳雍县', '520500', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520526', '威宁彝族回族苗族自治县', '520500', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520527', '赫章县', '520500', 3, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520600', '铜仁市', '520000', 2, '2017-09-12 22:36:50', NULL);
INSERT INTO `rc_base_area` VALUES ('520601', '市辖区', '520600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('520602', '碧江区', '520600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('520603', '万山区', '520600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('520621', '江口县', '520600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('520622', '玉屏侗族自治县', '520600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('520623', '石阡县', '520600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('520624', '思南县', '520600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('520625', '印江土家族苗族自治县', '520600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('520626', '德江县', '520600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('520627', '沿河土家族自治县', '520600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('520628', '松桃苗族自治县', '520600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522300', '黔西南布依族苗族自治州', '520000', 2, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522301', '兴义市', '522300', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522322', '兴仁县', '522300', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522323', '普安县', '522300', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522324', '晴隆县', '522300', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522325', '贞丰县', '522300', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522326', '望谟县', '522300', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522327', '册亨县', '522300', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522328', '安龙县', '522300', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522600', '黔东南苗族侗族自治州', '520000', 2, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522601', '凯里市', '522600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522622', '黄平县', '522600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522623', '施秉县', '522600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522624', '三穗县', '522600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522625', '镇远县', '522600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522626', '岑巩县', '522600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522627', '天柱县', '522600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522628', '锦屏县', '522600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522629', '剑河县', '522600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522630', '台江县', '522600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522631', '黎平县', '522600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522632', '榕江县', '522600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522633', '从江县', '522600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522634', '雷山县', '522600', 3, '2017-09-12 22:36:51', NULL);
INSERT INTO `rc_base_area` VALUES ('522635', '麻江县', '522600', 3, '2017-09-12 22:36:52', NULL);
INSERT INTO `rc_base_area` VALUES ('522636', '丹寨县', '522600', 3, '2017-09-12 22:36:52', NULL);
INSERT INTO `rc_base_area` VALUES ('522700', '黔南布依族苗族自治州', '520000', 2, '2017-09-12 22:36:52', NULL);
INSERT INTO `rc_base_area` VALUES ('522701', '都匀市', '522700', 3, '2017-09-12 22:36:52', NULL);
INSERT INTO `rc_base_area` VALUES ('522702', '福泉市', '522700', 3, '2017-09-12 22:36:52', NULL);
INSERT INTO `rc_base_area` VALUES ('522722', '荔波县', '522700', 3, '2017-09-12 22:36:52', NULL);
INSERT INTO `rc_base_area` VALUES ('522723', '贵定县', '522700', 3, '2017-09-12 22:36:52', NULL);
INSERT INTO `rc_base_area` VALUES ('522725', '瓮安县', '522700', 3, '2017-09-12 22:36:52', NULL);
INSERT INTO `rc_base_area` VALUES ('522726', '独山县', '522700', 3, '2017-09-12 22:36:52', NULL);
INSERT INTO `rc_base_area` VALUES ('522727', '平塘县', '522700', 3, '2017-09-12 22:36:52', NULL);
INSERT INTO `rc_base_area` VALUES ('522728', '罗甸县', '522700', 3, '2017-09-12 22:36:52', NULL);
INSERT INTO `rc_base_area` VALUES ('522729', '长顺县', '522700', 3, '2017-09-12 22:36:52', NULL);
INSERT INTO `rc_base_area` VALUES ('522730', '龙里县', '522700', 3, '2017-09-12 22:36:52', NULL);
INSERT INTO `rc_base_area` VALUES ('522731', '惠水县', '522700', 3, '2017-09-12 22:36:52', NULL);
INSERT INTO `rc_base_area` VALUES ('522732', '三都水族自治县', '522700', 3, '2017-09-12 22:36:52', NULL);
INSERT INTO `rc_base_area` VALUES ('530000', '云南省', '0', 1, '2017-09-12 22:37:42', NULL);
INSERT INTO `rc_base_area` VALUES ('530100', '昆明市', '530000', 2, '2017-09-12 22:37:42', NULL);
INSERT INTO `rc_base_area` VALUES ('530101', '市辖区', '530100', 3, '2017-09-12 22:37:42', NULL);
INSERT INTO `rc_base_area` VALUES ('530102', '五华区', '530100', 3, '2017-09-12 22:37:42', NULL);
INSERT INTO `rc_base_area` VALUES ('530103', '盘龙区', '530100', 3, '2017-09-12 22:37:42', NULL);
INSERT INTO `rc_base_area` VALUES ('530111', '官渡区', '530100', 3, '2017-09-12 22:37:42', NULL);
INSERT INTO `rc_base_area` VALUES ('530112', '西山区', '530100', 3, '2017-09-12 22:37:42', NULL);
INSERT INTO `rc_base_area` VALUES ('530113', '东川区', '530100', 3, '2017-09-12 22:37:42', NULL);
INSERT INTO `rc_base_area` VALUES ('530114', '呈贡区', '530100', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530122', '晋宁县', '530100', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530124', '富民县', '530100', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530125', '宜良县', '530100', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530126', '石林彝族自治县', '530100', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530127', '嵩明县', '530100', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530128', '禄劝彝族苗族自治县', '530100', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530129', '寻甸回族彝族自治县', '530100', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530181', '安宁市', '530100', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530300', '曲靖市', '530000', 2, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530301', '市辖区', '530300', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530302', '麒麟区', '530300', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530303', '沾益区', '530300', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530321', '马龙县', '530300', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530322', '陆良县', '530300', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530323', '师宗县', '530300', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530324', '罗平县', '530300', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530325', '富源县', '530300', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530326', '会泽县', '530300', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530381', '宣威市', '530300', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530400', '玉溪市', '530000', 2, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530401', '市辖区', '530400', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530402', '红塔区', '530400', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530403', '江川区', '530400', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530422', '澄江县', '530400', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530423', '通海县', '530400', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530424', '华宁县', '530400', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530425', '易门县', '530400', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530426', '峨山彝族自治县', '530400', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530427', '新平彝族傣族自治县', '530400', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530428', '元江哈尼族彝族傣族自治县', '530400', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530500', '保山市', '530000', 2, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530501', '市辖区', '530500', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530502', '隆阳区', '530500', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530521', '施甸县', '530500', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530523', '龙陵县', '530500', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530524', '昌宁县', '530500', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530581', '腾冲市', '530500', 3, '2017-09-12 22:37:43', NULL);
INSERT INTO `rc_base_area` VALUES ('530600', '昭通市', '530000', 2, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530601', '市辖区', '530600', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530602', '昭阳区', '530600', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530621', '鲁甸县', '530600', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530622', '巧家县', '530600', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530623', '盐津县', '530600', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530624', '大关县', '530600', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530625', '永善县', '530600', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530626', '绥江县', '530600', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530627', '镇雄县', '530600', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530628', '彝良县', '530600', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530629', '威信县', '530600', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530630', '水富县', '530600', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530700', '丽江市', '530000', 2, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530701', '市辖区', '530700', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530702', '古城区', '530700', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530721', '玉龙纳西族自治县', '530700', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530722', '永胜县', '530700', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530723', '华坪县', '530700', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530724', '宁蒗彝族自治县', '530700', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530800', '普洱市', '530000', 2, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530801', '市辖区', '530800', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530802', '思茅区', '530800', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530821', '宁洱哈尼族彝族自治县', '530800', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530822', '墨江哈尼族自治县', '530800', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530823', '景东彝族自治县', '530800', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530824', '景谷傣族彝族自治县', '530800', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', '530800', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530826', '江城哈尼族彝族自治县', '530800', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530827', '孟连傣族拉祜族佤族自治县', '530800', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530828', '澜沧拉祜族自治县', '530800', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530829', '西盟佤族自治县', '530800', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530900', '临沧市', '530000', 2, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530901', '市辖区', '530900', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530902', '临翔区', '530900', 3, '2017-09-12 22:37:44', NULL);
INSERT INTO `rc_base_area` VALUES ('530921', '凤庆县', '530900', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('530922', '云县', '530900', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('530923', '永德县', '530900', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('530924', '镇康县', '530900', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', '530900', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('530926', '耿马傣族佤族自治县', '530900', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('530927', '沧源佤族自治县', '530900', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532300', '楚雄彝族自治州', '530000', 2, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532301', '楚雄市', '532300', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532322', '双柏县', '532300', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532323', '牟定县', '532300', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532324', '南华县', '532300', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532325', '姚安县', '532300', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532326', '大姚县', '532300', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532327', '永仁县', '532300', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532328', '元谋县', '532300', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532329', '武定县', '532300', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532331', '禄丰县', '532300', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532500', '红河哈尼族彝族自治州', '530000', 2, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532501', '个旧市', '532500', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532502', '开远市', '532500', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532503', '蒙自市', '532500', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532504', '弥勒市', '532500', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532523', '屏边苗族自治县', '532500', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532524', '建水县', '532500', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532525', '石屏县', '532500', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532527', '泸西县', '532500', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532528', '元阳县', '532500', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532529', '红河县', '532500', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532530', '金平苗族瑶族傣族自治县', '532500', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532531', '绿春县', '532500', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532532', '河口瑶族自治县', '532500', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532600', '文山壮族苗族自治州', '530000', 2, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532601', '文山市', '532600', 3, '2017-09-12 22:37:45', NULL);
INSERT INTO `rc_base_area` VALUES ('532622', '砚山县', '532600', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532623', '西畴县', '532600', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532624', '麻栗坡县', '532600', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532625', '马关县', '532600', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532626', '丘北县', '532600', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532627', '广南县', '532600', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532628', '富宁县', '532600', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532800', '西双版纳傣族自治州', '530000', 2, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532801', '景洪市', '532800', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532822', '勐海县', '532800', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532823', '勐腊县', '532800', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532900', '大理白族自治州', '530000', 2, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532901', '大理市', '532900', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532922', '漾濞彝族自治县', '532900', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532923', '祥云县', '532900', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532924', '宾川县', '532900', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532925', '弥渡县', '532900', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532926', '南涧彝族自治县', '532900', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532927', '巍山彝族回族自治县', '532900', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532928', '永平县', '532900', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532929', '云龙县', '532900', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532930', '洱源县', '532900', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532931', '剑川县', '532900', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('532932', '鹤庆县', '532900', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('533100', '德宏傣族景颇族自治州', '530000', 2, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('533102', '瑞丽市', '533100', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('533103', '芒市', '533100', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('533122', '梁河县', '533100', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('533123', '盈江县', '533100', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('533124', '陇川县', '533100', 3, '2017-09-12 22:37:46', NULL);
INSERT INTO `rc_base_area` VALUES ('533300', '怒江傈僳族自治州', '530000', 2, '2017-09-12 22:37:47', NULL);
INSERT INTO `rc_base_area` VALUES ('533301', '泸水市', '533300', 3, '2017-09-12 22:37:47', NULL);
INSERT INTO `rc_base_area` VALUES ('533323', '福贡县', '533300', 3, '2017-09-12 22:37:47', NULL);
INSERT INTO `rc_base_area` VALUES ('533324', '贡山独龙族怒族自治县', '533300', 3, '2017-09-12 22:37:47', NULL);
INSERT INTO `rc_base_area` VALUES ('533325', '兰坪白族普米族自治县', '533300', 3, '2017-09-12 22:37:47', NULL);
INSERT INTO `rc_base_area` VALUES ('533400', '迪庆藏族自治州', '530000', 2, '2017-09-12 22:37:47', NULL);
INSERT INTO `rc_base_area` VALUES ('533401', '香格里拉市', '533400', 3, '2017-09-12 22:37:47', NULL);
INSERT INTO `rc_base_area` VALUES ('533422', '德钦县', '533400', 3, '2017-09-12 22:37:47', NULL);
INSERT INTO `rc_base_area` VALUES ('533423', '维西傈僳族自治县', '533400', 3, '2017-09-12 22:37:47', NULL);
INSERT INTO `rc_base_area` VALUES ('540000', '西藏自治区', '0', 1, '2017-09-12 22:38:15', NULL);
INSERT INTO `rc_base_area` VALUES ('540100', '拉萨市', '540000', 2, '2017-09-12 22:38:15', NULL);
INSERT INTO `rc_base_area` VALUES ('540101', '市辖区', '540100', 3, '2017-09-12 22:38:15', NULL);
INSERT INTO `rc_base_area` VALUES ('540102', '城关区', '540100', 3, '2017-09-12 22:38:15', NULL);
INSERT INTO `rc_base_area` VALUES ('540103', '堆龙德庆区', '540100', 3, '2017-09-12 22:38:15', NULL);
INSERT INTO `rc_base_area` VALUES ('540121', '林周县', '540100', 3, '2017-09-12 22:38:15', NULL);
INSERT INTO `rc_base_area` VALUES ('540122', '当雄县', '540100', 3, '2017-09-12 22:38:15', NULL);
INSERT INTO `rc_base_area` VALUES ('540123', '尼木县', '540100', 3, '2017-09-12 22:38:15', NULL);
INSERT INTO `rc_base_area` VALUES ('540124', '曲水县', '540100', 3, '2017-09-12 22:38:15', NULL);
INSERT INTO `rc_base_area` VALUES ('540126', '达孜县', '540100', 3, '2017-09-12 22:38:15', NULL);
INSERT INTO `rc_base_area` VALUES ('540127', '墨竹工卡县', '540100', 3, '2017-09-12 22:38:15', NULL);
INSERT INTO `rc_base_area` VALUES ('540200', '日喀则市', '540000', 2, '2017-09-12 22:38:15', NULL);
INSERT INTO `rc_base_area` VALUES ('540202', '桑珠孜区', '540200', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540221', '南木林县', '540200', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540222', '江孜县', '540200', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540223', '定日县', '540200', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540224', '萨迦县', '540200', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540225', '拉孜县', '540200', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540226', '昂仁县', '540200', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540227', '谢通门县', '540200', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540228', '白朗县', '540200', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540229', '仁布县', '540200', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540230', '康马县', '540200', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540231', '定结县', '540200', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540232', '仲巴县', '540200', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540233', '亚东县', '540200', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540234', '吉隆县', '540200', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540235', '聂拉木县', '540200', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540236', '萨嘎县', '540200', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540237', '岗巴县', '540200', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540300', '昌都市', '540000', 2, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540302', '卡若区', '540300', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540321', '江达县', '540300', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540322', '贡觉县', '540300', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540323', '类乌齐县', '540300', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540324', '丁青县', '540300', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540325', '察雅县', '540300', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540326', '八宿县', '540300', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540327', '左贡县', '540300', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540328', '芒康县', '540300', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540329', '洛隆县', '540300', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540330', '边坝县', '540300', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540400', '林芝市', '540000', 2, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540402', '巴宜区', '540400', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540421', '工布江达县', '540400', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540422', '米林县', '540400', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540423', '墨脱县', '540400', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540424', '波密县', '540400', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540425', '察隅县', '540400', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540426', '朗县', '540400', 3, '2017-09-12 22:38:16', NULL);
INSERT INTO `rc_base_area` VALUES ('540500', '山南市', '540000', 2, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('540501', '市辖区', '540500', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('540502', '乃东区', '540500', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('540521', '扎囊县', '540500', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('540522', '贡嘎县', '540500', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('540523', '桑日县', '540500', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('540524', '琼结县', '540500', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('540525', '曲松县', '540500', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('540526', '措美县', '540500', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('540527', '洛扎县', '540500', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('540528', '加查县', '540500', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('540529', '隆子县', '540500', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('540530', '错那县', '540500', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('540531', '浪卡子县', '540500', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('542400', '那曲地区', '540000', 2, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('542421', '那曲县', '542400', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('542422', '嘉黎县', '542400', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('542423', '比如县', '542400', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('542424', '聂荣县', '542400', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('542425', '安多县', '542400', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('542426', '申扎县', '542400', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('542427', '索县', '542400', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('542428', '班戈县', '542400', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('542429', '巴青县', '542400', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('542430', '尼玛县', '542400', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('542431', '双湖县', '542400', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('542500', '阿里地区', '540000', 2, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('542521', '普兰县', '542500', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('542522', '札达县', '542500', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('542523', '噶尔县', '542500', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('542524', '日土县', '542500', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('542525', '革吉县', '542500', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('542526', '改则县', '542500', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('542527', '措勤县', '542500', 3, '2017-09-12 22:38:17', NULL);
INSERT INTO `rc_base_area` VALUES ('610000', '陕西省', '0', 1, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610100', '西安市', '610000', 2, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610101', '市辖区', '610100', 3, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610102', '新城区', '610100', 3, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610103', '碑林区', '610100', 3, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610104', '莲湖区', '610100', 3, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610111', '灞桥区', '610100', 3, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610112', '未央区', '610100', 3, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610113', '雁塔区', '610100', 3, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610114', '阎良区', '610100', 3, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610115', '临潼区', '610100', 3, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610116', '长安区', '610100', 3, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610117', '高陵区', '610100', 3, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610122', '蓝田县', '610100', 3, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610124', '周至县', '610100', 3, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610125', '户县', '610100', 3, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610200', '铜川市', '610000', 2, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610201', '市辖区', '610200', 3, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610202', '王益区', '610200', 3, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610203', '印台区', '610200', 3, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610204', '耀州区', '610200', 3, '2017-09-12 22:38:53', NULL);
INSERT INTO `rc_base_area` VALUES ('610222', '宜君县', '610200', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610300', '宝鸡市', '610000', 2, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610301', '市辖区', '610300', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610302', '渭滨区', '610300', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610303', '金台区', '610300', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610304', '陈仓区', '610300', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610322', '凤翔县', '610300', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610323', '岐山县', '610300', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610324', '扶风县', '610300', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610326', '眉县', '610300', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610327', '陇县', '610300', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610328', '千阳县', '610300', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610329', '麟游县', '610300', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610330', '凤县', '610300', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610331', '太白县', '610300', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610400', '咸阳市', '610000', 2, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610401', '市辖区', '610400', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610402', '秦都区', '610400', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610403', '杨陵区', '610400', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610404', '渭城区', '610400', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610422', '三原县', '610400', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610423', '泾阳县', '610400', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610424', '乾县', '610400', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610425', '礼泉县', '610400', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610426', '永寿县', '610400', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610427', '彬县', '610400', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610428', '长武县', '610400', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610429', '旬邑县', '610400', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610430', '淳化县', '610400', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610431', '武功县', '610400', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610481', '兴平市', '610400', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610500', '渭南市', '610000', 2, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610501', '市辖区', '610500', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610502', '临渭区', '610500', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610503', '华州区', '610500', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610522', '潼关县', '610500', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610523', '大荔县', '610500', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610524', '合阳县', '610500', 3, '2017-09-12 22:38:54', NULL);
INSERT INTO `rc_base_area` VALUES ('610525', '澄城县', '610500', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610526', '蒲城县', '610500', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610527', '白水县', '610500', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610528', '富平县', '610500', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610581', '韩城市', '610500', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610582', '华阴市', '610500', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610600', '延安市', '610000', 2, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610601', '市辖区', '610600', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610602', '宝塔区', '610600', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610603', '安塞区', '610600', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610621', '延长县', '610600', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610622', '延川县', '610600', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610623', '子长县', '610600', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610625', '志丹县', '610600', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610626', '吴起县', '610600', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610627', '甘泉县', '610600', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610628', '富县', '610600', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610629', '洛川县', '610600', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610630', '宜川县', '610600', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610631', '黄龙县', '610600', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610632', '黄陵县', '610600', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610700', '汉中市', '610000', 2, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610701', '市辖区', '610700', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610702', '汉台区', '610700', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610721', '南郑县', '610700', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610722', '城固县', '610700', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610723', '洋县', '610700', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610724', '西乡县', '610700', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610725', '勉县', '610700', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610726', '宁强县', '610700', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610727', '略阳县', '610700', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610728', '镇巴县', '610700', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610729', '留坝县', '610700', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610730', '佛坪县', '610700', 3, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610800', '榆林市', '610000', 2, '2017-09-12 22:38:55', NULL);
INSERT INTO `rc_base_area` VALUES ('610801', '市辖区', '610800', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610802', '榆阳区', '610800', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610803', '横山区', '610800', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610821', '神木县', '610800', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610822', '府谷县', '610800', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610824', '靖边县', '610800', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610825', '定边县', '610800', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610826', '绥德县', '610800', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610827', '米脂县', '610800', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610828', '佳县', '610800', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610829', '吴堡县', '610800', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610830', '清涧县', '610800', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610831', '子洲县', '610800', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610900', '安康市', '610000', 2, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610901', '市辖区', '610900', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610902', '汉滨区', '610900', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610921', '汉阴县', '610900', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610922', '石泉县', '610900', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610923', '宁陕县', '610900', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610924', '紫阳县', '610900', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610925', '岚皋县', '610900', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610926', '平利县', '610900', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610927', '镇坪县', '610900', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610928', '旬阳县', '610900', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('610929', '白河县', '610900', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('611000', '商洛市', '610000', 2, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('611001', '市辖区', '611000', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('611002', '商州区', '611000', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('611021', '洛南县', '611000', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('611022', '丹凤县', '611000', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('611023', '商南县', '611000', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('611024', '山阳县', '611000', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('611025', '镇安县', '611000', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('611026', '柞水县', '611000', 3, '2017-09-12 22:38:56', NULL);
INSERT INTO `rc_base_area` VALUES ('620000', '甘肃省', '0', 1, '2017-09-12 22:39:22', NULL);
INSERT INTO `rc_base_area` VALUES ('620100', '兰州市', '620000', 2, '2017-09-12 22:39:22', NULL);
INSERT INTO `rc_base_area` VALUES ('620101', '市辖区', '620100', 3, '2017-09-12 22:39:22', NULL);
INSERT INTO `rc_base_area` VALUES ('620102', '城关区', '620100', 3, '2017-09-12 22:39:22', NULL);
INSERT INTO `rc_base_area` VALUES ('620103', '七里河区', '620100', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620104', '西固区', '620100', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620105', '安宁区', '620100', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620111', '红古区', '620100', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620121', '永登县', '620100', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620122', '皋兰县', '620100', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620123', '榆中县', '620100', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620200', '嘉峪关市', '620000', 2, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620201', '市辖区', '620200', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620300', '金昌市', '620000', 2, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620301', '市辖区', '620300', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620302', '金川区', '620300', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620321', '永昌县', '620300', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620400', '白银市', '620000', 2, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620401', '市辖区', '620400', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620402', '白银区', '620400', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620403', '平川区', '620400', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620421', '靖远县', '620400', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620422', '会宁县', '620400', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620423', '景泰县', '620400', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620500', '天水市', '620000', 2, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620501', '市辖区', '620500', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620502', '秦州区', '620500', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620503', '麦积区', '620500', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620521', '清水县', '620500', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620522', '秦安县', '620500', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620523', '甘谷县', '620500', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620524', '武山县', '620500', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620525', '张家川回族自治县', '620500', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620600', '武威市', '620000', 2, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620601', '市辖区', '620600', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620602', '凉州区', '620600', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620621', '民勤县', '620600', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620622', '古浪县', '620600', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620623', '天祝藏族自治县', '620600', 3, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620700', '张掖市', '620000', 2, '2017-09-12 22:39:23', NULL);
INSERT INTO `rc_base_area` VALUES ('620701', '市辖区', '620700', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620702', '甘州区', '620700', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620721', '肃南裕固族自治县', '620700', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620722', '民乐县', '620700', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620723', '临泽县', '620700', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620724', '高台县', '620700', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620725', '山丹县', '620700', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620800', '平凉市', '620000', 2, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620801', '市辖区', '620800', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620802', '崆峒区', '620800', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620821', '泾川县', '620800', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620822', '灵台县', '620800', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620823', '崇信县', '620800', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620824', '华亭县', '620800', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620825', '庄浪县', '620800', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620826', '静宁县', '620800', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620900', '酒泉市', '620000', 2, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620901', '市辖区', '620900', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620902', '肃州区', '620900', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620921', '金塔县', '620900', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620922', '瓜州县', '620900', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620923', '肃北蒙古族自治县', '620900', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620924', '阿克塞哈萨克族自治县', '620900', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620981', '玉门市', '620900', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('620982', '敦煌市', '620900', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('621000', '庆阳市', '620000', 2, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('621001', '市辖区', '621000', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('621002', '西峰区', '621000', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('621021', '庆城县', '621000', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('621022', '环县', '621000', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('621023', '华池县', '621000', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('621024', '合水县', '621000', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('621025', '正宁县', '621000', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('621026', '宁县', '621000', 3, '2017-09-12 22:39:24', NULL);
INSERT INTO `rc_base_area` VALUES ('621027', '镇原县', '621000', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('621100', '定西市', '620000', 2, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('621101', '市辖区', '621100', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('621102', '安定区', '621100', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('621121', '通渭县', '621100', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('621122', '陇西县', '621100', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('621123', '渭源县', '621100', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('621124', '临洮县', '621100', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('621125', '漳县', '621100', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('621126', '岷县', '621100', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('621200', '陇南市', '620000', 2, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('621201', '市辖区', '621200', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('621202', '武都区', '621200', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('621221', '成县', '621200', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('621222', '文县', '621200', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('621223', '宕昌县', '621200', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('621224', '康县', '621200', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('621225', '西和县', '621200', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('621226', '礼县', '621200', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('621227', '徽县', '621200', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('621228', '两当县', '621200', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('622900', '临夏回族自治州', '620000', 2, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('622901', '临夏市', '622900', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('622921', '临夏县', '622900', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('622922', '康乐县', '622900', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('622923', '永靖县', '622900', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('622924', '广河县', '622900', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('622925', '和政县', '622900', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('622926', '东乡族自治县', '622900', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', '622900', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('623000', '甘南藏族自治州', '620000', 2, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('623001', '合作市', '623000', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('623021', '临潭县', '623000', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('623022', '卓尼县', '623000', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('623023', '舟曲县', '623000', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('623024', '迭部县', '623000', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('623025', '玛曲县', '623000', 3, '2017-09-12 22:39:25', NULL);
INSERT INTO `rc_base_area` VALUES ('623026', '碌曲县', '623000', 3, '2017-09-12 22:39:26', NULL);
INSERT INTO `rc_base_area` VALUES ('623027', '夏河县', '623000', 3, '2017-09-12 22:39:26', NULL);
INSERT INTO `rc_base_area` VALUES ('630000', '青海省', '0', 1, '2017-09-12 22:39:52', NULL);
INSERT INTO `rc_base_area` VALUES ('630100', '西宁市', '630000', 2, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('630101', '市辖区', '630100', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('630102', '城东区', '630100', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('630103', '城中区', '630100', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('630104', '城西区', '630100', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('630105', '城北区', '630100', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('630121', '大通回族土族自治县', '630100', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('630122', '湟中县', '630100', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('630123', '湟源县', '630100', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('630200', '海东市', '630000', 2, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('630202', '乐都区', '630200', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('630203', '平安区', '630200', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('630222', '民和回族土族自治县', '630200', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('630223', '互助土族自治县', '630200', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('630224', '化隆回族自治县', '630200', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('630225', '循化撒拉族自治县', '630200', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('632200', '海北藏族自治州', '630000', 2, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('632221', '门源回族自治县', '632200', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('632222', '祁连县', '632200', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('632223', '海晏县', '632200', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('632224', '刚察县', '632200', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('632300', '黄南藏族自治州', '630000', 2, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('632321', '同仁县', '632300', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('632322', '尖扎县', '632300', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('632323', '泽库县', '632300', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('632324', '河南蒙古族自治县', '632300', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('632500', '海南藏族自治州', '630000', 2, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('632521', '共和县', '632500', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('632522', '同德县', '632500', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('632523', '贵德县', '632500', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('632524', '兴海县', '632500', 3, '2017-09-12 22:39:53', NULL);
INSERT INTO `rc_base_area` VALUES ('632525', '贵南县', '632500', 3, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('632600', '果洛藏族自治州', '630000', 2, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('632621', '玛沁县', '632600', 3, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('632622', '班玛县', '632600', 3, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('632623', '甘德县', '632600', 3, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('632624', '达日县', '632600', 3, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('632625', '久治县', '632600', 3, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('632626', '玛多县', '632600', 3, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('632700', '玉树藏族自治州', '630000', 2, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('632701', '玉树市', '632700', 3, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('632722', '杂多县', '632700', 3, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('632723', '称多县', '632700', 3, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('632724', '治多县', '632700', 3, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('632725', '囊谦县', '632700', 3, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('632726', '曲麻莱县', '632700', 3, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('632800', '海西蒙古族藏族自治州', '630000', 2, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('632801', '格尔木市', '632800', 3, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('632802', '德令哈市', '632800', 3, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('632821', '乌兰县', '632800', 3, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('632822', '都兰县', '632800', 3, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('632823', '天峻县', '632800', 3, '2017-09-12 22:39:54', NULL);
INSERT INTO `rc_base_area` VALUES ('640000', '宁夏回族自治区', '0', 1, '2017-09-12 22:40:20', NULL);
INSERT INTO `rc_base_area` VALUES ('640100', '银川市', '640000', 2, '2017-09-12 22:40:20', NULL);
INSERT INTO `rc_base_area` VALUES ('640101', '市辖区', '640100', 3, '2017-09-12 22:40:20', NULL);
INSERT INTO `rc_base_area` VALUES ('640104', '兴庆区', '640100', 3, '2017-09-12 22:40:20', NULL);
INSERT INTO `rc_base_area` VALUES ('640105', '西夏区', '640100', 3, '2017-09-12 22:40:20', NULL);
INSERT INTO `rc_base_area` VALUES ('640106', '金凤区', '640100', 3, '2017-09-12 22:40:20', NULL);
INSERT INTO `rc_base_area` VALUES ('640121', '永宁县', '640100', 3, '2017-09-12 22:40:20', NULL);
INSERT INTO `rc_base_area` VALUES ('640122', '贺兰县', '640100', 3, '2017-09-12 22:40:20', NULL);
INSERT INTO `rc_base_area` VALUES ('640181', '灵武市', '640100', 3, '2017-09-12 22:40:20', NULL);
INSERT INTO `rc_base_area` VALUES ('640200', '石嘴山市', '640000', 2, '2017-09-12 22:40:20', NULL);
INSERT INTO `rc_base_area` VALUES ('640201', '市辖区', '640200', 3, '2017-09-12 22:40:20', NULL);
INSERT INTO `rc_base_area` VALUES ('640202', '大武口区', '640200', 3, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640205', '惠农区', '640200', 3, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640221', '平罗县', '640200', 3, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640300', '吴忠市', '640000', 2, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640301', '市辖区', '640300', 3, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640302', '利通区', '640300', 3, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640303', '红寺堡区', '640300', 3, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640323', '盐池县', '640300', 3, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640324', '同心县', '640300', 3, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640381', '青铜峡市', '640300', 3, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640400', '固原市', '640000', 2, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640401', '市辖区', '640400', 3, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640402', '原州区', '640400', 3, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640422', '西吉县', '640400', 3, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640423', '隆德县', '640400', 3, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640424', '泾源县', '640400', 3, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640425', '彭阳县', '640400', 3, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640500', '中卫市', '640000', 2, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640501', '市辖区', '640500', 3, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640502', '沙坡头区', '640500', 3, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640521', '中宁县', '640500', 3, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('640522', '海原县', '640500', 3, '2017-09-12 22:40:21', NULL);
INSERT INTO `rc_base_area` VALUES ('650000', '新疆维吾尔自治区', '0', 1, '2017-09-12 22:40:56', NULL);
INSERT INTO `rc_base_area` VALUES ('650100', '乌鲁木齐市', '650000', 2, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650101', '市辖区', '650100', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650102', '天山区', '650100', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650103', '沙依巴克区', '650100', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650104', '新市区', '650100', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650105', '水磨沟区', '650100', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650106', '头屯河区', '650100', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650107', '达坂城区', '650100', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650109', '米东区', '650100', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650121', '乌鲁木齐县', '650100', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650200', '克拉玛依市', '650000', 2, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650201', '市辖区', '650200', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650202', '独山子区', '650200', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650203', '克拉玛依区', '650200', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650204', '白碱滩区', '650200', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650205', '乌尔禾区', '650200', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650400', '吐鲁番市', '650000', 2, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650402', '高昌区', '650400', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650421', '鄯善县', '650400', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650422', '托克逊县', '650400', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650500', '哈密市', '650000', 2, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650502', '伊州区', '650500', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650521', '巴里坤哈萨克自治县', '650500', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('650522', '伊吾县', '650500', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('652300', '昌吉回族自治州', '650000', 2, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('652301', '昌吉市', '652300', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('652302', '阜康市', '652300', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('652323', '呼图壁县', '652300', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('652324', '玛纳斯县', '652300', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('652325', '奇台县', '652300', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('652327', '吉木萨尔县', '652300', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('652328', '木垒哈萨克自治县', '652300', 3, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('652700', '博尔塔拉蒙古自治州', '650000', 2, '2017-09-12 22:40:57', NULL);
INSERT INTO `rc_base_area` VALUES ('652701', '博乐市', '652700', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652702', '阿拉山口市', '652700', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652722', '精河县', '652700', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652723', '温泉县', '652700', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652800', '巴音郭楞蒙古自治州', '650000', 2, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652801', '库尔勒市', '652800', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652822', '轮台县', '652800', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652823', '尉犁县', '652800', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652824', '若羌县', '652800', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652825', '且末县', '652800', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652826', '焉耆回族自治县', '652800', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652827', '和静县', '652800', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652828', '和硕县', '652800', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652829', '博湖县', '652800', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652900', '阿克苏地区', '650000', 2, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652901', '阿克苏市', '652900', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652922', '温宿县', '652900', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652923', '库车县', '652900', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652924', '沙雅县', '652900', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652925', '新和县', '652900', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652926', '拜城县', '652900', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652927', '乌什县', '652900', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652928', '阿瓦提县', '652900', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('652929', '柯坪县', '652900', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('653000', '克孜勒苏柯尔克孜自治州', '650000', 2, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('653001', '阿图什市', '653000', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('653022', '阿克陶县', '653000', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('653023', '阿合奇县', '653000', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('653024', '乌恰县', '653000', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('653100', '喀什地区', '650000', 2, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('653101', '喀什市', '653100', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('653121', '疏附县', '653100', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('653122', '疏勒县', '653100', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('653123', '英吉沙县', '653100', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('653124', '泽普县', '653100', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('653125', '莎车县', '653100', 3, '2017-09-12 22:40:58', NULL);
INSERT INTO `rc_base_area` VALUES ('653126', '叶城县', '653100', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('653127', '麦盖提县', '653100', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('653128', '岳普湖县', '653100', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('653129', '伽师县', '653100', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('653130', '巴楚县', '653100', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('653131', '塔什库尔干塔吉克自治县', '653100', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('653200', '和田地区', '650000', 2, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('653201', '和田市', '653200', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('653221', '和田县', '653200', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('653222', '墨玉县', '653200', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('653223', '皮山县', '653200', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('653224', '洛浦县', '653200', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('653225', '策勒县', '653200', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('653226', '于田县', '653200', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('653227', '民丰县', '653200', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('654000', '伊犁哈萨克自治州', '650000', 2, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('654002', '伊宁市', '654000', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('654003', '奎屯市', '654000', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('654004', '霍尔果斯市', '654000', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('654021', '伊宁县', '654000', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('654022', '察布查尔锡伯自治县', '654000', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('654023', '霍城县', '654000', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('654024', '巩留县', '654000', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('654025', '新源县', '654000', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('654026', '昭苏县', '654000', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('654027', '特克斯县', '654000', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('654028', '尼勒克县', '654000', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('654200', '塔城地区', '650000', 2, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('654201', '塔城市', '654200', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('654202', '乌苏市', '654200', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('654221', '额敏县', '654200', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('654223', '沙湾县', '654200', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('654224', '托里县', '654200', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('654225', '裕民县', '654200', 3, '2017-09-12 22:40:59', NULL);
INSERT INTO `rc_base_area` VALUES ('654226', '和布克赛尔蒙古自治县', '654200', 3, '2017-09-12 22:41:00', NULL);
INSERT INTO `rc_base_area` VALUES ('654300', '阿勒泰地区', '650000', 2, '2017-09-12 22:41:00', NULL);
INSERT INTO `rc_base_area` VALUES ('654301', '阿勒泰市', '654300', 3, '2017-09-12 22:41:00', NULL);
INSERT INTO `rc_base_area` VALUES ('654321', '布尔津县', '654300', 3, '2017-09-12 22:41:00', NULL);
INSERT INTO `rc_base_area` VALUES ('654322', '富蕴县', '654300', 3, '2017-09-12 22:41:00', NULL);
INSERT INTO `rc_base_area` VALUES ('654323', '福海县', '654300', 3, '2017-09-12 22:41:00', NULL);
INSERT INTO `rc_base_area` VALUES ('654324', '哈巴河县', '654300', 3, '2017-09-12 22:41:00', NULL);
INSERT INTO `rc_base_area` VALUES ('654325', '青河县', '654300', 3, '2017-09-12 22:41:00', NULL);
INSERT INTO `rc_base_area` VALUES ('654326', '吉木乃县', '654300', 3, '2017-09-12 22:41:00', NULL);
INSERT INTO `rc_base_area` VALUES ('659000', '自治区直辖县级行政区划', '650000', 2, '2017-09-12 22:41:00', NULL);
INSERT INTO `rc_base_area` VALUES ('659001', '石河子市', '659000', 3, '2017-09-12 22:41:00', NULL);
INSERT INTO `rc_base_area` VALUES ('659002', '阿拉尔市', '659000', 3, '2017-09-12 22:41:00', NULL);
INSERT INTO `rc_base_area` VALUES ('659003', '图木舒克市', '659000', 3, '2017-09-12 22:41:00', NULL);
INSERT INTO `rc_base_area` VALUES ('659004', '五家渠市', '659000', 3, '2017-09-12 22:41:00', NULL);
INSERT INTO `rc_base_area` VALUES ('659006', '铁门关市', '659000', 3, '2017-09-12 22:41:00', NULL);
INSERT INTO `rc_base_area` VALUES ('710000', '台湾省', '0', 1, '2017-09-12 22:41:30', NULL);
INSERT INTO `rc_base_area` VALUES ('810000', '香港特别行政区', '0', 1, '2017-09-12 22:41:58', NULL);
INSERT INTO `rc_base_area` VALUES ('820000', '澳门特别行政区', '0', 1, '2017-09-12 22:42:26', NULL);

-- ----------------------------
-- Table structure for rc_dict
-- ----------------------------
DROP TABLE IF EXISTS `rc_dict`;
CREATE TABLE `rc_dict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tips` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_dict
-- ----------------------------
INSERT INTO `rc_dict` VALUES (16, 0, 0, '状态', NULL);
INSERT INTO `rc_dict` VALUES (17, 1, 16, '启用', NULL);
INSERT INTO `rc_dict` VALUES (18, 2, 16, '禁用', NULL);
INSERT INTO `rc_dict` VALUES (29, 0, 0, '性别', NULL);
INSERT INTO `rc_dict` VALUES (30, 1, 29, '男', NULL);
INSERT INTO `rc_dict` VALUES (31, 2, 29, '女', NULL);
INSERT INTO `rc_dict` VALUES (35, 0, 0, '账号状态', NULL);
INSERT INTO `rc_dict` VALUES (36, 1, 35, '启用', NULL);
INSERT INTO `rc_dict` VALUES (37, 2, 35, '冻结', NULL);
INSERT INTO `rc_dict` VALUES (38, 3, 35, '已删除', NULL);

-- ----------------------------
-- Table structure for rc_login_log
-- ----------------------------
DROP TABLE IF EXISTS `rc_login_log`;
CREATE TABLE `rc_login_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_id` int(65) DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  `succeed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rc_menu
-- ----------------------------
DROP TABLE IF EXISTS `rc_menu`;
CREATE TABLE `rc_menu`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单编码',
  `p_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单父编码',
  `p_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '父菜单ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '请求地址',
  `is_menu` int(11) DEFAULT NULL COMMENT '是否是菜单',
  `level` int(11) DEFAULT NULL COMMENT '菜单层级',
  `sort` int(11) DEFAULT NULL COMMENT '菜单排序',
  `status` int(11) DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  `update_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `FK_CODE`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_menu
-- ----------------------------
INSERT INTO `rc_menu` VALUES ('000000000000000000', 'root', '0', '0', '系统根目录', '', 1, 0, 1, 1, NULL, '2019-06-26 18:31:54', NULL);
INSERT INTO `rc_menu` VALUES ('1146651337606299648', 'tree/treeView', 'system', '893287144657780736', '物料编码', 'tree/treeView', 0, 2, 4, 1, '4', '2019-07-04 13:25:57', '2019-07-04 13:27:26');
INSERT INTO `rc_menu` VALUES ('1146962842432307200', 'goods', 'root', '000000000000000000', '物料信息', 'goods', 1, 1, 1, 1, '', '2019-07-05 10:03:46', NULL);
INSERT INTO `rc_menu` VALUES ('1146963463159939072', 'goods/warehousing', 'goods', '1146962842432307200', '物料入库', 'goods/warehousing', 1, 2, 1, 1, '', '2019-07-05 10:06:14', NULL);
INSERT INTO `rc_menu` VALUES ('1146963757923041280', 'goods/outOfStock', 'goods', '1146962842432307200', '物料出库', 'goods/outOfStock', 1, 2, 2, 1, '', '2019-07-05 10:07:24', NULL);
INSERT INTO `rc_menu` VALUES ('1146964029588111360', 'goods/stock', 'goods', '1146962842432307200', '物料库存', 'goods/stock', 1, 2, 3, 1, '', '2019-07-05 10:08:29', NULL);
INSERT INTO `rc_menu` VALUES ('1146964368055861248', 'goods/regressionToStock', 'goods', '1146962842432307200', '不合格品库', 'goods/regressionToStock', 1, 2, 4, 1, '', '2019-07-05 10:09:50', NULL);
INSERT INTO `rc_menu` VALUES ('1146967113630482432', 'order', 'root', '000000000000000000', '订单', 'order', 1, 1, 4, 1, '', '2019-07-05 10:20:44', '2019-07-08 15:18:43');
INSERT INTO `rc_menu` VALUES ('1146967342442348544', 'order/productOrder', 'order', '1146967113630482432', '生产订单', 'order/productOrder', 1, 2, 1, 1, '', '2019-07-05 10:21:39', '2019-07-22 14:25:18');
INSERT INTO `rc_menu` VALUES ('1146967519848824832', 'production', 'root', '000000000000000000', '生产', 'production', 1, 1, 5, 1, '', '2019-07-05 10:22:21', '2019-07-08 15:18:54');
INSERT INTO `rc_menu` VALUES ('1146967808450494464', 'production/civilProduct', 'production', '1146967519848824832', '民用生产', 'production/civilProduct', 1, 2, 2, 1, '', '2019-07-05 10:23:30', NULL);
INSERT INTO `rc_menu` VALUES ('1146967942311706624', 'production/pubProduct', 'production', '1146967519848824832', '工业生产', 'production/pubProduct', 1, 2, 3, 1, '', '2019-07-05 10:24:02', NULL);
INSERT INTO `rc_menu` VALUES ('1146968340300824576', 'overGoods', 'root', '000000000000000000', '成品库', 'overGoods', 1, 1, 6, 1, '', '2019-07-05 10:25:37', '2019-07-08 15:19:04');
INSERT INTO `rc_menu` VALUES ('1146968517547917312', 'overGoods/inStock', 'overGoods', '1146968340300824576', '成品库入库', 'overGoods/inStock', 1, 2, 1, 1, '', '2019-07-05 10:26:19', NULL);
INSERT INTO `rc_menu` VALUES ('1146968664285642752', 'overGoods/outStock', 'overGoods', '1146968340300824576', '成品库出库', 'overGoods/outStock', 1, 2, 2, 1, '', '2019-07-05 10:26:54', NULL);
INSERT INTO `rc_menu` VALUES ('1146968763380269056', 'overGoods/stock', 'overGoods', '1146968340300824576', '成品库库存', 'overGoods/stock', 1, 2, 3, 1, '', '2019-07-05 10:27:18', NULL);
INSERT INTO `rc_menu` VALUES ('1146969035301191680', 'outFactory', 'root', '000000000000000000', '产品出厂', 'outFactory', 1, 1, 7, 1, '', '2019-07-05 10:28:22', '2019-07-08 15:19:23');
INSERT INTO `rc_menu` VALUES ('1146969229933674496', 'outFactory/outFactory', 'outFactory', '1146969035301191680', '产品出厂', 'outFactory/outFactory', 1, 2, 1, 1, '', '2019-07-05 10:29:09', NULL);
INSERT INTO `rc_menu` VALUES ('1148768967628685312', 'purchaser', 'system', '893287144657780736', '采购商维护', 'purchaser', 1, 2, 5, 1, '', '2019-07-10 09:40:40', NULL);
INSERT INTO `rc_menu` VALUES ('1148769273980649472', 'supplier', 'system', '893287144657780736', '供应商维护', 'supplier', 1, 2, 6, 1, '', '2019-07-10 09:41:53', NULL);
INSERT INTO `rc_menu` VALUES ('1148824765591453696', 'data', 'system', '893287144657780736', '数据字典', 'data', 1, 2, 7, 1, '', '2019-07-10 13:22:23', NULL);
INSERT INTO `rc_menu` VALUES ('1149584566688677888', 'sysMaterialManagement/view', 'system', '893287144657780736', '物料管理', 'sysMaterialManagement/view', 1, 2, 8, 1, '', '2019-07-12 15:41:34', NULL);
INSERT INTO `rc_menu` VALUES ('1153178265402212352', 'order/saleOrder', 'order', '1146967113630482432', '销售订单', 'order/saleOrder', 1, 2, 2, 1, '', '2019-07-22 13:41:38', NULL);
INSERT INTO `rc_menu` VALUES ('1153180407789780992', 'production/distributNumber', 'production', '1146967519848824832', '分配编码', 'production/distributNumber', 1, 2, 1, 1, '', '2019-07-22 13:50:09', NULL);
INSERT INTO `rc_menu` VALUES ('893287144657780736', 'system', 'root', '000000000000000000', '系统设置', 'system', 1, 1, 10, 1, '', '2019-06-25 09:47:06', NULL);
INSERT INTO `rc_menu` VALUES ('893288715881807872', 'userList', 'system', '893287144657780736', '用户管理', 'user/list', 1, 2, 3, 1, '', '2019-07-02 09:53:21', '2019-07-04 13:24:29');
INSERT INTO `rc_menu` VALUES ('893304960282787840', 'user/add', 'userList', '893288715881807872', '用户添加', 'user/add', 0, 3, 1, 1, '', '2019-07-01 10:57:54', '2019-07-04 11:02:55');
INSERT INTO `rc_menu` VALUES ('894396523532517376', 'user/edit', 'userList', '893288715881807872', '用户修改', 'user/edit', 0, 3, 1, 1, '', '2019-07-01 11:15:23', '2019-07-04 16:57:52');
INSERT INTO `rc_menu` VALUES ('894473486712438784', 'user/view', 'userList', '893288715881807872', '用户查看', 'user/View', 0, 3, 2, 1, '', '2019-07-02 16:21:12', NULL);
INSERT INTO `rc_menu` VALUES ('894473651837992960', 'user/delete', 'userList', '893288715881807872', '用户删除', 'user/delete', 0, 3, 4, 1, '', '2019-07-02 16:21:52', NULL);
INSERT INTO `rc_menu` VALUES ('894475142061621248', 'roleList', 'system', '893287144657780736', '角色管理', 'role/list', 1, 2, 2, 1, '', '2019-06-24 16:27:47', '2019-07-04 10:34:56');
INSERT INTO `rc_menu` VALUES ('894475827880656896', 'role/add', 'roleList', '894475142061621248', '角色添加', 'role/add', 0, 3, 1, 1, '', '2019-07-02 16:30:31', NULL);
INSERT INTO `rc_menu` VALUES ('894475985452269568', 'role/edit', 'roleList', '894475142061621248', '角色编辑', 'role/edit', 0, 3, 2, 1, '', '2019-07-02 16:31:08', NULL);
INSERT INTO `rc_menu` VALUES ('894476118730473472', 'role/delete', 'roleList', '894475142061621248', '角色删除', 'role/delete', 0, 3, 2, 1, '', '2019-06-25 16:31:40', '2019-07-04 16:37:24');
INSERT INTO `rc_menu` VALUES ('894476276402749440', 'role/permission', 'roleList', '894475142061621248', '角色配权', 'role/permission', 0, 3, 3, 1, '', '2019-06-27 16:32:18', NULL);
INSERT INTO `rc_menu` VALUES ('894476950951690240', 'menu/list', 'system', '893287144657780736', '菜单管理', 'menu/list', 1, 2, 1, 1, '', '2019-07-01 16:34:58', '2019-07-04 13:24:39');
INSERT INTO `rc_menu` VALUES ('894477107919323136', 'menu/add', 'menu/list', '894476950951690240', '菜单添加', 'menu/add', 0, 3, 1, 1, '', '2019-07-02 16:35:36', NULL);
INSERT INTO `rc_menu` VALUES ('894477244926263296', 'menu/edit', 'menu/list', '894476950951690240', '菜单编辑', 'menu/edit', 0, 3, 2, 1, '', '2019-07-02 16:36:08', NULL);
INSERT INTO `rc_menu` VALUES ('894477420512411648', 'menu/delete', 'menu/list', '894476950951690240', '菜单删除', 'menu/delete', 0, 3, 2, 1, '', '2019-07-01 16:36:50', NULL);
INSERT INTO `rc_menu` VALUES ('894477851082883072', 'apidoc', 'system', '893287144657780736', 'Api文档', 'swagger-ui.html', 1, 2, 9, 1, '', '2019-07-01 16:38:33', '2019-07-04 11:20:26');
INSERT INTO `rc_menu` VALUES ('894477995903811584', 'database/log', 'system', '893287144657780736', '数据库日志', 'druid', 1, 2, 10, 1, '', '2019-06-27 16:39:07', '2019-07-04 09:56:29');
INSERT INTO `rc_menu` VALUES ('903459378655395840', '/user/modify', 'userList', '893288715881807872', '密码重置', '/user/modify', 1, 3, 2, 1, '', '2019-07-04 11:27:56', NULL);

-- ----------------------------
-- Table structure for rc_notice
-- ----------------------------
DROP TABLE IF EXISTS `rc_notice`;
CREATE TABLE `rc_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序列',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '内容',
  `create_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `creater` int(11) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rc_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `rc_operation_log`;
CREATE TABLE `rc_operation_log`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT '操作人ID',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作人姓名',
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '被操作类',
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '方法',
  `args` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '参数',
  `origin_data` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '原始数据',
  `new_data` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '新数据',
  `create_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rc_privilege
-- ----------------------------
DROP TABLE IF EXISTS `rc_privilege`;
CREATE TABLE `rc_privilege`  (
  `role_id` int(11) DEFAULT NULL,
  `menu_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_privilege
-- ----------------------------
INSERT INTO `rc_privilege` VALUES (6, '893287144657780736', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '893288715881807872', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '894396523532517376', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '894477851082883072', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '893287144657780736', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '893288715881807872', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '894396523532517376', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '894477851082883072', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '894477995903811584', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '893287144657780736', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '893288715881807872', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '894396523532517376', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '894473486712438784', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '894477851082883072', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '894477995903811584', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '893287144657780736', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '893288715881807872', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '894396523532517376', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '894473486712438784', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '894473651837992960', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '894477851082883072', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '894477995903811584', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '893287144657780736', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '893288715881807872', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '893304960282787840', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '894396523532517376', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '894473486712438784', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '894473651837992960', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '894477851082883072', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (6, '894477995903811584', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES (20, '893287144657780736', '2019-07-10 17:07:30');
INSERT INTO `rc_privilege` VALUES (20, '1148824765591453696', '2019-07-10 17:07:30');
INSERT INTO `rc_privilege` VALUES (8, '1146962842432307200', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '1146963463159939072', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '1146963757923041280', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '1146964029588111360', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '1146964368055861248', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '1146967113630482432', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '1146967342442348544', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '1153178265402212352', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '1146967519848824832', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '1146967808450494464', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '1146967942311706624', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '1153180407789780992', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '1146968340300824576', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '1146968517547917312', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '1146968664285642752', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '1146968763380269056', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '893287144657780736', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '1148768967628685312', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '1148769273980649472', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '1148824765591453696', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '1149584566688677888', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '893288715881807872', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '893304960282787840', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '894396523532517376', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '894473486712438784', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '894473651837992960', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '894475142061621248', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '894475827880656896', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '894475985452269568', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '894476118730473472', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '894476276402749440', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '894476950951690240', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '894477107919323136', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '894477244926263296', '2019-08-17 08:42:06');
INSERT INTO `rc_privilege` VALUES (8, '894477420512411648', '2019-08-17 08:42:06');

-- ----------------------------
-- Table structure for rc_role
-- ----------------------------
DROP TABLE IF EXISTS `rc_role`;
CREATE TABLE `rc_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tips` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  `update_time` datetime(0) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_role_name`(`name`) USING BTREE,
  UNIQUE INDEX `unique_role_value`(`value`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_role
-- ----------------------------
INSERT INTO `rc_role` VALUES (6, '管理员', 'admin', NULL, '2019-06-27 15:07:13', '2019-08-14 15:26:06', 1);
INSERT INTO `rc_role` VALUES (8, '超级管理员', 'super', NULL, '2019-06-27 15:08:45', NULL, 1);
INSERT INTO `rc_role` VALUES (20, '字典专员', 'MsGuo', NULL, '2019-07-10 17:00:45', NULL, 1);

-- ----------------------------
-- Table structure for rc_user
-- ----------------------------
DROP TABLE IF EXISTS `rc_user`;
CREATE TABLE `rc_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `salt` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `birthday` datetime(0) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  `update_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_user_username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_user
-- ----------------------------
INSERT INTO `rc_user` VALUES (46, NULL, 'super', 'a5322b1321d2c849e22fa3f62bf87d6b', 'u2w3z', '超级管理员', '2017-06-22 14:26:09', 1, NULL, NULL, 1, '2019-06-27 15:12:16', '2017-09-12 14:39:48');
INSERT INTO `rc_user` VALUES (48, NULL, 'admin', '439b9b33eb18d644f3b57e182f45b86a', 'bycca', '管理员', NULL, 1, NULL, NULL, 1, '2019-06-27 17:31:41', NULL);
INSERT INTO `rc_user` VALUES (59, NULL, 'young', '355e7015da8fdbf69a3b36c6b08a04f5', '58qur', '芬兰', NULL, 1, NULL, NULL, 1, '2019-06-27 08:18:30', NULL);
INSERT INTO `rc_user` VALUES (61, NULL, 'xiaobai', '38efde355f54fa0a5c4c2fff44d2ce4c', '7qeaz', '小白', NULL, 1, NULL, NULL, 1, '2019-07-03 13:14:34', NULL);

-- ----------------------------
-- Table structure for rc_user_dept
-- ----------------------------
DROP TABLE IF EXISTS `rc_user_dept`;
CREATE TABLE `rc_user_dept`  (
  `user_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rc_user_role
-- ----------------------------
DROP TABLE IF EXISTS `rc_user_role`;
CREATE TABLE `rc_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rc_user_role
-- ----------------------------
INSERT INTO `rc_user_role` VALUES (2, 48, 6, '2017-09-11 13:02:56', NULL);
INSERT INTO `rc_user_role` VALUES (3, 49, 17, '2017-09-11 13:03:12', NULL);
INSERT INTO `rc_user_role` VALUES (22, 59, 17, '2019-06-27 08:24:43', '超级管理员');
INSERT INTO `rc_user_role` VALUES (24, 50, 6, '2019-06-27 08:33:43', '超级管理员');
INSERT INTO `rc_user_role` VALUES (25, 50, 17, '2019-06-27 08:33:43', '超级管理员');
INSERT INTO `rc_user_role` VALUES (28, 46, 8, '2019-06-27 08:35:16', '超级管理员');
INSERT INTO `rc_user_role` VALUES (30, 60, 18, '2019-06-27 17:30:21', '超级管理员');
INSERT INTO `rc_user_role` VALUES (31, 61, 19, '2019-07-03 13:18:23', '超级管理员');
INSERT INTO `rc_user_role` VALUES (32, 62, 20, '2019-07-10 17:04:26', '超级管理员');

-- ----------------------------
-- Table structure for sale_order
-- ----------------------------
DROP TABLE IF EXISTS `sale_order`;
CREATE TABLE `sale_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `saleNum` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `customerName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `projectName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `endDate` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `productNameOrder` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `productSpecificationsOrder` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `customerPressure` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `customerNums` int(10) DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `receiver` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telPhone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `logisticsInformation` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operatorTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sysdata
-- ----------------------------
DROP TABLE IF EXISTS `sysdata`;
CREATE TABLE `sysdata`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dataname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operatorTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 158 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sysdata
-- ----------------------------
INSERT INTO `sysdata` VALUES (1, 0, '00', '成品参数', 'super', '2019-08-14 16:07:09');
INSERT INTO `sysdata` VALUES (102, 1, '01', '产品名称', 'super', '2019-08-14 15:43:44');
INSERT INTO `sysdata` VALUES (103, 1, '02', '产品规格', 'super', '2019-08-14 15:43:57');
INSERT INTO `sysdata` VALUES (104, 1, '03', '使用压力', 'super', '2019-08-14 15:44:40');
INSERT INTO `sysdata` VALUES (105, 1, '04', '阀门名称', 'super', '2019-08-14 15:56:22');
INSERT INTO `sysdata` VALUES (106, 1, '05', '阀门规格', 'super', '2019-08-14 15:56:36');
INSERT INTO `sysdata` VALUES (107, 1, '06', '控制主板名称', 'super', '2019-08-17 08:57:06');
INSERT INTO `sysdata` VALUES (108, 1, '07', '控制主板规格', 'super', '2019-08-14 15:57:18');
INSERT INTO `sysdata` VALUES (109, 1, '08', '通讯主板名称', 'super', '2019-08-14 15:57:36');
INSERT INTO `sysdata` VALUES (110, 1, '09', '通讯主板规格', 'super', '2019-08-14 15:57:46');
INSERT INTO `sysdata` VALUES (111, 1, '10', '485主板名称', 'super', '2019-08-14 15:58:04');
INSERT INTO `sysdata` VALUES (113, 102, '0101', '皮膜表', 'super', '2019-08-14 15:59:21');
INSERT INTO `sysdata` VALUES (114, 102, '0102', '民用表', 'super', '2019-08-14 15:59:38');
INSERT INTO `sysdata` VALUES (116, 103, '0201', 'TH-D-50J', 'super', '2019-08-14 16:00:36');
INSERT INTO `sysdata` VALUES (117, 103, '0202', 'TH-D-50Z', 'super', '2019-08-14 16:00:56');
INSERT INTO `sysdata` VALUES (120, 105, '0401', '快关低压角阀', 'super', '2019-08-14 16:01:53');
INSERT INTO `sysdata` VALUES (121, 105, '0402', '慢关低压角阀', 'super', '2019-08-14 16:02:05');
INSERT INTO `sysdata` VALUES (122, 106, '0501', 'DN50', 'super', '2019-08-14 16:02:17');
INSERT INTO `sysdata` VALUES (123, 106, '0501', 'DN25', 'super', '2019-08-14 16:02:23');
INSERT INTO `sysdata` VALUES (124, 107, '0601', '控制主板', 'super', '2019-08-14 16:02:38');
INSERT INTO `sysdata` VALUES (126, 108, '0701', '2GTHGY-501', 'super', '2019-08-14 16:05:46');
INSERT INTO `sysdata` VALUES (127, 108, '0702', 'IC卡V1.03', 'super', '2019-08-14 16:06:08');
INSERT INTO `sysdata` VALUES (128, 108, '0703', '金额V1.01', 'super', '2019-08-14 16:06:18');
INSERT INTO `sysdata` VALUES (129, 109, '0801', '通讯主板', 'super', '2019-08-14 16:06:35');
INSERT INTO `sysdata` VALUES (130, 111, '1001', '485主板', 'super', '2019-08-14 16:06:49');
INSERT INTO `sysdata` VALUES (131, 110, '0901', '2GTHGY-301', 'super', '2019-08-14 16:07:32');
INSERT INTO `sysdata` VALUES (132, 110, '0902', '移动NB', 'super', '2019-08-14 16:07:49');
INSERT INTO `sysdata` VALUES (133, 110, '0903', '联通NB', 'super', '2019-08-14 16:07:58');
INSERT INTO `sysdata` VALUES (135, 102, '0103', '控制器', 'super', '2019-08-16 16:04:30');
INSERT INTO `sysdata` VALUES (139, 104, '0301', '50KPa', 'super', '2019-08-17 09:03:27');
INSERT INTO `sysdata` VALUES (140, 104, '0302', '0.4MPa', 'super', '2019-08-17 09:03:41');
INSERT INTO `sysdata` VALUES (149, 110, '0904', '6767个', 'super', '2019-08-20 09:29:01');
INSERT INTO `sysdata` VALUES (153, 1, '11', '121', 'super', '2019-08-20 11:32:16');
INSERT INTO `sysdata` VALUES (155, 105, '0403', '快关中压直阀', 'super', '2019-08-20 14:22:41');
INSERT INTO `sysdata` VALUES (156, 106, '0503', 'DN80', 'super', '2019-08-20 14:23:14');
INSERT INTO `sysdata` VALUES (157, 106, '0504', 'DN40', 'super', '2019-08-20 14:23:28');

-- ----------------------------
-- Table structure for sysmaterialmanagement
-- ----------------------------
DROP TABLE IF EXISTS `sysmaterialmanagement`;
CREATE TABLE `sysmaterialmanagement`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `factory` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `materialtype` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `materialName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `materialSpecification` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operator` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operatorTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `pid` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 244 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sysmaterialmanagement
-- ----------------------------
INSERT INTO `sysmaterialmanagement` VALUES (1, '10', '', '', '', '', '', 'super', '2019-08-17 10:18:15', 0);
INSERT INTO `sysmaterialmanagement` VALUES (16, '1001', '湖州金辰', '', '', '', '', 'super', '2019-07-16 09:52:58', 1);
INSERT INTO `sysmaterialmanagement` VALUES (17, '100101', '', '阀门', '', '', '', 'super', '2019-07-16 08:53:52', 16);
INSERT INTO `sysmaterialmanagement` VALUES (18, '10010101', '', '', '快关低压角阀', '', '', 'super', '2019-07-16 09:52:13', 17);
INSERT INTO `sysmaterialmanagement` VALUES (19, '1001010101', '', '', '', 'DN25', '', 'super', '2019-07-15 15:35:30', 18);
INSERT INTO `sysmaterialmanagement` VALUES (21, '1001010102', '', '', '', 'DN40', '', 'super', '2019-08-17 11:06:22', 18);
INSERT INTO `sysmaterialmanagement` VALUES (22, '1001010103', '', '', '', 'DN50', '', 'super', '2019-08-17 11:06:45', 18);
INSERT INTO `sysmaterialmanagement` VALUES (23, '1001010104', '', '', '', 'DN80', '', 'super', '2019-08-17 11:06:49', 18);
INSERT INTO `sysmaterialmanagement` VALUES (24, '1001010105', '', '', '', 'DN100', '', 'super', '2019-08-17 11:06:52', 18);
INSERT INTO `sysmaterialmanagement` VALUES (25, '1001010106', '', '', '', 'DN150', '', 'super', '2019-08-17 11:06:54', 18);
INSERT INTO `sysmaterialmanagement` VALUES (26, '10010102', '', '', '快关低压直阀', '', '', 'super', '2019-08-17 11:08:23', 17);
INSERT INTO `sysmaterialmanagement` VALUES (27, '10010103', '', '', '快关中压直阀', '', '', 'super', '2019-08-17 11:08:35', 17);
INSERT INTO `sysmaterialmanagement` VALUES (28, '1001010201', '', '', '', 'DN25', '', 'super', '2019-08-17 11:09:42', 26);
INSERT INTO `sysmaterialmanagement` VALUES (29, '1001010202', '', '', '', 'DN32', '', 'super', '2019-08-17 11:09:47', 26);
INSERT INTO `sysmaterialmanagement` VALUES (31, '1001010203', '', '', '', 'DN50', '', 'super', '2019-08-17 11:09:51', 26);
INSERT INTO `sysmaterialmanagement` VALUES (32, '1001010204', '', '', '', 'DN80', '', 'super', '2019-08-17 11:09:55', 26);
INSERT INTO `sysmaterialmanagement` VALUES (33, '1001010205', '', '', '', 'DN100', '', 'super', '2019-08-17 11:09:59', 26);
INSERT INTO `sysmaterialmanagement` VALUES (34, '1001010206', '', '', '', 'DN150', '', 'super', '2019-08-17 11:10:03', 26);
INSERT INTO `sysmaterialmanagement` VALUES (35, '1001010207', '', '', '', 'DN200', '', 'super', '2019-08-17 11:10:08', 26);
INSERT INTO `sysmaterialmanagement` VALUES (36, '1001010301', '', '', '', 'DN25', '', 'super', '2019-08-17 11:10:59', 27);
INSERT INTO `sysmaterialmanagement` VALUES (38, '1001010302', '', '', '', 'DN40', '', 'super', '2019-08-17 11:11:02', 27);
INSERT INTO `sysmaterialmanagement` VALUES (39, '1001010303', '', '', '', 'DN50', '', 'super', '2019-08-17 11:11:09', 27);
INSERT INTO `sysmaterialmanagement` VALUES (40, '1001010304', '', '', '', 'DN80', '', 'super', '2019-08-17 11:11:17', 27);
INSERT INTO `sysmaterialmanagement` VALUES (41, '1001010305', '', '', '', 'DN100', '', 'super', '2019-08-17 11:11:22', 27);
INSERT INTO `sysmaterialmanagement` VALUES (42, '1001010306', '', '', '', 'DN150', '', 'super', '2019-08-17 11:11:27', 27);
INSERT INTO `sysmaterialmanagement` VALUES (43, '10010104', '', '', '慢关低压角阀', '', '', 'super', '2019-08-17 11:08:39', 17);
INSERT INTO `sysmaterialmanagement` VALUES (44, '10010105', '', '', '慢关低压直阀', '', '', 'super', '2019-08-17 11:08:43', 17);
INSERT INTO `sysmaterialmanagement` VALUES (46, '10010106', '', '', '慢关中压直阀', '', '', 'super', '2019-08-17 11:08:56', 17);
INSERT INTO `sysmaterialmanagement` VALUES (48, '1001010401', '', '', '', 'DN25', '', 'super', '2019-08-17 11:11:55', 43);
INSERT INTO `sysmaterialmanagement` VALUES (50, '1001010402', '', '', '', 'DN40', '', 'super', '2019-08-17 11:12:07', 43);
INSERT INTO `sysmaterialmanagement` VALUES (51, '1001010403', '', '', '', 'DN50', '', 'super', '2019-08-17 11:12:15', 43);
INSERT INTO `sysmaterialmanagement` VALUES (52, '1001010404', '', '', '', 'DN80', '', 'super', '2019-08-17 11:12:18', 43);
INSERT INTO `sysmaterialmanagement` VALUES (53, '1001010405', '', '', '', 'DN100', '', 'super', '2019-08-17 11:12:22', 43);
INSERT INTO `sysmaterialmanagement` VALUES (54, '1001010406', '', '', '', 'DN150', '', 'super', '2019-08-17 11:12:26', 43);
INSERT INTO `sysmaterialmanagement` VALUES (55, '1001010501', '', '', '', 'DN25', '', 'super', '2019-08-17 11:13:28', 44);
INSERT INTO `sysmaterialmanagement` VALUES (56, '1001010502', '', '', '', 'DN32', '', 'super', '2019-08-17 11:13:31', 44);
INSERT INTO `sysmaterialmanagement` VALUES (57, '1001010503', '', '', '', 'DN50', '', 'super', '2019-08-17 11:13:34', 44);
INSERT INTO `sysmaterialmanagement` VALUES (58, '1001010504', '', '', '', 'DN80', '', 'super', '2019-08-17 11:13:37', 44);
INSERT INTO `sysmaterialmanagement` VALUES (59, '1001010505', '', '', '', 'DN100', '', 'super', '2019-08-17 11:13:40', 44);
INSERT INTO `sysmaterialmanagement` VALUES (60, '1001010506', '', '', '', 'DN150', '', 'super', '2019-08-17 11:13:45', 44);
INSERT INTO `sysmaterialmanagement` VALUES (61, '1001010507', '', '', '', 'DN200', '', 'super', '2019-08-17 11:13:47', 44);
INSERT INTO `sysmaterialmanagement` VALUES (62, '1001010601', '', '', '', 'DN25', '', 'super', '2019-08-17 11:14:49', 46);
INSERT INTO `sysmaterialmanagement` VALUES (63, '1001010602', '', '', '', 'DN40', '', 'super', '2019-08-17 11:14:54', 46);
INSERT INTO `sysmaterialmanagement` VALUES (64, '1001010603', '', '', '', 'DN50', '', 'super', '2019-08-17 11:14:56', 46);
INSERT INTO `sysmaterialmanagement` VALUES (65, '1001010604', '', '', '', 'DN80', '', 'super', '2019-08-17 11:15:01', 46);
INSERT INTO `sysmaterialmanagement` VALUES (66, '1001010605', '', '', '', 'DN100', '', 'super', '2019-08-17 11:15:03', 46);
INSERT INTO `sysmaterialmanagement` VALUES (67, '1001010606', '', '', '', 'DN150', '', 'super', '2019-08-17 11:15:06', 46);
INSERT INTO `sysmaterialmanagement` VALUES (74, '1002', '乐清中凯', '', '', '', '', 'super', '2019-07-16 08:48:43', 1);
INSERT INTO `sysmaterialmanagement` VALUES (75, '100201', '', '阀门', '', '', '', 'super', '2019-07-16 09:01:24', 74);
INSERT INTO `sysmaterialmanagement` VALUES (78, '10020101', '', '', '快关低压角阀', '', '', 'super', '2019-08-17 11:20:46', 75);
INSERT INTO `sysmaterialmanagement` VALUES (79, '1002010101', '', '', '', 'DN25', '', 'super', '2019-08-17 11:21:54', 78);
INSERT INTO `sysmaterialmanagement` VALUES (80, '1002010102', '', '', '', 'DN 40', '', 'super', '2019-08-17 11:21:56', 78);
INSERT INTO `sysmaterialmanagement` VALUES (81, '1002010103', '', '', '', 'DN 50', '', 'super', '2019-08-17 11:21:58', 78);
INSERT INTO `sysmaterialmanagement` VALUES (82, '1002010104', '', '', '', 'DN80', '', 'super', '2019-08-17 11:22:01', 78);
INSERT INTO `sysmaterialmanagement` VALUES (83, '1002010105', '', '', '', 'DN100', '', 'super', '2019-08-17 11:22:04', 78);
INSERT INTO `sysmaterialmanagement` VALUES (84, '1002010106', '', '', '', 'DN150', '', 'super', '2019-08-17 11:22:06', 78);
INSERT INTO `sysmaterialmanagement` VALUES (85, '10020102', '', '', '快关低压直阀', '', '', 'super', '2019-08-17 11:20:49', 75);
INSERT INTO `sysmaterialmanagement` VALUES (86, '10020103', '', '', '快关中压直阀', '', '', 'super', '2019-08-17 11:20:51', 75);
INSERT INTO `sysmaterialmanagement` VALUES (87, '10020104', '', '', '慢关球阀', '', '', 'super', '2019-08-17 11:20:54', 75);
INSERT INTO `sysmaterialmanagement` VALUES (88, '1002010201', '', '', '', 'DN25', '', 'super', '2019-08-17 11:23:55', 85);
INSERT INTO `sysmaterialmanagement` VALUES (89, '1002010202', '', '', '', 'DN32', '', 'super', '2019-08-17 11:23:58', 85);
INSERT INTO `sysmaterialmanagement` VALUES (90, '1002010203', '', '', '', 'DN50', '', 'super', '2019-08-17 11:24:01', 85);
INSERT INTO `sysmaterialmanagement` VALUES (91, '1002010204', '', '', '', 'DN80', '', 'super', '2019-08-17 11:24:03', 85);
INSERT INTO `sysmaterialmanagement` VALUES (92, '1002010205', '', '', '', 'DN100', '', 'super', '2019-08-17 11:24:06', 85);
INSERT INTO `sysmaterialmanagement` VALUES (93, '1002010206', '', '', '', 'DN150', '', 'super', '2019-08-17 11:24:08', 85);
INSERT INTO `sysmaterialmanagement` VALUES (94, '1002010207', '', '', '', 'DN200', '', 'super', '2019-08-17 11:24:11', 85);
INSERT INTO `sysmaterialmanagement` VALUES (95, '1002010301', '', '', '', 'DN25', '', 'super', '2019-08-17 11:25:06', 86);
INSERT INTO `sysmaterialmanagement` VALUES (96, '1002010302', '', '', '', 'DN40', '', 'super', '2019-08-17 11:25:09', 86);
INSERT INTO `sysmaterialmanagement` VALUES (97, '1002010303', '', '', '', 'DN50', '', 'super', '2019-08-17 11:25:11', 86);
INSERT INTO `sysmaterialmanagement` VALUES (98, '1002010304', '', '', '', 'DN80', '', 'super', '2019-08-17 11:25:15', 86);
INSERT INTO `sysmaterialmanagement` VALUES (99, '1002010305', '', '', '', 'DN100', '', 'super', '2019-08-17 11:25:18', 86);
INSERT INTO `sysmaterialmanagement` VALUES (100, '1002010306', '', '', '', 'DN150', '', 'super', '2019-08-17 11:25:22', 86);
INSERT INTO `sysmaterialmanagement` VALUES (101, '1002010401', '', '', '', 'DN150', '', 'super', '2019-08-17 11:26:44', 87);
INSERT INTO `sysmaterialmanagement` VALUES (102, '1002010402', '', '', '', 'DN200', '', 'super', '2019-08-17 11:26:46', 87);
INSERT INTO `sysmaterialmanagement` VALUES (103, '1002010403', '', '', '', 'DN250', '', 'super', '2019-08-17 11:26:49', 87);
INSERT INTO `sysmaterialmanagement` VALUES (104, '1002010404', '', '', '', 'DN300', '', 'super', '2019-08-17 11:26:52', 87);
INSERT INTO `sysmaterialmanagement` VALUES (105, '1002010405', '', '', '', 'DN350', '', 'super', '2019-08-17 11:26:54', 87);
INSERT INTO `sysmaterialmanagement` VALUES (106, '1002010406', '', '', '', 'DN400', '', 'super', '2019-08-17 11:26:57', 87);
INSERT INTO `sysmaterialmanagement` VALUES (107, '1003', '丹东热工', '', '', '', '', 'super', '2019-07-22 15:01:29', 1);
INSERT INTO `sysmaterialmanagement` VALUES (108, '100301', '', '皮膜表', '', '', '', 'super', '2019-08-17 11:27:44', 107);
INSERT INTO `sysmaterialmanagement` VALUES (109, '10030101', '', '', '钢壳', '', '', 'super', '2019-08-17 11:28:47', 108);
INSERT INTO `sysmaterialmanagement` VALUES (110, '1003010101', '', '', '', '1.6方', '', 'super', '2019-08-17 11:29:43', 109);
INSERT INTO `sysmaterialmanagement` VALUES (111, '1003010102', '', '', '', '2.5方', '', 'super', '2019-08-17 11:29:46', 109);
INSERT INTO `sysmaterialmanagement` VALUES (112, '1003010103', '', '', '', '4.0方', '', 'super', '2019-08-17 11:29:48', 109);
INSERT INTO `sysmaterialmanagement` VALUES (113, '10030102', '', '', '钢壳低温', '', '', 'super', '2019-08-17 11:28:49', 108);
INSERT INTO `sysmaterialmanagement` VALUES (114, '1003010104', '', '', '', '6方', '', 'super', '2019-08-17 11:29:51', 109);
INSERT INTO `sysmaterialmanagement` VALUES (115, '1003010105', '', '', '', '10方', '', 'super', '2019-08-17 11:29:53', 109);
INSERT INTO `sysmaterialmanagement` VALUES (116, '1003010106', '', '', '', '16方', '', 'super', '2019-08-17 11:29:55', 109);
INSERT INTO `sysmaterialmanagement` VALUES (117, '1003010107', '', '', '', '25方', '', 'super', '2019-08-17 11:29:58', 109);
INSERT INTO `sysmaterialmanagement` VALUES (118, '1003010108', '', '', '', '40方', '', 'super', '2019-08-17 11:30:02', 109);
INSERT INTO `sysmaterialmanagement` VALUES (121, '1003010201', '', '', '', '1.6方', '', 'super', '2019-08-17 11:31:16', 113);
INSERT INTO `sysmaterialmanagement` VALUES (122, '1003010202', '', '', '', '2.5方', '', 'super', '2019-08-17 11:31:19', 113);
INSERT INTO `sysmaterialmanagement` VALUES (123, '1003010203', '', '', '', '4.0方', '', 'super', '2019-08-17 11:31:21', 113);
INSERT INTO `sysmaterialmanagement` VALUES (124, '10030103', '', '', '铝壳', '', '', 'super', '2019-08-17 11:28:55', 108);
INSERT INTO `sysmaterialmanagement` VALUES (125, '1003010301', '', '', '', '2.5方', '', 'super', '2019-08-17 11:31:44', 124);
INSERT INTO `sysmaterialmanagement` VALUES (126, '10030104', '', '', '铝壳低温', '', '', 'super', '2019-08-17 11:28:58', 108);
INSERT INTO `sysmaterialmanagement` VALUES (127, '1003010401', '', '', '', '1.6方', '', 'super', '2019-08-17 11:32:39', 126);
INSERT INTO `sysmaterialmanagement` VALUES (128, '1004', '江阴仪表', '', '', '', '', 'super', '2019-07-22 15:27:14', 1);
INSERT INTO `sysmaterialmanagement` VALUES (129, '100401', '', '皮膜表', '', '', '', 'super', '2019-08-17 11:37:44', 128);
INSERT INTO `sysmaterialmanagement` VALUES (130, '10040101', '', '', '铝壳', '', '', 'super', '2019-08-17 11:37:49', 129);
INSERT INTO `sysmaterialmanagement` VALUES (131, '1004010101', '', '', '', '1.6方', '', 'super', '2019-08-17 11:37:54', 130);
INSERT INTO `sysmaterialmanagement` VALUES (132, '1004010102', '', '', '', '2.5方', '', 'super', '2019-08-17 11:37:57', 130);
INSERT INTO `sysmaterialmanagement` VALUES (137, '1001010508', '', '', '', 'DN40', '', 'super', '2019-08-17 11:14:22', 44);
INSERT INTO `sysmaterialmanagement` VALUES (138, '1001010607', '', '', '', 'DN32', '', 'super', '2019-08-17 11:15:55', 46);
INSERT INTO `sysmaterialmanagement` VALUES (139, '1002010107', '', '', '', 'DN32', '', 'super', '2019-08-17 11:22:55', 78);
INSERT INTO `sysmaterialmanagement` VALUES (140, '1002010307', '', '', '', 'DN32', '', 'super', '2019-08-17 11:25:46', 86);
INSERT INTO `sysmaterialmanagement` VALUES (141, '1002010208', '', '', '', 'DN40', '', 'super', '2019-08-17 11:24:26', 85);
INSERT INTO `sysmaterialmanagement` VALUES (142, '1005', '宝得科技', '', '', '', '', 'super', '2019-07-16 10:10:39', 1);
INSERT INTO `sysmaterialmanagement` VALUES (143, '100501', '', '主板', '', '', '', 'super', '2019-08-17 11:38:22', 142);
INSERT INTO `sysmaterialmanagement` VALUES (144, '10050101', '', '', '民用表用', '', '', 'super', '2019-08-17 11:38:38', 143);
INSERT INTO `sysmaterialmanagement` VALUES (145, '10050102', '', '', '工商业用', '', '', 'super', '2019-08-17 11:38:40', 143);
INSERT INTO `sysmaterialmanagement` VALUES (146, '1005010101', '', '', '', 'IC卡V1.19', '版本号4.01', 'super', '2019-08-17 11:39:10', 144);
INSERT INTO `sysmaterialmanagement` VALUES (147, '1005010102', '', '', '', '远传IC卡V1.19', '版本号2.10', 'super', '2019-08-17 11:39:13', 144);
INSERT INTO `sysmaterialmanagement` VALUES (148, '1005010103', '', '', '', '远传IC卡V1.19（滨海）', '版本号2.01滨海', 'super', '2019-08-17 11:39:15', 144);
INSERT INTO `sysmaterialmanagement` VALUES (149, '1005010201', '', '', '', 'IC卡V1.4', '', 'super', '2019-08-17 11:39:36', 145);
INSERT INTO `sysmaterialmanagement` VALUES (150, '1005010202', '', '', '', '远传IC卡V1.05', '', 'super', '2019-08-17 11:39:38', 145);
INSERT INTO `sysmaterialmanagement` VALUES (151, '1006', '平衡线', '', '', '', '', 'super', '2019-07-16 10:22:03', 1);
INSERT INTO `sysmaterialmanagement` VALUES (152, '100601', '', '主板', '', '', '', 'super', '2019-08-17 11:40:14', 151);
INSERT INTO `sysmaterialmanagement` VALUES (153, '10060101', '', '', '民用表用', '', '', 'super', '2019-08-17 11:40:22', 152);
INSERT INTO `sysmaterialmanagement` VALUES (154, '10060102', '', '', '控制主板', '', '', 'super', '2019-08-17 11:40:30', 152);
INSERT INTO `sysmaterialmanagement` VALUES (155, '1006010101', '', '', '', '移动NB-IOT', '', 'super', '2019-08-17 11:41:45', 153);
INSERT INTO `sysmaterialmanagement` VALUES (157, '1006010102', '', '', '', '电信NB-IOT', '', 'super', '2019-08-17 11:41:50', 153);
INSERT INTO `sysmaterialmanagement` VALUES (161, '1007', '青岛积成', '', '', '', '', 'super', '2019-07-16 10:29:16', 1);
INSERT INTO `sysmaterialmanagement` VALUES (162, '100701', '', '主板', '', '', '', 'super', '2019-08-17 11:46:50', 161);
INSERT INTO `sysmaterialmanagement` VALUES (164, '1008', '长沙太阳人', '', '', '', '', 'super', '2019-07-22 15:42:37', 1);
INSERT INTO `sysmaterialmanagement` VALUES (165, '100801', '', '显示屏', '', '', '', 'super', '2019-08-17 11:48:29', 164);
INSERT INTO `sysmaterialmanagement` VALUES (168, '100602', '', '显示屏', '', '', '', 'super', '2019-08-17 11:45:26', 151);
INSERT INTO `sysmaterialmanagement` VALUES (170, '100202', '', '控制盒', '', '', '', 'super', '2019-08-17 11:35:20', 74);
INSERT INTO `sysmaterialmanagement` VALUES (171, '10020201', '', '', '工商业用', '', '', 'super', '2019-08-17 11:35:44', 170);
INSERT INTO `sysmaterialmanagement` VALUES (172, '10020202', '', '', '民用表用', '', '', 'super', '2019-08-17 11:35:52', 170);
INSERT INTO `sysmaterialmanagement` VALUES (173, '1002020201', '', '', '', '江阴', '', 'super', '2019-08-17 11:36:19', 172);
INSERT INTO `sysmaterialmanagement` VALUES (174, '1002020202', '', '', '', '丹东铝壳', '', 'super', '2019-08-17 11:36:22', 172);
INSERT INTO `sysmaterialmanagement` VALUES (175, '1009', '星达工艺', '', '', '', '', 'super', '2019-08-07 09:59:18', 1);
INSERT INTO `sysmaterialmanagement` VALUES (176, '100901', '', '控制盒', '', '', '', 'super', '2019-08-17 11:50:14', 175);
INSERT INTO `sysmaterialmanagement` VALUES (177, '10090101', '', '', '民用表用', '', '', 'super', '2019-08-17 11:50:54', 176);
INSERT INTO `sysmaterialmanagement` VALUES (178, '1009010101', '', '', '', '钢壳IC卡', '', 'super', '2019-08-17 11:53:43', 177);
INSERT INTO `sysmaterialmanagement` VALUES (179, '1009010102', '', '', '', '钢壳远传IC卡', '', 'super', '2019-08-17 11:53:46', 177);
INSERT INTO `sysmaterialmanagement` VALUES (180, '1010', '史吉芳', '', '', '', '', 'super', '2019-07-16 11:23:04', 1);
INSERT INTO `sysmaterialmanagement` VALUES (181, '101001', '', '取样板', '', '', '', 'super', '2019-08-17 11:54:18', 180);
INSERT INTO `sysmaterialmanagement` VALUES (182, '10100101', '', '', '工商业用', '', '', 'super', '2019-08-17 11:54:22', 181);
INSERT INTO `sysmaterialmanagement` VALUES (183, '10100102', '', '', '钢壳表取样板', '', '', 'super', '2019-08-17 11:54:24', 181);
INSERT INTO `sysmaterialmanagement` VALUES (184, '10100103', '', '', '铝壳表取样板', '', '', 'super', '2019-08-17 11:54:26', 181);
INSERT INTO `sysmaterialmanagement` VALUES (185, '1006010201', '', '', '', '2GTHGY-501', '', 'super', '2019-08-17 11:42:13', 154);
INSERT INTO `sysmaterialmanagement` VALUES (186, '10060103', '', '', '通讯主板', '', '', 'super', '2019-08-17 11:40:49', 152);
INSERT INTO `sysmaterialmanagement` VALUES (187, '1006010301', '', '', '', '2GTHGY-301', '', 'super', '2019-08-17 11:43:02', 186);
INSERT INTO `sysmaterialmanagement` VALUES (188, '1006010302', '', '', '', '移动NB-IOT', '', 'super', '2019-08-17 11:43:06', 186);
INSERT INTO `sysmaterialmanagement` VALUES (189, '1006010303', '', '', '', '电信NB-IOT', '', 'super', '2019-08-17 11:43:09', 186);
INSERT INTO `sysmaterialmanagement` VALUES (190, '10060104', '', '', '485主板', '', '', 'super', '2019-08-17 11:40:57', 152);
INSERT INTO `sysmaterialmanagement` VALUES (191, '1011', '宁波志力', '', '', '', '', 'super', '2019-07-16 15:57:44', 1);
INSERT INTO `sysmaterialmanagement` VALUES (192, '101101', '', '其他', '', '', '', 'super', '2019-08-17 11:54:51', 191);
INSERT INTO `sysmaterialmanagement` VALUES (193, '10110101', '', '', '干簧管', '', '', 'super', '2019-08-17 11:55:00', 192);
INSERT INTO `sysmaterialmanagement` VALUES (194, '1012', '慈溪烨鑫', '', '', '', '', 'super', '2019-07-16 16:01:21', 1);
INSERT INTO `sysmaterialmanagement` VALUES (195, '101201', '', '其他', '', '', '', 'super', '2019-08-17 11:55:18', 194);
INSERT INTO `sysmaterialmanagement` VALUES (196, '10120101', '', '', '卡座', '', '', 'super', '2019-08-17 11:55:21', 195);
INSERT INTO `sysmaterialmanagement` VALUES (197, '1012010101', '', '', '', 'KF-013', '无上压口', 'super', '2019-08-17 11:55:34', 196);
INSERT INTO `sysmaterialmanagement` VALUES (198, '1012010102', '', '', '', 'KF-013', '', 'super', '2019-08-17 11:55:38', 196);
INSERT INTO `sysmaterialmanagement` VALUES (199, '1012010103', '', '', '', 'F010B-MF', '常开', 'super', '2019-08-17 11:55:42', 196);
INSERT INTO `sysmaterialmanagement` VALUES (200, '1013', '山东瀚岳', '', '', '', '', 'super', '2019-07-16 16:06:39', 1);
INSERT INTO `sysmaterialmanagement` VALUES (201, '101301', '', '其他', '', '', '', 'super', '2019-08-17 11:55:55', 200);
INSERT INTO `sysmaterialmanagement` VALUES (202, '10130101', '', '', 'IC卡', '', '', 'super', '2019-08-17 11:56:03', 201);
INSERT INTO `sysmaterialmanagement` VALUES (203, '1013010101', '', '', '', '102', '', 'super', '2019-08-17 11:56:24', 202);
INSERT INTO `sysmaterialmanagement` VALUES (204, '1013010102', '', '', '', '4442', '', 'super', '2019-08-17 11:56:27', 202);
INSERT INTO `sysmaterialmanagement` VALUES (205, '1014', '扬州雄鸡', '', '', '', '', 'super', '2019-07-16 16:13:14', 1);
INSERT INTO `sysmaterialmanagement` VALUES (206, '1015', '超越电子', '', '', '', '', 'super', '2019-07-16 16:13:43', 1);
INSERT INTO `sysmaterialmanagement` VALUES (207, '10130102', '', '', '读写器', '', '', 'super', '2019-08-17 11:58:05', 201);
INSERT INTO `sysmaterialmanagement` VALUES (208, '1016', '戎天', '', '', '', '', 'super', '2019-07-16 16:19:27', 1);
INSERT INTO `sysmaterialmanagement` VALUES (209, '101601', '', '其他', '', '', '', 'super', '2019-08-17 12:00:15', 208);
INSERT INTO `sysmaterialmanagement` VALUES (210, '10160101', '', '', '锂电池', '', '', 'super', '2019-08-17 12:00:33', 209);
INSERT INTO `sysmaterialmanagement` VALUES (211, '1016010101', '', '', '', 'LS17500TX-L', '', 'super', '2019-08-17 12:00:38', 210);
INSERT INTO `sysmaterialmanagement` VALUES (212, '1017', '伟宁', '', '', '', '', 'super', '2019-07-16 16:21:15', 1);
INSERT INTO `sysmaterialmanagement` VALUES (213, '101701', '', '其他', '', '', '', 'super', '2019-08-17 12:01:13', 212);
INSERT INTO `sysmaterialmanagement` VALUES (214, '10170101', '', '', '纸箱', '', '', 'super', '2019-08-17 12:01:16', 213);
INSERT INTO `sysmaterialmanagement` VALUES (215, '101401', '', '其他', '', '', '', 'super', '2019-08-17 11:58:43', 205);
INSERT INTO `sysmaterialmanagement` VALUES (216, '101501', '', '其他', '', '', '', 'super', '2019-08-17 11:59:10', 206);
INSERT INTO `sysmaterialmanagement` VALUES (217, '10150101', '', '', '工业表线束', '', '', 'super', '2019-08-17 11:59:22', 216);
INSERT INTO `sysmaterialmanagement` VALUES (218, '10150102', '', '', '取样线束', '', '', 'super', '2019-08-17 11:59:24', 216);
INSERT INTO `sysmaterialmanagement` VALUES (219, '10150103', '', '', '6芯线束', '', '', 'super', '2019-08-17 11:59:28', 216);
INSERT INTO `sysmaterialmanagement` VALUES (220, '10150104', '', '', '7芯线束', '', '', 'super', '2019-08-17 11:59:32', 216);
INSERT INTO `sysmaterialmanagement` VALUES (221, '10150105', '', '', '10芯线束', '', '', 'super', '2019-08-17 11:59:36', 216);
INSERT INTO `sysmaterialmanagement` VALUES (222, '10150106', '', '', '单头2芯阀门线', '', '', 'super', '2019-08-17 11:59:41', 216);
INSERT INTO `sysmaterialmanagement` VALUES (223, '10150107', '', '', '双头2芯阀门线', '', '', 'super', '2019-08-17 11:59:44', 216);
INSERT INTO `sysmaterialmanagement` VALUES (224, '1018', '天和', '', '', '', '', 'super', '2019-07-17 13:59:01', 1);
INSERT INTO `sysmaterialmanagement` VALUES (225, '101801', '', '其他', '', '', '', 'super', '2019-08-17 12:01:32', 224);
INSERT INTO `sysmaterialmanagement` VALUES (226, '10180101', '', '', '灰排线', '', '', 'super', '2019-08-17 12:01:35', 225);
INSERT INTO `sysmaterialmanagement` VALUES (227, '1006010202', '', '', '', 'IC卡V1.03', '', 'super', '2019-08-17 11:42:23', 154);
INSERT INTO `sysmaterialmanagement` VALUES (228, '1006010203', '', '', '', '金额V1.01', '', 'super', '2019-08-17 11:42:27', 154);
INSERT INTO `sysmaterialmanagement` VALUES (229, '1019', '鸿鹄', '', '', '', '', 'super', '2019-07-17 14:10:59', 1);
INSERT INTO `sysmaterialmanagement` VALUES (230, '101901', '', '主板', '', '', '', 'super', '2019-08-17 12:01:50', 229);
INSERT INTO `sysmaterialmanagement` VALUES (231, '10190101', '', '', '民用', '', '', 'super', '2019-08-17 12:01:55', 230);
INSERT INTO `sysmaterialmanagement` VALUES (232, '1019010101', '', '', '', '远传线路板', '', 'super', '2019-08-17 12:02:01', 231);
INSERT INTO `sysmaterialmanagement` VALUES (233, '10060201', '', '', '显示屏', '', '', 'super', '2019-08-17 11:46:02', 168);
INSERT INTO `sysmaterialmanagement` VALUES (234, '1006020101', '', '', '', '501', '', 'super', '2019-08-17 11:46:08', 233);
INSERT INTO `sysmaterialmanagement` VALUES (235, '10070101', '', '', '民用主板', '', '', 'super', '2019-08-17 11:47:47', 162);
INSERT INTO `sysmaterialmanagement` VALUES (236, '1007010101', '', '', '', '电信NB-IOT', '', 'super', '2019-08-17 11:48:02', 235);
INSERT INTO `sysmaterialmanagement` VALUES (237, '10080101', '', '', '显示屏', '', '', 'super', '2019-08-17 11:49:13', 165);
INSERT INTO `sysmaterialmanagement` VALUES (238, '1008010101', '', '', '', '0915', '', 'super', '2019-08-17 11:49:20', 237);
INSERT INTO `sysmaterialmanagement` VALUES (239, '1008010102', '', '', '', '1026', '', 'super', '2019-08-17 11:49:24', 237);
INSERT INTO `sysmaterialmanagement` VALUES (240, '1006010401', '', '', '', 'test', '', 'super', '2019-08-17 11:44:03', 190);
INSERT INTO `sysmaterialmanagement` VALUES (241, '1003010302', '', '', '', '1.6方', '', 'super', '2019-08-17 11:32:03', 124);
INSERT INTO `sysmaterialmanagement` VALUES (242, '1003010402', '', '', '', '2.5方', '', 'super', '2019-08-17 11:32:44', 126);
INSERT INTO `sysmaterialmanagement` VALUES (243, '10140101', '', '', '电池', '', '', 'super', '2019-08-17 11:58:53', 215);

-- ----------------------------
-- Table structure for syspurchaser
-- ----------------------------
DROP TABLE IF EXISTS `syspurchaser`;
CREATE TABLE `syspurchaser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `local` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `purchaserNums` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `purchaserName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gasGroup` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `contacts` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ipAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ipPort` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `localMore` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operator` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operatorTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of syspurchaser
-- ----------------------------
INSERT INTO `syspurchaser` VALUES (47, '天津', 'CS5001', '天津李月', '', '李月', '', '', '', '/', '天津', '', 'super', '2019-07-12 15:53:48');
INSERT INTO `syspurchaser` VALUES (48, '天津', 'CS5002', '天津王三刚', '', '王三刚', '', '', '', '/', '天津', '', 'super', '2019-07-12 15:53:57');
INSERT INTO `syspurchaser` VALUES (49, '天津', 'CS5003', '天津绿州燃气', '', '', '', '', '', '/', '', '', 'super', '2019-08-07 11:13:47');
INSERT INTO `syspurchaser` VALUES (50, '天津', 'CS5004', '天津京州燃气', '', '', '', '', '', '/', '', '', 'super', '2019-08-07 11:14:09');
INSERT INTO `syspurchaser` VALUES (51, '天津', 'CS5005', '天津德泉商贸', '', '', '', '', '', '/', '', '', 'super', '2019-08-07 11:14:55');
INSERT INTO `syspurchaser` VALUES (52, '天津', 'CS5006', '天津新势力能源', '', '', '', '', '', '/', '', '', 'super', '2019-08-07 11:15:30');

-- ----------------------------
-- Table structure for syssupplier
-- ----------------------------
DROP TABLE IF EXISTS `syssupplier`;
CREATE TABLE `syssupplier`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `local` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `supplierNums` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `supplierName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `contacts` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `localMore` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operator` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `operatorTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of syssupplier
-- ----------------------------
INSERT INTO `syssupplier` VALUES (49, '浙江', 'GS1001', '湖州金辰', '张翊岚', '', '/', '浙江湖州湖州金辰', '', 'super', '2019-07-29 13:13:32');
INSERT INTO `syssupplier` VALUES (51, '浙江', 'GS1002', '乐清中凯', '郑龙永', '', '/', '浙江乐清乐清中凯', '', 'super', '2019-07-29 13:13:03');
INSERT INTO `syssupplier` VALUES (52, '辽宁', 'GS1003', '丹东热工', '李玉岐', '', '/', '辽宁丹东热工', '', 'super', '2019-07-22 14:58:16');
INSERT INTO `syssupplier` VALUES (53, '江阴', 'GS1004', '江阴仪表', '', '', '/', '', '', 'super', '2019-07-22 15:29:40');
INSERT INTO `syssupplier` VALUES (54, '深圳', 'GS1005', '宝得科技', '张易炫', '', '/', '', '', 'super', '2019-07-22 15:32:07');
INSERT INTO `syssupplier` VALUES (55, '宁波', 'GS1006', '平衡线', '任伟义', '', '/', '', '', 'super', '2019-07-22 15:38:13');
INSERT INTO `syssupplier` VALUES (56, '山东', 'GS1007', '青岛积成', '', '', '/', '', '', 'super', '2019-07-22 15:40:03');
INSERT INTO `syssupplier` VALUES (57, '湖南', 'GS1008', '长沙太阳人', '', '', '/', '', '', 'super', '2019-07-22 15:43:20');
INSERT INTO `syssupplier` VALUES (58, '浙江乐清', 'GS1009', '星达工艺', '', '', '/', '', '', 'super', '2019-07-24 15:03:05');
INSERT INTO `syssupplier` VALUES (59, '山东', 'GS1010', '史吉芳', '', '', '/', '', '', 'super', '2019-08-07 10:33:16');
INSERT INTO `syssupplier` VALUES (60, '宁波', 'GS1011', '宁波志力', '', '', '/', '', '', 'super', '2019-08-07 11:02:42');
INSERT INTO `syssupplier` VALUES (61, '浙江', 'GS1012', '慈溪烨鑫', '', '', '/', '', '', 'super', '2019-08-07 11:03:37');
INSERT INTO `syssupplier` VALUES (62, '山东', 'GS1013', '山东瀚岳', '', '', '/', '', '', 'super', '2019-08-07 11:04:51');
INSERT INTO `syssupplier` VALUES (63, '江苏', 'GS1014', '扬州雄鸡', '', '', '/', '', '', 'super', '2019-08-07 11:05:38');
INSERT INTO `syssupplier` VALUES (64, '浙江乐清', 'GS1015', '超越电子', '', '', '/', '', '', 'super', '2019-08-07 11:07:12');
INSERT INTO `syssupplier` VALUES (65, '上海', 'GS1016', '戎天', '', '', '/', '', '', 'super', '2019-08-07 11:08:08');
INSERT INTO `syssupplier` VALUES (66, '山东济宁', 'GS1017', '伟宁', '', '', '/', '', '', 'super', '2019-08-07 11:10:02');
INSERT INTO `syssupplier` VALUES (67, '山东济宁', 'GS1018', '天和', '', '', '/', '', '', 'super', '2019-08-07 11:10:22');
INSERT INTO `syssupplier` VALUES (68, '浙江杭州', 'GS1019', '鸿鹄', '', '', '/', '', '', 'super', '2019-08-07 11:10:56');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `testpassword` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (21, 'sun', '12313');
INSERT INTO `test` VALUES (22, 'sun', '12313');
INSERT INTO `test` VALUES (23, 'sun', '12313');
INSERT INTO `test` VALUES (24, 'sun', '12313');
INSERT INTO `test` VALUES (25, 'sun', '12313');
INSERT INTO `test` VALUES (26, 'sun', '12313');
INSERT INTO `test` VALUES (27, 'sun', '12313');
INSERT INTO `test` VALUES (28, 'sun', '12313');
INSERT INTO `test` VALUES (29, 'sun', '12313');
INSERT INTO `test` VALUES (30, 'sun', '12313');
INSERT INTO `test` VALUES (31, 'sun', '12313');
INSERT INTO `test` VALUES (32, 'sun', '12313');
INSERT INTO `test` VALUES (33, 'sun', '12313');
INSERT INTO `test` VALUES (34, 'sun', '12313');
INSERT INTO `test` VALUES (35, 'sun', '12313');
INSERT INTO `test` VALUES (36, 'sun', '12313');
INSERT INTO `test` VALUES (37, 'sun', '12313');
INSERT INTO `test` VALUES (38, 'sun', '12313');
INSERT INTO `test` VALUES (39, 'sun', '12313');
INSERT INTO `test` VALUES (40, 'sun', '12313');
INSERT INTO `test` VALUES (41, 'sun', '12313');

-- ----------------------------
-- Table structure for thdict
-- ----------------------------
DROP TABLE IF EXISTS `thdict`;
CREATE TABLE `thdict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsType` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsUnit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsStock` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 213 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of thdict
-- ----------------------------
INSERT INTO `thdict` VALUES (1, 0, '00', '天和字典', '/', '/', '/');
INSERT INTO `thdict` VALUES (2, 1, '01', '原材料', '/', '/', '/');
INSERT INTO `thdict` VALUES (3, 1, '02', '半成品', '/', '/', '/');
INSERT INTO `thdict` VALUES (4, 1, '04', '产成品', '/', '/', '/');
INSERT INTO `thdict` VALUES (5, 2, '01-01', '阀门', '/', '/', '/');
INSERT INTO `thdict` VALUES (6, 2, '01-02', '工业表', '/', '/', '/');
INSERT INTO `thdict` VALUES (7, 2, '01-03', '民用表', '/', '/', '/');
INSERT INTO `thdict` VALUES (8, 2, '01-04', '取样板', '/', '/', '/');
INSERT INTO `thdict` VALUES (9, 2, '01-05', '显示屏', '/', '/', '/');
INSERT INTO `thdict` VALUES (10, 2, '01-06', '线路板', '/', '/', '/');
INSERT INTO `thdict` VALUES (11, 2, '01-07', '控制盒', '/', '/', '/');
INSERT INTO `thdict` VALUES (12, 2, '01-08', '其他', '/', '/', '/');
INSERT INTO `thdict` VALUES (13, 3, '02-01-01', '底壳', '/', '/', '/');
INSERT INTO `thdict` VALUES (14, 4, '04-01', '工业表控制器', '/', '/', '/');
INSERT INTO `thdict` VALUES (15, 4, '04-03', '民用表', '/', '/', '/');
INSERT INTO `thdict` VALUES (16, 4, '04-04', 'IC卡膜式公福表', '/', '/', '/');
INSERT INTO `thdict` VALUES (17, 4, '04-05', 'IC流量计', '/', '/', '/');
INSERT INTO `thdict` VALUES (18, 4, '04-09', '物联网膜式公福表', '/', '/', '/');
INSERT INTO `thdict` VALUES (19, 5, '01-01-01', '角阀', '/', '/', '/');
INSERT INTO `thdict` VALUES (20, 5, '01-01-02', '低压直阀', '/', '/', '/');
INSERT INTO `thdict` VALUES (21, 5, '01-01-03', '中压直阀', '/', '/', '/');
INSERT INTO `thdict` VALUES (22, 5, '01-01-04', '球阀', '/', '/', '/');
INSERT INTO `thdict` VALUES (23, 6, '01-02-01', '皮膜表', '/', '/', '/');
INSERT INTO `thdict` VALUES (24, 6, '01-02-02', '流量计', '/', '/', '/');
INSERT INTO `thdict` VALUES (25, 7, '01-03-02', '丹东钢壳', '/', '/', '/');
INSERT INTO `thdict` VALUES (26, 7, '01-03-03', '丹东铝壳', '/', '/', '/');
INSERT INTO `thdict` VALUES (27, 7, '01-03-04', '丹东钢壳低温表', '/', '/', '/');
INSERT INTO `thdict` VALUES (28, 7, '01-03-05', '江阴铝壳表', '/', '/', '/');
INSERT INTO `thdict` VALUES (29, 8, '01-04-01', '工业用取样板', '/', '个', '原材料仓');
INSERT INTO `thdict` VALUES (30, 8, '01-04-02', '丹东钢壳表取样板', '/', '个', '原材料仓');
INSERT INTO `thdict` VALUES (31, 8, '01-04-03', '丹东铝壳低温表取样板', '/', '个', '原材料仓');
INSERT INTO `thdict` VALUES (32, 9, '01-05-01', '0195型', '/', '个', '原材料仓');
INSERT INTO `thdict` VALUES (33, 9, '01-05-02', '1026型', '/', '个', '原材料仓');
INSERT INTO `thdict` VALUES (34, 9, '01-05-03', '501型', '/', '个', '原材料仓');
INSERT INTO `thdict` VALUES (35, 10, '01-06-01', '工业用线路板', 'UEK218', '个', '原材料仓');
INSERT INTO `thdict` VALUES (36, 10, '01-06-02', '民用表用线路板', '/', '个', '原材料仓');
INSERT INTO `thdict` VALUES (37, 10, '01-06-03', '无线远传线路板', '/', '个', '原材料仓');
INSERT INTO `thdict` VALUES (38, 10, '01-06-04', '江阴铝壳表用线路板', '/', '个', '原材料仓');
INSERT INTO `thdict` VALUES (39, 10, '01-06-05', '鸿鹄远传线路板', '/', '个', '原材料仓');
INSERT INTO `thdict` VALUES (40, 10, '01-06-06', '金额工业用线路板', 'UEK219', '个', '原材料仓');
INSERT INTO `thdict` VALUES (41, 10, '01-06-07', '工业用模块', 'THGY-301', '个', '原材料仓');
INSERT INTO `thdict` VALUES (42, 10, '01-06-08', '物联网控制器主板', 'THGY-501', '个', '原材料仓');
INSERT INTO `thdict` VALUES (43, 10, '01-06-09', '深圳线路板', 'SDP-3AP', '个', '原材料仓');
INSERT INTO `thdict` VALUES (44, 10, '01-06-10', '积成NB模块', 'IES-W600', '个', '原材料仓');
INSERT INTO `thdict` VALUES (45, 11, '01-07-01', '工业表控制盒', '/', '套', '原材料仓');
INSERT INTO `thdict` VALUES (46, 11, '01-07-02', '丹东钢壳IC表控制盒', '/', '套', '原材料仓');
INSERT INTO `thdict` VALUES (47, 11, '01-07-03', '丹东钢壳远传表控制盒', '/', '套', '原材料仓');
INSERT INTO `thdict` VALUES (48, 11, '01-07-04', '江阴铝壳表用控制盒', '/', '套', '原材料仓');
INSERT INTO `thdict` VALUES (49, 11, '01-07-05', '丹东铝壳表用控制盒', '/', '套', '原材料仓');
INSERT INTO `thdict` VALUES (50, 12, '01-08-01', '干簧管', '/', '个', '原材料仓');
INSERT INTO `thdict` VALUES (51, 12, '01-08-02', 'CPU', '/', '个', '原材料仓');
INSERT INTO `thdict` VALUES (52, 12, '01-08-05', '卡座', '/', '个', '原材料仓');
INSERT INTO `thdict` VALUES (53, 12, '01-08-06', 'IC卡', '/', '张', '原材料仓');
INSERT INTO `thdict` VALUES (54, 12, '01-08-07', '电池', '/', '节', '原材料仓');
INSERT INTO `thdict` VALUES (55, 12, '01-08-08', '读写器', '/', '台', '原材料仓');
INSERT INTO `thdict` VALUES (56, 12, '01-08-10', '纸箱', '/', '个', '原材料仓');
INSERT INTO `thdict` VALUES (57, 12, '01-08-17', '锂电池', '/', '套', '原材料仓');
INSERT INTO `thdict` VALUES (58, 12, '01-08-18', '江阴表用IC卡座', '/', '套', '原材料仓');
INSERT INTO `thdict` VALUES (59, 12, '01-08-19', '江阴表用线束', '/', '套', '原材料仓');
INSERT INTO `thdict` VALUES (60, 12, '01-08-21', '丹东钢壳表用卡座', '/', '套', '原材料仓');
INSERT INTO `thdict` VALUES (61, 12, '01-08-25', '工业表线束', '/', '套', '原材料仓');
INSERT INTO `thdict` VALUES (62, 12, '01-08-28', '7芯线束', '/', '套', '原材料仓');
INSERT INTO `thdict` VALUES (63, 12, '01-08-29', '10芯线束', '/', '套', '原材料仓');
INSERT INTO `thdict` VALUES (64, 12, '01-08-30', '灰排线', '/', '套', '原材料仓');
INSERT INTO `thdict` VALUES (65, 12, '01-08-31', '单头2芯阀门线', '/', '根', '原材料仓');
INSERT INTO `thdict` VALUES (66, 12, '01-08-32', '双头2芯阀门线', '/', '根', '原材料仓');
INSERT INTO `thdict` VALUES (67, 12, '01-08-23', 'IC卡', '4442', '套', '原材料仓');
INSERT INTO `thdict` VALUES (68, 12, '01-08-24', '丹东铝壳表低温表卡座', 'F010B-MF常开', '套', '原材料仓');
INSERT INTO `thdict` VALUES (69, 12, '01-08-26', '取样线束', '/', '套', '原材料仓');
INSERT INTO `thdict` VALUES (70, 12, '01-08-27', '6芯线束', '/', '套', '原材料仓');
INSERT INTO `thdict` VALUES (71, 19, '01-01-01-001', '角阀', 'DN25', '台', '原材料仓');
INSERT INTO `thdict` VALUES (72, 19, '01-01-01-002', '角阀', 'DN40', '台', '原材料仓');
INSERT INTO `thdict` VALUES (73, 19, '01-01-01-003', '角阀', 'DN50', '台', '原材料仓');
INSERT INTO `thdict` VALUES (74, 19, '01-01-01-004', '角阀', 'DN80', '台', '原材料仓');
INSERT INTO `thdict` VALUES (75, 19, '01-01-01-005', '角阀', 'DN100', '台', '原材料仓');
INSERT INTO `thdict` VALUES (76, 19, '01-01-01-006', '角阀', 'DN150', '台', '原材料仓');
INSERT INTO `thdict` VALUES (77, 20, '01-01-02-001', '低压直阀', 'DN25', '台', '原材料仓');
INSERT INTO `thdict` VALUES (78, 20, '01-01-02-002', '低压直阀', 'DN50', '台', '原材料仓');
INSERT INTO `thdict` VALUES (79, 20, '01-01-02-003', '低压直阀', 'DN80', '台', '原材料仓');
INSERT INTO `thdict` VALUES (80, 20, '01-01-02-004', '低压直阀', 'DN100', '台', '原材料仓');
INSERT INTO `thdict` VALUES (81, 20, '01-01-02-005', '低压直阀', 'DN150', '台', '原材料仓');
INSERT INTO `thdict` VALUES (82, 20, '01-01-00-006', '低压直阀', 'DN200', '台', '原材料仓');
INSERT INTO `thdict` VALUES (83, 21, '01-01-03-001', '中压直阀', 'DN25', '台', '原材料仓');
INSERT INTO `thdict` VALUES (84, 21, '01-01-03-002', '中压直阀', 'DN50', '台', '原材料仓');
INSERT INTO `thdict` VALUES (85, 21, '01-01-03-003', '中压直阀', 'DN80', '台', '原材料仓');
INSERT INTO `thdict` VALUES (86, 21, '01-01-03-004', '中压直阀', 'DN100', '台', '原材料仓');
INSERT INTO `thdict` VALUES (87, 21, '01-01-03-005', '中压直阀', 'DN150', '台', '原材料仓');
INSERT INTO `thdict` VALUES (88, 21, '01-01-03-006', '中压直阀', 'DN40', '台', '原材料仓');
INSERT INTO `thdict` VALUES (89, 22, '01-01-04-001', '球阀', 'DN150', '台', '原材料仓');
INSERT INTO `thdict` VALUES (90, 22, '01-01-04-002', '球阀', 'DN200', '台', '原材料仓');
INSERT INTO `thdict` VALUES (91, 22, '01-01-04-003', '球阀', 'DN250', '台', '原材料仓');
INSERT INTO `thdict` VALUES (92, 22, '01-01-04-004', '球阀', 'DN300', '台', '原材料仓');
INSERT INTO `thdict` VALUES (93, 22, '01-01-04-005', '球阀', 'DN400', '台', '原材料仓');
INSERT INTO `thdict` VALUES (94, 22, '01-01-04-006', '球阀', 'DN350', '台', '原材料仓');
INSERT INTO `thdict` VALUES (95, 23, '01-02-01-001', '丹东6方', '/', '台', '原材料仓');
INSERT INTO `thdict` VALUES (96, 23, '01-02-01-002', '丹东10方', '/', '台', '原材料仓');
INSERT INTO `thdict` VALUES (97, 23, '01-02-01-003', '丹东16方', '/', '台', '原材料仓');
INSERT INTO `thdict` VALUES (98, 23, '01-02-01-004', '丹东25方', '/', '台', '原材料仓');
INSERT INTO `thdict` VALUES (99, 23, '01-02-01-005', '丹东40方', '/', '台', '原材料仓');
INSERT INTO `thdict` VALUES (100, 23, '01-02-01-006', '丹东65方', '/', '台', '原材料仓');
INSERT INTO `thdict` VALUES (101, 23, '01-02-01-007', '丹东100方', '/', '台', '原材料仓');
INSERT INTO `thdict` VALUES (102, 23, '01-02-01-008', '其他型号', '/', '台', '原材料仓');
INSERT INTO `thdict` VALUES (103, 24, '01-02-02-001', '流量计 100方', '/', '台', '原材料仓');
INSERT INTO `thdict` VALUES (104, 24, '01-02-02-002', '流量计 150方', '/', '台', '原材料仓');
INSERT INTO `thdict` VALUES (105, 24, '01-02-02-003', '流量计 65方', '/', '台', '原材料仓');
INSERT INTO `thdict` VALUES (106, 24, '01-02-02-004', '流量计 300方', '/', '台', '原材料仓');
INSERT INTO `thdict` VALUES (107, 24, '01-02-02-005', '流量计 200方', '/', '台', '原材料仓');
INSERT INTO `thdict` VALUES (108, 24, '01-02-02-006', '讯尔涡轮流量计 DN80', 'DN80', '台', '原材料仓');
INSERT INTO `thdict` VALUES (109, 24, '01-02-02-007', '讯尔涡轮流量计 DN40', 'DN40', '台', '原材料仓');
INSERT INTO `thdict` VALUES (110, 24, '01-02-02-008', '讯尔涡轮流量计 DN50', 'DN50', '台', '原材料仓');
INSERT INTO `thdict` VALUES (111, 24, '01-02-02-009', '讯尔涡轮流量计 DN25', 'DN25', '台', '原材料仓');
INSERT INTO `thdict` VALUES (112, 24, '01-02-02-010', '讯尔涡轮流量计 DN100', 'DN100', '台', '原材料仓');
INSERT INTO `thdict` VALUES (113, 24, '01-02-02-011', '讯尔涡轮流量计 DN150', 'DN150', '台', '原材料仓');
INSERT INTO `thdict` VALUES (114, 24, '01-02-02-012', '苍南罗茨流量计 DN50', 'DN50', '台', '原材料仓');
INSERT INTO `thdict` VALUES (115, 25, '01-03-02-001', '丹东钢壳1.6方', '/', '只', '原材料仓');
INSERT INTO `thdict` VALUES (116, 25, '01-03-02-002', '丹东钢壳2.5方', '/', '只', '原材料仓');
INSERT INTO `thdict` VALUES (117, 25, '01-03-02-003', '丹东钢壳4.0方', '/', '只', '原材料仓');
INSERT INTO `thdict` VALUES (118, 26, '01-03-03-001', '丹东铝壳低温1.6方', '/', '只', '原材料仓');
INSERT INTO `thdict` VALUES (119, 26, '01-03-03-002', '丹东铝壳壳2.5方', '/', '只', '原材料仓');
INSERT INTO `thdict` VALUES (120, 27, '01-03-04-001', '丹东钢壳低温表1.6方', '/', '只', '原材料仓');
INSERT INTO `thdict` VALUES (121, 27, '01-03-04-002', '丹东钢壳低温表2.5方', '/', '只', '原材料仓');
INSERT INTO `thdict` VALUES (122, 27, '01-03-04-003', '丹东钢壳低温表4.0方', '/', '只', '原材料仓');
INSERT INTO `thdict` VALUES (123, 28, '01-03-05-001', '江阴铝壳表1.6方', '/', '只', '原材料仓');
INSERT INTO `thdict` VALUES (124, 28, '01-03-05-002', '江阴铝壳表2.5方', '/', '只', '原材料仓');
INSERT INTO `thdict` VALUES (125, 14, '04-01-01', '角阀控制器', '/', '/', '/');
INSERT INTO `thdict` VALUES (126, 14, '04-01-02', '低压直阀控制器', '/', '/', '/');
INSERT INTO `thdict` VALUES (127, 14, '04-01-03', '中压直阀控制器', '/', '/', '/');
INSERT INTO `thdict` VALUES (128, 14, '04-01-04', '球阀控制器', '/', '/', '/');
INSERT INTO `thdict` VALUES (129, 14, '04-01-05', '物联网控制器', '/', '/', '/');
INSERT INTO `thdict` VALUES (130, 15, '04-03-02', 'IC卡丹东表', '/', '/', '/');
INSERT INTO `thdict` VALUES (131, 15, '04-03-03', 'IC卡江阴表', '/', '/', '/');
INSERT INTO `thdict` VALUES (132, 16, '04-04-01', 'IC卡江阴表', '丹东6方', '台', '产品库');
INSERT INTO `thdict` VALUES (133, 16, '04-04-02', 'IC卡江阴表', '丹东10方', '台', '产品库');
INSERT INTO `thdict` VALUES (134, 16, '04-04-03', 'IC卡江阴表', '丹东16方', '台', '产品库');
INSERT INTO `thdict` VALUES (135, 16, '04-04-04', 'IC卡江阴表', '丹东25方', '台', '产品库');
INSERT INTO `thdict` VALUES (136, 16, '04-04-05', 'IC卡江阴表', '丹东40方', '台', '产品库');
INSERT INTO `thdict` VALUES (137, 16, '04-04-06', 'IC卡江阴表', '丹东65方', '台', '产品库');
INSERT INTO `thdict` VALUES (138, 16, '04-04-07', 'IC卡江阴表', '丹东100方', '台', '产品库');
INSERT INTO `thdict` VALUES (139, 18, '04-09-01', '物联网丹东6方', 'TH-6-WL', '台', '产品库');
INSERT INTO `thdict` VALUES (140, 18, '04-09-02', '物联网丹东10方', 'TH-10-WL', '台', '产品库');
INSERT INTO `thdict` VALUES (141, 18, '04-09-03', '物联网丹东16方', 'TH-16-WL', '台', '产品库');
INSERT INTO `thdict` VALUES (142, 18, '04-09-04', '物联网丹东25方', 'TH-25-WL', '台', '产品库');
INSERT INTO `thdict` VALUES (143, 18, '04-09-05', '物联网丹东40方', 'TH-40-WL', '台', '产品库');
INSERT INTO `thdict` VALUES (144, 125, '04-01-01-001', '角阀', 'TH-D-25J', '只', '产品库');
INSERT INTO `thdict` VALUES (145, 125, '04-01-01-002', '角阀', 'TH-D-40J', '只', '产品库');
INSERT INTO `thdict` VALUES (146, 125, '04-01-01-003', '角阀', 'TH-D-50J', '只', '产品库');
INSERT INTO `thdict` VALUES (147, 125, '04-01-01-004', '角阀', 'TH-D-80J', '只', '产品库');
INSERT INTO `thdict` VALUES (148, 125, '04-01-01-005', '角阀', 'TH-D-100J', '只', '产品库');
INSERT INTO `thdict` VALUES (149, 125, '04-01-01-006', '角阀', 'TH-D-150J', '只', '产品库');
INSERT INTO `thdict` VALUES (150, 126, '04-01-02-001', '低压直阀', 'TH-D-25Z', '台', '产品库');
INSERT INTO `thdict` VALUES (151, 126, '04-01-02-002', '低压直阀', 'TH-D-50Z', '台', '产品库');
INSERT INTO `thdict` VALUES (152, 126, '04-01-02-003', '低压直阀', 'TH-D-80Z', '台', '产品库');
INSERT INTO `thdict` VALUES (153, 126, '04-01-02-004', '低压直阀', 'TH-D-100Z', '台', '产品库');
INSERT INTO `thdict` VALUES (154, 126, '04-01-02-005', '低压直阀', 'TH-D-150Z', '台', '产品库');
INSERT INTO `thdict` VALUES (155, 126, '04-01-02-006', '低压直阀', 'TH-D-40Z', '台', '产品库');
INSERT INTO `thdict` VALUES (156, 127, '04-01-03-001', '中压直阀', 'TH-Z-25Z', '台', '产品库');
INSERT INTO `thdict` VALUES (157, 127, '04-01-03-002', '中压直阀', 'TH-Z-50Z', '台', '产品库');
INSERT INTO `thdict` VALUES (158, 127, '04-01-03-003', '中压直阀', 'TH-Z-80Z', '台', '产品库');
INSERT INTO `thdict` VALUES (159, 127, '04-01-03-004', '中压直阀', 'TH-Z-100Z', '台', '产品库');
INSERT INTO `thdict` VALUES (160, 127, '04-01-03-005', '中压直阀', 'TH-Z-150Z', '台', '产品库');
INSERT INTO `thdict` VALUES (161, 127, '04-01-03-006', '中压直阀', 'TH-Z-40Z', '台', '产品库');
INSERT INTO `thdict` VALUES (162, 128, '04-01-04-001', '球阀', 'TH-Z-150', '台', '产品库');
INSERT INTO `thdict` VALUES (163, 128, '04-01-04-002', '球阀', 'TH-Z-200', '台', '产品库');
INSERT INTO `thdict` VALUES (164, 128, '04-01-04-003', '球阀', 'TH-Z-250', '台', '产品库');
INSERT INTO `thdict` VALUES (165, 128, '04-01-04-004', '球阀', 'TH-Z-300', '台', '产品库');
INSERT INTO `thdict` VALUES (166, 128, '04-01-04-005', '球阀', 'TH-Z-400', '台', '产品库');
INSERT INTO `thdict` VALUES (167, 129, '04-01-05-001', '物联网角阀', 'TH-D-25J-W', '台', '产品库');
INSERT INTO `thdict` VALUES (168, 129, '04-01-05-002', '物联网角阀', 'TH-D-40J-W', '台', '产品库');
INSERT INTO `thdict` VALUES (169, 129, '04-01-05-003', '物联网角阀', 'TH-D-50J-W', '台', '产品库');
INSERT INTO `thdict` VALUES (170, 129, '04-01-05-004', '物联网角阀', 'TH-D-80J-W', '台', '产品库');
INSERT INTO `thdict` VALUES (171, 129, '04-01-05-005', '物联网角阀', 'TH-D-100J-W', '台', '产品库');
INSERT INTO `thdict` VALUES (172, 129, '04-01-05-006', '物联网角阀', 'TH-D-150J-W', '台', '产品库');
INSERT INTO `thdict` VALUES (173, 129, '04-01-05-007', '物联网低压直阀', 'TH-D-25Z-W', '台', '产品库');
INSERT INTO `thdict` VALUES (174, 129, '04-01-05-008', '物联网低压直阀', 'TH-D-50Z-W', '台', '产品库');
INSERT INTO `thdict` VALUES (175, 129, '04-01-05-009', '物联网低压直阀', 'TH-D-80Z-W', '台', '产品库');
INSERT INTO `thdict` VALUES (176, 129, '04-01-05-010', '物联网低压直阀', 'TH-D-100Z-W', '台', '产品库');
INSERT INTO `thdict` VALUES (177, 129, '04-01-05-011', '物联网低压直阀', 'TH-D-150Z-W', '台', '产品库');
INSERT INTO `thdict` VALUES (178, 129, '04-01-05-012', '物联网低压直阀', 'TH-D-200Z-W', '台', '产品库');
INSERT INTO `thdict` VALUES (179, 129, '04-01-05-013', '物联网中压直阀', 'TH-Z-25Z-W', '台', '产品库');
INSERT INTO `thdict` VALUES (180, 129, '04-01-05-014', '物联网中压直阀', 'TH-Z-50Z-W', '台', '产品库');
INSERT INTO `thdict` VALUES (181, 129, '04-01-05-015', '物联网中压直阀', 'TH-Z-80Z-W', '台', '产品库');
INSERT INTO `thdict` VALUES (182, 129, '04-01-05-016', '物联网中压直阀', 'TH-Z-100Z-W', '台', '产品库');
INSERT INTO `thdict` VALUES (183, 129, '04-01-05-017', '物联网中压直阀', 'TH-Z-150Z-W', '台', '产品库');
INSERT INTO `thdict` VALUES (184, 129, '04-01-05-018', '物联网球阀', 'TH-Z-150-W', '台', '产品库');
INSERT INTO `thdict` VALUES (185, 129, '04-01-05-019', '物联网球阀', 'TH-Z-200-W', '台', '产品库');
INSERT INTO `thdict` VALUES (186, 129, '04-01-05-020', '物联网球阀', 'TH-Z-250-W', '台', '产品库');
INSERT INTO `thdict` VALUES (187, 129, '04-01-05-021', '物联网球阀', 'TH-Z-300-W', '台', '产品库');
INSERT INTO `thdict` VALUES (188, 129, '04-01-05-022', '物联网球阀', 'TH-Z-400-W', '台', '产品库');
INSERT INTO `thdict` VALUES (189, 130, '04-03-02-001', 'IC丹东钢壳1.6方表', '/', '只', '产品库');
INSERT INTO `thdict` VALUES (190, 130, '04-03-02-002', 'IC丹东钢壳2.5方表', '/', '只', '产品库');
INSERT INTO `thdict` VALUES (191, 130, '04-03-02-003', 'IC丹东钢壳4.0方表', '/', '只', '产品库');
INSERT INTO `thdict` VALUES (192, 130, '04-03-02-004', '远传IC丹东钢壳1.6方表', '/', '只', '产品库');
INSERT INTO `thdict` VALUES (193, 130, '04-03-02-005', '远传IC丹东钢壳2.5方表', '/', '只', '产品库');
INSERT INTO `thdict` VALUES (194, 130, '04-03-02-006', '远传IC丹东钢壳4.0方表', '/', '只', '产品库');
INSERT INTO `thdict` VALUES (195, 130, '04-03-02-007', 'IC丹东铝壳低温1.6方表', '/', '只', '产品库');
INSERT INTO `thdict` VALUES (196, 130, '04-03-02-008', 'IC丹东铝壳低温2.5方表', '/', '只', '产品库');
INSERT INTO `thdict` VALUES (197, 131, '04-03-03-001', 'IC江阴铝壳1.6方表', '/', '只', '产品库');
INSERT INTO `thdict` VALUES (198, 131, '04-03-03-002', 'IC江阴铝壳2.5方表', '/', '只', '产品库');
INSERT INTO `thdict` VALUES (205, 3, '02-01-02', '主板', '/', '/', '/');
INSERT INTO `thdict` VALUES (206, 1, '平衡线', '', '', '', '');
INSERT INTO `thdict` VALUES (208, 206, '主板', '主板', '', '', '');
INSERT INTO `thdict` VALUES (209, 208, '工业IC卡', '主板', 'V1.03', '', '');
INSERT INTO `thdict` VALUES (210, 206, '阀门', '', '', '', '');
INSERT INTO `thdict` VALUES (211, 210, '慢关-球阀-中压-直阀', '慢关-球阀-中压-直阀', 'DN25', '', '');
INSERT INTO `thdict` VALUES (212, 209, '工业IC卡', '工业IC卡', 'v1.04', '', '');

SET FOREIGN_KEY_CHECKS = 1;
