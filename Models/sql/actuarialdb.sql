/*
 Navicat Premium Data Transfer

 Source Server         : asja
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : actuarialdb

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 10/09/2020 11:24:55
*/

CREATE DATABASE  IF NOT EXISTS `actuarialdb`;
USE `actuarialdb`;

-- ----------------------------
-- Table structure for insurance
-- ----------------------------
DROP TABLE IF EXISTS `insurance`;
CREATE TABLE `insurance`  (
  `ins_id` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ins_initiator_id` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ins_type` int(10) NOT NULL,
  `ins_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ins_pay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ins_profit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ins_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ins_id`) USING BTREE,
  INDEX `ins_type`(`ins_type`) USING BTREE,
  CONSTRAINT `ins_type` FOREIGN KEY (`ins_type`) REFERENCES `insurance_type` (`instype_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of insurance
-- ----------------------------
INSERT INTO `insurance` VALUES ('100001', '100001', 0, '测试保险', '100-1000', '10000-100000', NULL);

-- ----------------------------
-- Table structure for insurance_type
-- ----------------------------
DROP TABLE IF EXISTS `insurance_type`;
CREATE TABLE `insurance_type`  (
  `instype_id` int(10) NOT NULL,
  `instype_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`instype_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of insurance_type
-- ----------------------------
INSERT INTO `insurance_type` VALUES (0, '个人保险');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_type` int(10) NOT NULL,
  `user_gender` int(10) NULL DEFAULT NULL,
  `user_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `user_name`(`user_name`) USING BTREE,
  UNIQUE INDEX `user_phone`(`user_phone`) USING BTREE,
  UNIQUE INDEX `user_email`(`user_email`) USING BTREE,
  INDEX `user_type`(`user_type`) USING BTREE,
  CONSTRAINT `user_type` FOREIGN KEY (`user_type`) REFERENCES `user_type` (`usertype_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_type
-- ----------------------------
DROP TABLE IF EXISTS `user_type`;
CREATE TABLE `user_type`  (
  `usertype_id` int(10) NOT NULL,
  `usertype_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`usertype_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_type
-- ----------------------------
INSERT INTO `user_type` VALUES (0, '管理员');
INSERT INTO `user_type` VALUES (1, '普通用户');

SET FOREIGN_KEY_CHECKS = 1;
