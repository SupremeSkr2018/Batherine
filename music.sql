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

 Date: 21/10/2018 11:36:22
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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
  `singlistid` int(100) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `data` date NULL DEFAULT NULL,
  PRIMARY KEY (`commentid`) USING BTREE,
  INDEX `fk_comment_trend`(`trendid`) USING BTREE,
  INDEX `fk_comment_song`(`songid`) USING BTREE,
  INDEX `fk_comment_user`(`userid`) USING BTREE,
  INDEX `fk_comment_album`(`albumid`) USING BTREE,
  CONSTRAINT `fk_comment_album` FOREIGN KEY (`albumid`) REFERENCES `album` (`albumid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_comment_songid` FOREIGN KEY (`songid`) REFERENCES `song` (`songid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_comment_trendid` FOREIGN KEY (`trendid`) REFERENCES `trend` (`trendid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_comment_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, '233', '2018-09-29', NULL, 1, NULL, NULL, NULL, 1, '点点', '2018-10-02');
INSERT INTO `comment` VALUES (3, '345566', '2018-10-23', NULL, NULL, NULL, NULL, NULL, 1, '梦妮', '2018-10-08');
INSERT INTO `comment` VALUES (4, '4567', '2018-10-23', NULL, NULL, 1, NULL, NULL, 1, 'zz', '2018-10-09');
INSERT INTO `comment` VALUES (5, '6789', '2018-10-05', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for creatls
-- ----------------------------
DROP TABLE IF EXISTS `creatls`;
CREATE TABLE `creatls`  (
  `creatlsid` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`creatlsid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for singer
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer`  (
  `singerid` int(11) NOT NULL AUTO_INCREMENT,
  `sinname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hot` bit(1) NULL DEFAULT NULL,
  `localtion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `song` int(255) NULL DEFAULT NULL,
  `album` int(255) NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`singerid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of singer
-- ----------------------------
INSERT INTO `singer` VALUES (1, '李荣浩', '男', b'1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `singer` VALUES (2, '林俊杰', '男', b'1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `singer` VALUES (3, '邓紫棋', '女', b'1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `singer` VALUES (4, '薛之谦', '男', b'1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `singer` VALUES (5, '梁博', '男', b'1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `singer` VALUES (6, '王二狗', '男', b'1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `singer` VALUES (7, '汪苏泷', '男', b'1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `singer` VALUES (8, '毛不易', '男', b'1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `singer` VALUES (9, '李荣浩', '男', b'1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `singer` VALUES (10, '王北车', '男', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `singer` VALUES (11, '张杰', '男', b'1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `singer` VALUES (12, '王俊凯', '男', b'1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `singer` VALUES (13, '那英', '女', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `singer` VALUES (14, 'Alan  Walker', '', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for singlist
-- ----------------------------
DROP TABLE IF EXISTS `singlist`;
CREATE TABLE `singlist`  (
  `singlistid` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hot` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `data` date NULL DEFAULT NULL,
  `paper1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `paper2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `paper3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `instruct` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`singlistid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of singlist
-- ----------------------------
INSERT INTO `singlist` VALUES (1, '节奏控', 's', '100.3', '2018-06-18', '电子', '欧美', '电子', 'http://p1.music.126.net/OQfrX2yq1QjvOWOTK3b_4g==/18936888765371604.jpg?param=140y140', '女毒患者的福利来了~\r\n歌单适合慵懒的早晨以及安静的夜晚聆听！\r\n总有一首歌，会让你上瘾~\r\n不好听不收藏系列~\r\n我知道你是因为封面来的~\r\n\r\n歌单选曲方面可能会以Future Bass居多（敲敲告诉你，因为单主比较喜欢这种风格啦）\r\n\r\nFuture Bass通常给人一种清新舒适的感觉，如跳跳糖美妙般的旋律，让人怦然心动的女声，甘而不清冽的鼓点节奏感，属于小清新一类的电子音乐。');
INSERT INTO `singlist` VALUES (2, '承蒙你出现，够我喜欢我好多年', 's', '1.4', '2018-10-10', '治愈', '流行', '华语', 'http://p1.music.126.net/8VwC-c7TIsU4cNH1aLDm_A==/109951163609895430.jpg?param=140y140', ' 你终会遇见一个人，一个有好多好多话可以说的人，一个连你的废话也会觉得动听的人。\r\n你终会遇到一个人，TA不会嫌弃你没有大眼睛高鼻梁，即使是你的双下巴也觉得可爱。\r\n你终会遇到一个人，你不需要整天活的很用力完美无缺，在TA面前你就是无可替代的好。\r\n你终会遇到一个人，TA懂你的喜怒哀乐，懂你的善良有趣，你的世界是宝藏一般的存在。\r\n你终会遇到一个人，一个能真正让你做自己的人，让你知道自己有多好多值得拥有宠爱。\r\n\r\n承蒙这样的你出现，够我喜欢好多年。谢谢你的出现，更完整了我对自己的喜欢。');
INSERT INTO `singlist` VALUES (3, '温柔点吧，这个世界已经够浮躁的了', 's', '45.5', '2018-10-09', '流行', '华语', '古典', 'http://p1.music.126.net/_Ej6TahANI-aqsJCTf7uCA==/109951163240060789.jpg?param=140y140', '其实你不懂我的心\r\n\r\n我并不感到孤单\r\n\r\n也没有什么阴影魔障\r\n\r\n你千万不要放在心上\r\n\r\n我又不脆弱\r\n\r\n何况那算什么伤\r\n\r\n反正爱情不就都这样\r\n\r\n我没有说谎\r\n\r\n我何必说谎\r\n\r\n你知道的\r\n\r\n我缺点之一\r\n\r\n就是很健忘\r\n\r\n我哪有说谎\r\n\r\n请别以为你有多难忘');
INSERT INTO `singlist` VALUES (4, '少年逐梦，勇敢前行', 's', '2.16', '2018-08-21', '励志', '流行', '治愈', 'http://p1.music.126.net/ITFTjw1QqPXM4yd2SDvVVQ==/109951163020770438.jpg?param=140y140', '切勿在精神状况不好或疲劳的时候使用此单，否则肯定催眠想睡，此时可以起来运动下，或者听点亢奋的音乐打鸡血（比如 “震撼心灵的史诗音乐” 歌单-推荐）。\r\n此外，这里的音乐运用的是白噪音原理或者alpha波刺激，是起辅助作用的（有人说，不听音乐效率最好，这个要看你实际所处环境和是否有抗干扰的需求）。\r\n在精神好的情况下,本专辑音乐有助于你平复浮躁的心情和集中精力，可以说精神集中事半功倍。切记不要高估音乐的作用，功夫还是在平时，在你自己的辛勤耕耘。');
INSERT INTO `singlist` VALUES (5, '初识不知曲中意，再听已是曲中人', 's', '226', '2018-06-12', '华语', '伤感', '流行', 'http://p1.music.126.net/w3xuC1TDVREps8F8Ekc5xw==/109951163079141894.jpg?param=140y140', '有时候我们喜欢一首歌，不是因为歌唱的多好听，而是歌词写的像自己。音乐这东西开心时入耳，伤心时入心。开心的时候听的就是音乐，难过的时候你开始懂得歌词。爱一首歌常常因为某句歌词，但是真正动人的不是那句歌词而是你生命中的那些关于这句歌词的故事……\r\n初识不知曲中意，再听已是曲中人！为何喜欢一首歌也许也是觉得歌里叙述的是自己的故事！');
INSERT INTO `singlist` VALUES (6, '国语说唱也很抒情，副歌也美', 's', '1.1', '2018-10-10', '说唱', '华语', '90后', 'http://p2.music.126.net/7RFFV6LsoDBq8B0p1EXtxw==/19080924789030458.jpg?param=140y140', ' 说唱不只有燥！抒情的气味搭配hiphop也是一种境界，副歌不只是打辅助，要学会细心品味，说唱总是给人带来不一样的感觉，小众，但有品味，这里有的在唱自己，有的在唱生活，有的唱现实，如果你想多了解生活，那你得先听到这些音乐，他不仅仅是街头文化不仅仅是嘻哈，更是信仰');
INSERT INTO `singlist` VALUES (7, '我知道风里有诗，那正是民谣的歌', 's', '1', '2018-10-10', '流行', '民谣', '华语', 'http://p2.music.126.net/I3M9y0erYKzm5JW7znnHog==/109951163599258286.jpg?param=140y140', '青春被时间抛弃，\r\n民谣被时光拾起，\r\n故事不会丢，\r\n愿你有酒有肉有姑娘。\r\n民谣\r\n喜欢的人越听就越有味道，\r\n一首民谣，\r\n一个故事。\r\n听的时间越长，\r\n如瘾，\r\n不觉依赖。');
INSERT INTO `singlist` VALUES (8, '日式少年音，温柔少年心', 's', '90', '2018-08-11', '日语', '流行', 'ACG', 'http://p1.music.126.net/Y6kpbxQ6C-MJqjCUnC3xdA==/109951163071182230.jpg?param=140y140', ' 这是一张以“少年音”为主题的日语歌单。少年音可以理解为演唱者使用真声演唱时，其发声的方法及其略带鼻音的特征，使得声音听起来像少年的歌声。\r\n\r\n少年音本身容易给人亲切和温柔的感觉，如果用这种声音描绘少年眼中色彩斑斓的世界和细腻的情感，对于听者而言会是一种怎样的惬意呢？这也是这张歌单制作的缘由。我试着在这张歌单里，为大家带来属于少年音的这份特有的温柔。');
INSERT INTO `singlist` VALUES (9, '同样的歌名，不同的演绎', 's', '11', '2018-04-01', '电子', '轻音乐', '另类', 'http://p2.music.126.net/twGMciuD6fkVCG3l1q8jrQ==/109951163553467335.jpg?param=140y140', '同名电音是指有着相同的歌名，但歌曲旋律却大有不同的电音. 本单精选的同名电音均为纯电音 .\r\n\r\n也许这一首歌温暖治愈，下一首便是清新小调\r\n也许这一首歌轻缓优美，下一首便是超燃爆炸\r\n也许这一首歌震撼人心，下一首便是感动内心\r\n也许这一首歌骚气逼人，下一首便是可爱迷人\r\n也许这一首歌是你寻找多年的歌曲，也许不止这一首 .\r\n\r\n同样的歌名，不同的旋律\r\n同样的歌名，不同的曲风\r\n同样的歌名，不同的意境\r\n同样的歌名，不同的故事\r\n同样的歌名，不同的你 .\r\n');
INSERT INTO `singlist` VALUES (10, '黑暗童话', 's', '121', '2018-05-12', '民谣', '古典', '孤独', 'http://p2.music.126.net/tqGPYkhq6yo-tTY4h8PtvA==/3393092923814746.jpg?param=140y140', ' “好想变成雪啊，这样就可以落在先生的肩上了……”\r\n\r\n“若是先生撑了伞呢？”\r\n\r\n“那就落在先生的红伞上，静载一路的月光。”\r\n\r\n“若是先生将雪拂去……”\r\n\r\n“那就任他拂去，能在他的手掌上停留一刻，便足矣。”');

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
  `singername` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
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
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES (1, '耳朵', 1, '', 'https://y.gtimg.cn/music/photo_new/T002R90x90M000004QnEHc3zjC7J.jpg?http://p1.music.126.net/tt8xwK-ASC2iqXNUXYKoDQ==/109951163606377163.jpg?param=130y130', NULL, NULL, 1, NULL, NULL, '内地', '李荣浩', '4:01');
INSERT INTO `song` VALUES (2, '一念', 11, NULL, 'https://y.gtimg.cn/music/photo_new/T002R90x90M000003JcvIk3zRsZl.jpg?max_age=2592000', NULL, NULL, 1, NULL, NULL, '内地', '王菲', NULL);
INSERT INTO `song` VALUES (3, '《高尚》', 4, NULL, NULL, NULL, NULL, 2, NULL, NULL, '内地', NULL, NULL);
INSERT INTO `song` VALUES (4, '《我的》', 12, NULL, NULL, NULL, NULL, 2, NULL, NULL, '内地', NULL, NULL);
INSERT INTO `song` VALUES (5, '《出现》', 13, NULL, NULL, NULL, NULL, 1, NULL, NULL, '内地', NULL, NULL);
INSERT INTO `song` VALUES (6, '《倒数》', 3, NULL, NULL, NULL, NULL, 2, NULL, NULL, '港台', NULL, NULL);
INSERT INTO `song` VALUES (7, '《告白气球》', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '港台', NULL, NULL);
INSERT INTO `song` VALUES (8, '《Diamond Heart》', 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '欧美', NULL, NULL);
INSERT INTO `song` VALUES (9, '《完美主义》', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (10, '《星晴》', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (11, '《龙卷风》', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (12, '《对不起》', 1, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (13, '《斗牛》', 1, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (14, '《爷爷泡的茶》', 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (15, '《懦夫》', 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (16, '《暗号》', 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (17, '《就是我》', 2, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (18, '《不懂》', 2, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (19, '《星空下的吻》', 2, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (20, '《因你而在》', 2, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (21, '《飞机》', 2, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `song` VALUES (22, '《黑暗骑士》', 2, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
