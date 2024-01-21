/*
 Navicat Premium Data Transfer

 Source Server         : MySQL57-Docker
 Source Server Type    : MySQL
 Source Server Version : 50743
 Source Host           : localhost:3306
 Source Schema         : itsource_21

 Target Server Type    : MySQL
 Target Server Version : 50743
 File Encoding         : 65001

 Date: 21/01/2024 16:05:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for flyway_schema_history
-- ----------------------------

-- ----------------------------
-- Table structure for houselist
-- ----------------------------
DROP TABLE IF EXISTS `houselist`;
CREATE TABLE `houselist`  (
                              `houseid` int(11) NOT NULL AUTO_INCREMENT,
                              `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                              `price` double(10, 2) NULL DEFAULT NULL,
                              `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                              `detail` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                              `userlist_id` int(11) NULL DEFAULT NULL,
                              `userlist_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                              PRIMARY KEY (`houseid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of houselist
-- ----------------------------
INSERT INTO `houselist` VALUES (17, '深圳市盐田区沙头角856号4楼', 1300.00, '未出租', '1、不能使用灶火。\n2、基本家电齐全，拎包入住。\n3. 有WIFI', 31, '何小琳');
INSERT INTO `houselist` VALUES (20, '深圳市盐田区大梅沙66号1楼', 900.00, '已出租', '无', 32, '王大锤');
INSERT INTO `houselist` VALUES (21, '深圳市盐田区大梅沙66号3楼', 800.00, '已出租', '无', 29, '周晓二');
INSERT INTO `houselist` VALUES (23, '深圳市龙华新区民塘路绿景公馆1699（南区）', 2000.00, '未出租', '无', NULL, NULL);
INSERT INTO `houselist` VALUES (26, '深圳市盐田区大梅沙96号1楼', 900.00, '未出租', '家电齐全，拎包入住。', NULL, NULL);
INSERT INTO `houselist` VALUES (27, '深圳市盐田区大梅沙909号3楼', 1800.00, '未出租', '无', NULL, NULL);

-- ----------------------------
-- Table structure for paid
-- ----------------------------
DROP TABLE IF EXISTS `paid`;
CREATE TABLE `paid`  (
                         `id` int(11) NOT NULL AUTO_INCREMENT,
                         `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                         `price` double(10, 2) NULL DEFAULT NULL,
                         `date` date NULL DEFAULT NULL,
                         `paydate` date NULL DEFAULT NULL,
                         `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                         `userlist_id` int(11) NULL DEFAULT NULL,
                         `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                         `houseid` int(11) NULL DEFAULT NULL,
                         PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paid
-- ----------------------------
INSERT INTO `paid` VALUES (30, '深圳市盐田区沙头角856号4楼', 1300.00, '2019-04-01', NULL, '何小琳', 31, '未缴', 17);
INSERT INTO `paid` VALUES (31, '深圳市盐田区大梅沙66号1楼', 900.00, '2019-04-01', NULL, '王大锤', 32, '未缴', 20);
INSERT INTO `paid` VALUES (32, '深圳市盐田区大梅沙66号3楼', 800.00, '2019-04-01', NULL, '周晓二', 29, '未缴', 21);
INSERT INTO `paid` VALUES (33, '深圳市盐田区大梅沙66号3楼', 800.00, '2024-01-21', NULL, '周晓二', 29, '已缴', 21);

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule`  (
                             `id` int(11) NOT NULL AUTO_INCREMENT,
                             `date` date NULL DEFAULT NULL,
                             `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                             `time` int(11) NULL DEFAULT NULL COMMENT '公告持续天数',
                             PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES (6, '2019-04-01', '注意及时缴纳本月房租', 7);
INSERT INTO `schedule` VALUES (8, '2019-04-15', '电梯停止使用一周，敬请见谅。', 7);
INSERT INTO `schedule` VALUES (9, '2019-04-15', '本月还未缴纳月租的租客请注意及时缴纳月租。', 7);

-- ----------------------------
-- Table structure for solve
-- ----------------------------
DROP TABLE IF EXISTS `solve`;
CREATE TABLE `solve`  (
                          `id` int(11) NOT NULL AUTO_INCREMENT,
                          `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                          `date` date NULL DEFAULT NULL,
                          `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                          `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                          `userlist_id` int(11) NULL DEFAULT NULL,
                          `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                          `houseid` int(11) NULL DEFAULT NULL,
                          PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of solve
-- ----------------------------
INSERT INTO `solve` VALUES (11, '深圳市盐田区沙头角856号4楼', '2019-04-16', '房门门栓损坏。', '何小琳', 31, '未处理', 17);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
                         `id` int(11) NOT NULL AUTO_INCREMENT,
                         `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                         `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                         `type` int(11) NULL DEFAULT NULL COMMENT '1为管理员，2为普通用户',
                         PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '88888888', 1);
INSERT INTO `user` VALUES (19, '13192664967', '13192664967', 2);
INSERT INTO `user` VALUES (21, '13192665859', '13192665859', 2);
INSERT INTO `user` VALUES (22, '13356998564', '13356998564', 2);
INSERT INTO `user` VALUES (23, '16538276382', '16538276382', 2);

-- ----------------------------
-- Table structure for userlist
-- ----------------------------
DROP TABLE IF EXISTS `userlist`;
CREATE TABLE `userlist`  (
                             `id` int(11) NOT NULL AUTO_INCREMENT,
                             `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                             `idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                             `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                             `userid` int(11) NULL DEFAULT NULL,
                             PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userlist
-- ----------------------------
INSERT INTO `userlist` VALUES (27, '李老铁', '440582199712267459', '13199772826', 1);
INSERT INTO `userlist` VALUES (29, '周晓二', '445215966585236985', '13192664967', 19);
INSERT INTO `userlist` VALUES (31, '何小琳', '440582199512137569', '13192665859', 21);
INSERT INTO `userlist` VALUES (32, '王大锤', '440569199514285698', '13356998564', 22);
INSERT INTO `userlist` VALUES (33, '不良人天巧星', '411466789654627835', '16538276382', 23);

SET FOREIGN_KEY_CHECKS = 1;
