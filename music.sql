/*
 Navicat Premium Data Transfer

 Source Server         : mysever
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : music

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 18/10/2018 14:34:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album`  (
  `albumid` int(100) NOT NULL AUTO_INCREMENT,
  `albname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `data` date NOT NULL,
  `singerid` int(100) NULL DEFAULT NULL,
  PRIMARY KEY (`albumid`) USING BTREE,
  INDEX `fk_album_singer`(`singerid`) USING BTREE,
  CONSTRAINT `fk_album_singer` FOREIGN KEY (`singerid`) REFERENCES `singer` (`singerid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES (1, '《JAY》', '2000-11-06', 1);
INSERT INTO `album` VALUES (2, '《范特西》', '2001-09-14', 1);
INSERT INTO `album` VALUES (3, '《八度空间》', '2002-07-18', 1);
INSERT INTO `album` VALUES (4, '《乐行者》', '2003-04-01', 2);
INSERT INTO `album` VALUES (5, '《因你而在》', '2013-03-13', 2);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `commentid` int(100) NOT NULL AUTO_INCREMENT,
  `ccontent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cdata` date NULL DEFAULT NULL,
  `ctype` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评论类型，动态专辑，歌曲',
  `trendid` int(225) NULL DEFAULT NULL,
  `songid` int(100) NULL DEFAULT NULL,
  `userid` int(100) NULL DEFAULT NULL,
  `albumid` int(100) NULL DEFAULT NULL,
  PRIMARY KEY (`commentid`) USING BTREE,
  INDEX `fk_comment_trend`(`trendid`) USING BTREE,
  INDEX `fk_comment_song`(`songid`) USING BTREE,
  INDEX `fk_comment_user`(`userid`) USING BTREE,
  INDEX `fk_comment_album`(`albumid`) USING BTREE,
  CONSTRAINT `fk_comment_album` FOREIGN KEY (`albumid`) REFERENCES `album` (`albumid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_comment_songid` FOREIGN KEY (`songid`) REFERENCES `song` (`songid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_comment_trendid` FOREIGN KEY (`trendid`) REFERENCES `trend` (`trendid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_comment_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, '233', '2018-09-29', NULL, 1, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for creatls
-- ----------------------------
DROP TABLE IF EXISTS `creatls`;
CREATE TABLE `creatls`  (
  `creatlsid` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`creatlsid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply`  (
  `replyid` int(100) NOT NULL AUTO_INCREMENT,
  `commentid` int(100) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `data` date NULL DEFAULT NULL,
  `userid` int(100) NULL DEFAULT NULL,
  PRIMARY KEY (`replyid`) USING BTREE,
  INDEX `fk_reply_comment`(`commentid`) USING BTREE,
  INDEX `fk_reply_user`(`userid`) USING BTREE,
  CONSTRAINT `fk_replay_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_reply_commentid` FOREIGN KEY (`commentid`) REFERENCES `comment` (`commentid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for singer
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer`  (
  `singerid` int(11) NOT NULL AUTO_INCREMENT,
  `sinname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`singerid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of singer
-- ----------------------------
INSERT INTO `singer` VALUES (1, '周杰伦', '男');
INSERT INTO `singer` VALUES (2, '林俊杰', '男');
INSERT INTO `singer` VALUES (3, '邓紫棋', '女');
INSERT INTO `singer` VALUES (4, '薛之谦', '男');
INSERT INTO `singer` VALUES (5, '梁博', '男');
INSERT INTO `singer` VALUES (6, '王二狗', '男');
INSERT INTO `singer` VALUES (7, '汪苏泷', '男');
INSERT INTO `singer` VALUES (8, '毛不易', '男');
INSERT INTO `singer` VALUES (9, '李荣浩', '男');
INSERT INTO `singer` VALUES (10, '王北车', '男');
INSERT INTO `singer` VALUES (11, '张杰', '男');
INSERT INTO `singer` VALUES (12, '王俊凯', '男');
INSERT INTO `singer` VALUES (13, '那英', '女');
INSERT INTO `singer` VALUES (14, 'Alan  Walker', '');

-- ----------------------------
-- Table structure for singlist
-- ----------------------------
DROP TABLE IF EXISTS `singlist`;
CREATE TABLE `singlist`  (
  `singlistid` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hot` bit(1) NULL DEFAULT NULL,
  `count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`singlistid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of singlist
-- ----------------------------
INSERT INTO `singlist` VALUES (1, '节奏控', b'1', '100.3');
INSERT INTO `singlist` VALUES (2, '寂寞', b'1', '1.4');
INSERT INTO `singlist` VALUES (3, '飙车党必备', b'1', '45.5');
INSERT INTO `singlist` VALUES (4, '少年逐梦，勇敢前行', b'1', '2.16');
INSERT INTO `singlist` VALUES (5, '中国民谣集', b'1', '226');
INSERT INTO `singlist` VALUES (6, '能记住的，永远是你失去的', b'1', '1.1');

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song`  (
  `songid` int(100) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `singerid` int(11) NULL DEFAULT NULL,
  `songlay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '歌词',
  `songpic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '封面',
  `songrigi` bit(20) NULL DEFAULT NULL COMMENT '是否原创',
  `albumid` int(255) NULL DEFAULT NULL,
  `singlistid` int(100) NULL DEFAULT NULL,
  `workid` int(100) NULL DEFAULT NULL,
  `creatlsid` int(255) NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`songid`) USING BTREE,
  INDEX `fk_song_singer`(`singerid`) USING BTREE,
  INDEX `fk_song_album`(`albumid`) USING BTREE,
  INDEX `fk_song_singlist`(`singlistid`) USING BTREE,
  INDEX `fk_song_works`(`workid`) USING BTREE,
  INDEX `fk_song_creatlsid`(`creatlsid`) USING BTREE,
  CONSTRAINT `fk_song_album` FOREIGN KEY (`albumid`) REFERENCES `album` (`albumid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_song_creatlsid` FOREIGN KEY (`creatlsid`) REFERENCES `creatls` (`creatlsid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_song_singer` FOREIGN KEY (`singerid`) REFERENCES `singer` (`singerid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_song_singlist` FOREIGN KEY (`singlistid`) REFERENCES `singlist` (`singlistid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_song_work` FOREIGN KEY (`workid`) REFERENCES `works` (`workid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES (1, '《不能说的秘密》', 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, '港台');
INSERT INTO `song` VALUES (2, '《无可救药》', 11, NULL, NULL, NULL, NULL, 1, NULL, NULL, '内地');
INSERT INTO `song` VALUES (3, '《高尚》', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '内地');
INSERT INTO `song` VALUES (4, '《我的》', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '内地');
INSERT INTO `song` VALUES (5, '《出现》', 13, NULL, NULL, NULL, NULL, 1, NULL, NULL, '内地');
INSERT INTO `song` VALUES (6, '《倒数》', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '港台');
INSERT INTO `song` VALUES (7, '《告白气球》', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '港台');
INSERT INTO `song` VALUES (8, '《Diamond Heart》', 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '欧美');
INSERT INTO `song` VALUES (9, '《完美主义》', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (10, '《星晴》', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (11, '《龙卷风》', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (12, '《对不起》', 1, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (13, '《斗牛》', 1, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (14, '《爷爷泡的茶》', 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (15, '《懦夫》', 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (16, '《暗号》', 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (17, '《就是我》', 2, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (18, '《不懂》', 2, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (19, '《星空下的吻》', 2, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (20, '《因你而在》', 2, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (21, '《飞机》', 2, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (22, '《黑暗骑士》', 2, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for trend
-- ----------------------------
DROP TABLE IF EXISTS `trend`;
CREATE TABLE `trend`  (
  `trendid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `data` date NULL DEFAULT NULL,
  `userid` int(100) NULL DEFAULT NULL,
  PRIMARY KEY (`trendid`) USING BTREE,
  INDEX `fk_trend_user`(`userid`) USING BTREE,
  CONSTRAINT `fk_trend_user` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of trend
-- ----------------------------
INSERT INTO `trend` VALUES (1, '文字控', '我喜欢夏天的绿荫，秋夜的星空，冬日的雪原', '2018-09-28', 1);
INSERT INTO `trend` VALUES (2, '开心一刻', '冷笑话为什么冷，还叫笑话', '2018-09-29', 1);
INSERT INTO `trend` VALUES (3, '梦一场', '梦与睡眠质量 随着现代心理学的进展，对梦的研究越来越深入，千百年笼罩在梦境中的神秘面纱被渐渐撩开，“有梦睡眠有助于大脑健康”', '2018-09-29', 1);
INSERT INTO `trend` VALUES (4, '开心一刻', '开心一刻', '2018-09-29', 1);
INSERT INTO `trend` VALUES (5, '开心一刻', '开心一刻', '2018-09-28', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userid` int(100) NOT NULL AUTO_INCREMENT,
  `uaccount` int(255) NOT NULL,
  `upassword` int(255) NOT NULL,
  `ucallphone` int(255) NULL DEFAULT NULL,
  `uname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `uheadpic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `uattention` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关注',
  `creatlsid` int(100) NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE,
  INDEX `fk_user_creatls`(`creatlsid`) USING BTREE,
  CONSTRAINT `fk_user_creatlsid` FOREIGN KEY (`creatlsid`) REFERENCES `creatls` (`creatlsid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 123, 456, 1234567, 'zz', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for works
-- ----------------------------
DROP TABLE IF EXISTS `works`;
CREATE TABLE `works`  (
  `workid` int(100) NOT NULL AUTO_INCREMENT,
  `workname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '内容',
  `userid` int(100) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`workid`) USING BTREE,
  INDEX `fk_works_user`(`userid`) USING BTREE,
  CONSTRAINT `fk_works_user` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of works
-- ----------------------------
INSERT INTO `works` VALUES (1, '《流年》', NULL, 1, '2018-09-20');
INSERT INTO `works` VALUES (2, '《耳濡目染》', NULL, 1, '2018-09-21');
INSERT INTO `works` VALUES (3, '《纯音乐》', NULL, 1, '2018-09-25');

-- ----------------------------
-- Table structure for zan
-- ----------------------------
DROP TABLE IF EXISTS `zan`;
CREATE TABLE `zan`  (
  `zanid` int(100) NOT NULL AUTO_INCREMENT,
  `status` bit(1) NULL DEFAULT NULL COMMENT '点赞状态',
  `trendid` int(100) NULL DEFAULT NULL,
  `commentid` int(100) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '点赞类型针对作品or动态',
  PRIMARY KEY (`zanid`) USING BTREE,
  INDEX `fk_zan_trend`(`trendid`) USING BTREE,
  INDEX `fk_zan_song`(`commentid`) USING BTREE,
  CONSTRAINT `fk_zan_comment` FOREIGN KEY (`commentid`) REFERENCES `comment` (`commentid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_zan_trend` FOREIGN KEY (`trendid`) REFERENCES `trend` (`trendid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zan
-- ----------------------------
INSERT INTO `zan` VALUES (1, b'1', 1, NULL, '动态');
INSERT INTO `zan` VALUES (2, b'1', 1, NULL, '动态');
INSERT INTO `zan` VALUES (3, b'1', 1, NULL, '动态');
INSERT INTO `zan` VALUES (4, b'1', 1, NULL, '动态');
INSERT INTO `zan` VALUES (5, b'1', 1, NULL, '动态');
INSERT INTO `zan` VALUES (6, b'1', 2, NULL, '动态');
INSERT INTO `zan` VALUES (7, b'1', 2, NULL, '动态');
INSERT INTO `zan` VALUES (8, b'1', 2, NULL, '动态');
INSERT INTO `zan` VALUES (9, b'1', 2, NULL, '动态');
INSERT INTO `zan` VALUES (10, b'1', 2, NULL, '动态');
INSERT INTO `zan` VALUES (11, b'1', 2, NULL, '动态');
INSERT INTO `zan` VALUES (12, b'1', NULL, 1, '评论');
INSERT INTO `zan` VALUES (13, b'1', NULL, 1, '评论');
INSERT INTO `zan` VALUES (14, b'1', NULL, 1, '评论');

SET FOREIGN_KEY_CHECKS = 1;
