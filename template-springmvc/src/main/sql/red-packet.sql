/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : red-packet

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 15/01/2020 17:21:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for red_packet_detail_table
-- ----------------------------
DROP TABLE IF EXISTS `red_packet_detail_table`;
CREATE TABLE `red_packet_detail_table`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `packet_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '红包的主键id，外键',
  `amout` double(255, 0) NOT NULL COMMENT '领取的金额值',
  `createTime` timestamp(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '领取时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for red_packet_table
-- ----------------------------
DROP TABLE IF EXISTS `red_packet_table`;
CREATE TABLE `red_packet_table`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `user_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '外键，红包发送人id',
  `totalNum` int(100) NOT NULL COMMENT '红包总数',
  `restNum` int(100) NOT NULL COMMENT '红包剩余个数',
  `totalAmount` double(255, 2) NOT NULL COMMENT '红包金额',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '红包备注',
  `createTime` timestamp(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_table
-- ----------------------------
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户密码',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户昵称',
  `createTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
