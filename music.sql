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

 Date: 21/10/2018 14:29:54
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
  `introduct` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`singerid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of singer
-- ----------------------------
INSERT INTO `singer` VALUES (1, '李荣浩', '男', b'1', '安徽', '中国', 162, 18, 'http://p4.music.126.net/RQ8pNp66CqAsieGtSaj_5g==/109951163398568078.jpg?https://y.gtimg.cn/music/photo_new/T001R150x150M000000aHmbL2aPXWH.jpg?max_age=2592000', '李荣浩，1985年7月11日出生于安徽省蚌埠市，中国流行乐男歌手、音乐制作人、演员、吉他手。\r\n\r\n2013年9月16日，发行首张专辑《模特》，凭借这张专辑提名第25届金曲奖五项大奖并获得最佳新人奖，实现了从制作人到歌手的转型；2014年9月4日签约华纳唱片，发行第二张同名专辑《李荣浩》，并在次年举办8场“天生李荣浩巡回演唱会”。2016年1月22日发行第三张专辑《有理想》，同年举办“有理想世界巡回演唱会”。2018年1月，参加爱奇艺综艺节目《偶像练习生》。\r\n\r\n从艺历程：\"李荣浩从小自学吉他和低音提琴，后师从低音提琴演奏家尹富源教授。\r\n\r\n2004年接受音乐杂志《吉他平方》专访并发表单曲《烦》，同年与乐队合作获得江苏省第五届流行音乐大赛一等奖。\r\n\r\n2005年接受音乐杂志《现代乐手》专访并发表单曲《DREAM》，同年9月担任《我的音乐梦想》系列吉他丛书主编，后正式成为吉他中国乐手。\"\r\n\r\n2005年签约日本艾回唱片，成为其台湾地区独家创作艺人\r\n\r\n2007年，李荣浩赴台湾参与制作信专辑《我就是我》，并担任其“2008我就是我·北京演唱会”的表演嘉宾。\r\n\r\n2008年参与制作赵薇专辑《我们都是大导演》，并担任发布会表演嘉宾；同年担任陈坤专辑《谜&Me》的专辑制作人。\r\n\r\n2010年2月4日，担任陈坤首场演唱会《谜》音乐总监&吉他手。2011年开始担任东申童画《行走的力量》音乐总监\r\n\r\n2013年8月，首度携手好友陈坤演绎全新单曲《演员和歌手》；同年9月17日，发行首张个人专辑《模特》，举办“Hao·Live——《模特》专辑音享会”\r\n\r\n演绎专辑中的6首热门歌曲。');
INSERT INTO `singer` VALUES (2, '林俊杰', '男', b'1', '新加坡', '新加坡', 431, 37, 'http://p4.music.126.net/cnGpIQ6rQCKVrDyVVSpzeg==/3263350518850877.jpg?param=130y130', '林俊杰（JJ Lin），新加坡人，流行歌手、词曲创作者、音乐制作人。2003年发行首张创作专辑《乐行者》 ，2004年凭《江南》一曲成名 。2014年以专辑《因你而在 Stories Untold》夺得第25届台湾金曲奖最佳国语男歌手奖 。\r\n\r\n2007年成立个人音乐制作公司JFJ Productions，负责单曲及专辑制作；2008年创立潮流品牌SMG；2012年发行故事影像书《记得》，成功跻身畅销书作家行列 。\r\n\r\n除演艺事业外，林俊杰还担任了2008年北京奥运会 及2010年新加坡青奥会 火炬手，为2010年上海世博会新加坡馆创作并演唱了主题曲《感动每一刻》 。凭借在音乐创作与慈善公益等方面的表现，林俊杰于2009年荣获“新加坡杰出青年奖” ，2014年获得第5届“通商中国青年奖” 。\r\n\r\n林俊杰第十一张创作专辑《新地球GENESIS》于2014年12月27日正式发行 。2013年开启的“时线TimeLine世界巡回演唱会”横跨四大洲、24个城市。12月19日携“时线：新地球世界巡回演唱会”登陆高雄巨蛋；12月25日发行首张实验专辑《和自己对话》。2016年1月15日首次正式参演的电影《消失的爱人》上映。\r\n\r\n2017年8月23日，携虚拟乐团“消除联萌”推出的全新单曲《丹宁执着》上线。2017年10月27日，二度担任常驻导师的浙江卫视音乐综艺《梦想的声音第二季》开播；11月，受邀与Luis Fonsi合作推出2017年度热单《Despacito》中文版；12月29日将推出个人第13张创作专辑《伟大的渺小》。\r\n\r\n2018年3月17日，林俊杰“圣所”世界巡回演唱会将从上海起跑。；6月16日，“圣所”演唱会将在济南奥体中心体育馆开唱。\r\n\r\n从艺历程：2003年 发行首张全创作专辑《乐行者》。虽然时逢SARS，但他和团队不轻言放弃，在3个月内走遍26个城市，进行了上百场演出，奠定了之后在中国大陆的稳固基础。');
INSERT INTO `singer` VALUES (3, '邓紫棋', '女', b'1', '上海', '中国', 256, 40, 'https://y.gtimg.cn/music/photo_new/T001R150x150M000001fNHEf1SFEFN.jpg?max_age=2592000', '邓紫棋（Gloria Tang Tsz-Kei），又名G.E.M.，原名邓诗颖，1991年8月16日生于中国上海，4岁移居香港，中国香港创作型女歌手。\r\n\r\n2008年7月10日以16岁之龄出道。同年10月16日发行首张EP《G.E.M.》，取得香港各大乐坛颁奖礼新人金奖。2011年5月，以19岁之龄在香港红馆举行5场个人演唱会。2012年7月，发行第四张个人专辑《Xposed》，凭借该专辑邓紫棋在2013年获得IFPI香港唱片销量大奖全年最高销量女歌手奖、最高销量国语唱片奖，并入围第24届金曲奖最佳国语女歌手奖。2014年1月，参加湖南卫视《我是歌手第二季》节目，获得总决赛亚军。3月31日，获第27届KCA美国儿童选择奖“最受欢迎亚洲艺人”。12月10日，邓紫棋的蜡像入驻香港杜莎夫人蜡像馆。2015年2月18日，参加2015年中央电视台春节联欢晚会，自弹自唱其自创的歌曲《多远都要在一起》。5月12日，再登福布斯中国名人榜，排名升至第11位 。2015年7月，未满24岁便完成80场个人演唱会。截至北京时间2015年11月22日伦敦温布利终站，《G.E.M.X.X.X.Live”世界巡回演唱会》已经完成73场。打破之前华语乐坛女歌手单轮巡演59场的记录。8月15日，确认加盟中国好声音第四季担任梦想导师[。同年，成为首位在瑞士阿尔卑斯山脉少女峰举办音乐会的中国音乐人。2016年1月5日，邓紫棋入选《福布斯》\"全球30岁以下30位最具潜力杰出音乐人\"。\r\n\r\n从艺历程：邓紫棋成长于一个音乐世家，母亲为上海音乐学院声乐系毕业生，外婆教唱歌，舅父拉小提琴，外公在乐团吹萨克斯风。在家人的熏陶下，邓紫棋自小便热爱音乐，喜爱唱歌。');
INSERT INTO `singer` VALUES (4, '薛之谦', '男', b'1', '上海', '中国', 204, 22, 'https://y.gtimg.cn/music/photo_new/T001R150x150M000002J4UUk29y8BY.jpg?max_age=2592000', '薛之谦，1983年7月17日出生于上海市，中国内地男歌手。\r\n\r\n2006年6月9日，薛之谦发行首张个人原创同名专辑《薛之谦》；2007年在中国原创音乐流行榜上凭借《认真的雪》获得内地金曲奖；2008年11月26日发行第三张个人原创专辑《深深爱过你》；12月20日举行首场演唱会“谦年传说”；2012年7月17日发行专辑《几个薛之谦》。2013年11月发行专辑《意外》。\r\n\r\n2015年4月1日，薛之谦主演《男人帮·朋友》预告片发布；6月10日正式签约海蝶音乐公司，升为制作人并发行原创EP《绅士》[9] ；同年，他还主演都市励志剧《妈妈像花儿一样》[10] 。2016年，凭借EP《绅士》、《一半》获得第16届全球华语歌曲排行榜最受欢迎男歌手、五大最受欢迎男歌手奖、上海地区杰出歌手奖及最受欢迎创作歌手奖，而歌曲《初学者》则获得年度二十大金曲奖。2017年4月，开启“我好像在哪见过你”全国巡回演唱会；同年，薛之谦获得第7届全球流行音乐年度盛典年度最佳男歌手及MusicRadio榜中国TOP排行榜内地最佳男歌手。\r\n\r\n从艺历程：2005年，薛之谦因参加选秀节目《我型我秀》获得四强而正式出道；同年9月，签约上腾娱乐 。\r\n\r\n2006年6月12日薛之谦发行首张个人原创同名专辑《薛之谦》，他个人包揽了六首曲和五首词的创作，最后的一曲《认真的雪》记录了他第一次深刻的感情经历。\r\n\r\n2007年7月31日发行第二张个人原创专辑《你过得好吗》。\r\n\r\n2008年3月29日在上海大舞台举行的第十五届东方风云榜颁奖盛典献唱《你过得好吗》；7月推出个人单曲《传说》；11月26日发行第三张个人原创专辑《深深爱过你》；12月20日举行首场演唱会“谦年传说“');
INSERT INTO `singer` VALUES (5, '张靓颖', '女', b'1', '四川', '中国', 598, 40, 'https://y.gtimg.cn/music/photo_new/T001R150x150M000000aw4WC2EQYTv.jpg?max_age=2592000', '张靓颖（Jane Zhang），1984年10月11日出生于四川成都，中国流行女歌手，现任中华全国青年联合会委员。\r\n\r\n2006年，发行首张专辑《THE ONE》，年终销量超过100万张，并凭此专辑获得中国金唱片奖通俗类女演员奖 。2007年，发行专辑《UPDATE*JANE》，并在美国洛杉矶举行售票演唱会 。2008年，跟随时任国家主席胡锦涛出访日本，在日本首相官邸为两国元首献唱《印象西湖雨》。2009年，推出专辑《张靓颖@音乐》，并在日本举行首发鉴赏会；同年，《I Love This City》和《印象西湖雨》分获中共四川省委宣传部、中共杭州市委宣传部五个一工程奖 。2010年，主唱的《印象·西湖》专辑提名美国格莱美奖，张靓颖成为首位亮相格莱美颁奖典礼的华人歌手 。\r\n\r\n2011年，登上中国人民解放军海军舟山号导弹护卫舰，为亚丁湾、索马里海域执行护航任务的海军官兵慰问演出 。2012年，凭现场专辑《倾听》第七次蝉联北京流行音乐典礼最佳女歌手奖 。2013年，登上央视春晚演唱《一辈子朋友》。2014年，献唱南京青奥会开幕式主题曲《点亮未来》。2015年，为好莱坞科幻片《终结者5》演唱全球主题曲，并为国产品牌华为演唱主题曲《我的梦》。2016年，登上比利时明日帝国电音节演唱《808》。同年，英文单曲《Dust My Shoulders Off》登上美国公告牌数字音乐销量榜，并获得美国、德国、英国流行艺术大奖 。2017年，成为首位登上维多利亚的秘密时尚秀表演的亚洲歌手 。\r\n\r\n从艺历程：张靓颖1984年10月11日 出生于成都的一个普通家庭。2002年 参加成都市“爱浪杯”歌唱比赛获亚军。2003年 考入四川大学外国语学院。\r\n\r\n2004年 参加全国大学生歌手大赛获“全国总冠军”。2005年参加“超级女声”比赛摘得季军桂冠。');
INSERT INTO `singer` VALUES (6, '张杰', '男', b'1', '四川', '中国', 704, 51, 'https://y.gtimg.cn/music/photo_new/T001R150x150M000002azErJ0UcDN6.jpg?max_age=2592000', '张杰，1982年12月20日出生于四川成都，毕业于四川师范大学，内地流行男歌手，行星文化（音乐厂牌）创始人。\r\n\r\n2004年获我型我秀全国总冠军出道。2007年参加快乐男声；推出EP《最美的太阳》。2008年推出专辑《明天过后》；担任北京奥运会火炬手。2010年推出专辑《这，就是爱》；担任博鳌亚洲论坛表演嘉宾；获韩国MAMA颁奖礼亚洲之星奖。2012年在人民大会堂开启巡演；作品《风华正茂》获湖南省五个一工程奖。2013年首登央视春晚演唱《给我你的爱》；赴美国伯克利音乐学院进修。2014年献唱南京青奥会主题曲《点亮未来》；获第42届全美音乐奖(AMA)年度国际艺人奖。2016年在北京工人体育场开启张杰我想世界巡回演唱会，为内地首位工人体育场开唱80后歌手；献唱好莱坞《星际迷航3》、《间谍同盟》电影推广曲。2017年在洛杉矶杜比剧院开唱，为首位在奥斯卡杜比剧院开唱内地歌手；献唱好莱坞《变形金刚5》片尾曲《Torches》 和第十三届全运会主题曲《健康赢未来》；入驻重庆杜莎夫人蜡像馆；十月世界巡演登陆米兰、伦敦，为首位在欧洲开唱的内地歌手。\r\n\r\n至今已发行12张唱片，举办41场个人演唱会，获33次“最受欢迎男歌手”和13次“最佳男歌手”奖，达成内地乐坛“最受欢迎男歌手”大满贯，三度献唱好莱坞电影推广曲，三度献唱央视春晚。\r\n\r\n此外，张杰致力于慈善公益事业，2012年创立北斗星空爱心基金，累计创建29间“张杰音乐梦想教室”，获中国儿童慈善奖-突出贡献奖 、位列中国慈善名人榜第22位。\r\n\r\n从艺历程：2004年 张杰参加了上海的“莱卡我型我秀”。历经选拔,凭借着和苟伟合作的原创歌曲《北斗星的爱》，获得了年度总冠军。之后，他成为环球·上腾签约歌手。');
INSERT INTO `singer` VALUES (7, '汪苏泷', '男', b'1', '辽宁', '中国', 275, 43, 'https://y.gtimg.cn/music/photo_new/T001R300x300M000001z2JmX09LLgL.jpg?max_age=2592000', '汪苏泷，1989年9月17日出生于辽宁沈阳，内地男歌手。\r\n\r\n毕业于沈阳音乐学院作曲系，2010出版首张个人专辑《慢慢懂》。2012年出版专辑《万有引力》，并拍摄专辑歌曲《第一首情歌》同名微电影 。同年凭借《万有引力》获得音乐先锋榜、东方风云榜等多个最佳新人奖项。\r\n\r\n2014年，汪苏泷本科毕业，成立个人潮流品牌SU2。同年与好友徐良成立大象音乐。6月25日发行专辑《传世乐章》。2015年7月，汪苏泷为电视剧《花千骨》创作《年轮》。2015年10月12日，发行个人第四张原创大碟《登陆计划》；11月，为新版《射雕英雄传》创作电视剧主题曲《爱过谁》；12月，推出第一本官方个人写真《Su-Perfect》。2016年5月，出席MusicRadio全球流行音乐金榜，歌曲《银河》获CityFM城市之音点播冠军；7月，举办“汪苏泷0917登陆星球北京演唱会”新闻发布会；8月，包揽电视剧《微微一笑很倾城》的影视OST，创作并演唱片头曲《一笑倾城》。\r\n\r\n2015年10月12日，发行个人第四张原创大碟《登陆计划》；11月，为新版《射雕英雄传》创作电视剧主题曲《爱过谁》；12月，推出第一本官方个人写真《Su-perfect》。2016年5月，出席MusicRadio全球流行音乐金榜，歌曲《银河》获CityFM城市之音点播冠军；7月，举办“汪苏泷0917登陆星球北京演唱会”新闻发布会；8月，包揽电视剧《微微一笑很倾城》的影视OST，创作并演唱片头曲《一笑倾城》。\r\n\r\n从艺历程：1989年9月17日 汪苏泷出生于辽宁沈阳一个艺术世家。自幼对音乐产生了浓厚的兴趣，初中时开始接触学习古典音乐，并与高中考入沈阳音乐学院附中作曲系。大学继续就读沈阳音乐学院本科作曲系。');
INSERT INTO `singer` VALUES (8, '毛不易', '男', b'1', '黑龙江', '中国', 127, 12, 'https://y.gtimg.cn/music/photo_new/T001R150x150M000001BHDR33FZVZ0.jpg?max_age=2592000', '毛不易，男，原名王维家，黑龙江齐齐哈尔人。综艺节目《明日之子》的参赛选手，以一首逗趣的原创歌曲《如果有一天我变得很有钱》进入薛之谦盛世独秀赛道；后以一曲《消愁》实力圈粉，为大家所喜爱。现为《明日之子》九大厂牌之一，厂牌名：巨星不易工作室。\r\n\r\n2017年，参加腾讯视频选秀娱乐节目《明日之子》的比赛，获得全国总决赛冠军，从而正式进入演艺圈；9月1日，推出首张个人音乐专辑《巨星不易工作室 No.1》；11月11日，推出个人原创单曲《项羽虞姬》；12月28日，获得腾讯娱乐白皮书音乐年度之星奖。2018年1月7日，获得首届金鲛奖年度十佳网络新星奖。4月，作为“无限唱作人”参加江苏卫视音乐唱作类真人秀节目《无限歌谣季》；5月31日，推出首张个人录音室专辑《平凡的一天》。\r\n\r\n从艺历程：2017年，参加腾讯视频选秀娱乐节目《明日之子》的比赛，最终以1400多万的粉推人气获得全国总决赛冠军，并得到了白金唱片及“最强厂牌”的称号；比赛期间，毛不易共演唱了14首原创歌曲，其中《消愁》的播放量24小时破千万、首周破亿，该专辑陆续在海外各大音乐平台上架，并登上KKBOX新曲速报歌单推荐榜，他也因此正式进军海外；11月4日，以“星小编”的身份做客网易娱乐明星互动直播栏目《娱乐新鲜派》；同年，参加“明日之子2017全国巡回演唱会”；随后，参加湖南卫视脱口秀节目《天天向上》的录制，这是他的电视综艺首秀；11月11日，推出个人原创单曲《项羽虞姬》；此外，他还为迪士尼电影《寻梦环游记》演唱了主题曲《请记住我》 ；11月23日，获得网易年度有态度大赏年度最有态度唱作歌手奖；12月3日，获得腾讯视频星光大赏年度音乐新势力奖');
INSERT INTO `singer` VALUES (9, '周杰伦', '男', b'1', '台湾', '中国', 811, 31, 'https://y.gtimg.cn/music/photo_new/T001R150x150M0000025NhlN2yWrP4.jpg?max_age=2592000', '周杰伦（Jay Chou），1979年1月18日出生于台湾省新北市，华语流行男歌手、演员、词曲创作人、MV及电影导演、编剧及制作人。2000年被吴宗宪发掘，发行首张个人专辑《Jay》。2001年发行专辑《范特西》。2002年在中国、新加坡、马来西亚、美国等地举办首场个人世界巡回演唱会。\r\n\r\n2003年登上美国《时代周刊》亚洲版封面人物。\r\n\r\n周杰伦的音乐融合中西方元素，风格多变，四次获得世界音乐大奖最畅销亚洲艺人。凭借专辑《Jay》、《范特西》、《叶惠美》及《跨时代》四次获得金曲奖\"最佳国语专辑\"奖，并凭借《魔杰座》、《跨时代》获得第20届和第22届金曲奖“最佳国语男歌手”奖；2014年获QQ音乐年度盛典“港台最受欢迎男歌手”及压轴大奖“最佳全能艺人”。\r\n\r\n2005年开始涉足影视，以电影《头文字D》获第42届台湾电影金马奖及第25届香港电影金像奖“最佳新人”奖。\r\n\r\n2006年起连续三年获得世界音乐大奖中国区最畅销艺人奖。\r\n\r\n2007年自立门户，成立JVR（杰威尔）有限公司，自编自导自演的电影《不能说的秘密》获得第44届台湾电影金马奖“年度台湾杰出电影”奖。\r\n\r\n2008年凭借歌曲《青花瓷》获得第19届金曲奖最佳作曲人奖。\r\n\r\n2009年入选美国CNN亚洲极具影响力人物；同年凭借专辑《魔杰座》获得第20届金曲奖最佳国语男歌手奖。\r\n\r\n2010年入选美国《Fast Company》评出的“全球百大创意人物”。\r\n\r\n2011年凭借专辑《跨时代》再度获得金曲奖最佳国语男歌手奖，并且第4次获得金曲奖最佳国语专辑奖；同年主演好莱坞电影《青蜂侠》。\r\n\r\n2012年登福布斯中国名人榜榜首。\r\n\r\n2013年自编自导自演第二部电影《天台爱情》取得了不俗的票房与口碑。\r\n\r\n2014年加盟好莱坞电影《惊天魔盗团2》；同年发行华语乐坛首张数字音乐专辑《哎呦，不错哦》。\r\n\r\n娱乐圈外，周杰伦在2011年跨界担任华硕（ASUS）笔电外观设计师并入股香港文化传信集团。2012在中国内地开设真爱范特西连锁KTV。\r\n\r\n除了力拼自己的事业，周杰伦还热心公益慈善活动，多次向内地灾区捐款并与众多艺人募款新建希望小学。');
INSERT INTO `singer` VALUES (10, '王菲', '女', b'1', '北京', '中国', 688, 99, 'https://y.gtimg.cn/music/photo_new/T001R300x300M000000GDDuQ3sGQiT.jpg?max_age=2592000', '王菲（Faye Wong），1969年8月8日出生于北京，中国流行乐女歌手、影视演员。\r\n\r\n1989年凭借歌曲《仍是旧句子》在香港歌坛出道，同年发行首张个人专辑《王靖雯》。1992年因演唱歌曲《容易受伤的女人》而被听众所熟知。1993年在专辑《十万个为什么？》 中尝试另类音乐的风格。1994年凭借专辑《天空》奠定其在华语歌坛的地位，并获得十大劲歌金曲最受欢迎女歌星奖；同年在香港红磡体育馆举办18场“最精彩演唱会”，打破中国香港歌手初次开演唱会的场次纪录。1996年成为首位登上美国《时代周刊》封面的华人歌手。1998年因在央视春晚上演唱歌曲《相约1998》而在中国内地获得更多的关注；同年发行专辑《唱游》，通过运用颤音、拖音等技巧确立其个人风格，并于次年获得新加坡SPVA唱片畅销排行榜年度销量冠军。\r\n\r\n1999年凭借歌曲《Eyes on Me》获得第41届日本唱片大奖亚洲音乐奖，同年在日本武道馆举行个人演唱会。2002年获得吉尼斯世界纪录大全颁发的“唱片销量最高的粤语女歌手”证书 。2003年出演喜剧电影《天下无双》。2004年凭借专辑《将爱》获得第15届台湾金曲奖最佳国语女演唱人奖。2005年在结束“菲比寻常巡回演唱会”后淡出乐坛。2010年复出乐坛并在央视春晚上演唱歌曲《传奇》，同年举办巡回演唱会。2012年再度登上央视春晚，并演唱歌曲《因为爱情》。2016年发行歌曲《尘埃》。\r\n\r\n演艺事业外，王菲热心公益慈善。2006年11月，成立嫣然基金会 。2012年5月，成为北京嫣然天使儿童医院的创始人之一。');
INSERT INTO `singer` VALUES (11, '庄心妍', '女', b'1', NULL, NULL, NULL, NULL, 'https://y.gtimg.cn/music/photo_new/T001R150x150M000002azErJ0UcDN6.jpg?https://y.gtimg.cn/music/photo_new/T001R300x300M000003Cn3Yh16q1MO.jpg?max_age=2592000', NULL);
INSERT INTO `singer` VALUES (12, '王二狗', '男', b'1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `singer` VALUES (13, '那英', '女', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `singer` VALUES (14, 'Alan  Walker', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
  `songlay` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '歌词',
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
INSERT INTO `song` VALUES (1, '年少有为', 1, '', 'https://y.gtimg.cn/music/photo_new/T002R90x90M000004QnEHc3zjC7J.jpg?http://p1.music.126.net/tt8xwK-ASC2iqXNUXYKoDQ==/109951163606377163.jpg?https://y.gtimg.cn/music/photo_new/T002R90x90M000004QnEHc3zjC7J.jpg?max_age=2592000', NULL, NULL, 1, NULL, NULL, '内地', '李荣浩', '04:39');
INSERT INTO `song` VALUES (2, '戒烟', 1, NULL, 'https://y.gtimg.cn/music/photo_new/T002R90x90M000003JcvIk3zRsZl.jpg?max_age=2592000', NULL, NULL, 1, NULL, NULL, '内地', '李荣浩', '04:54');
INSERT INTO `song` VALUES (3, '老街', 1, NULL, 'https://y.gtimg.cn/music/photo_new/T002R90x90M0000023wXWz1niBQS.jpg?max_age=2592000', NULL, NULL, 2, NULL, NULL, '内地', '李荣浩', '05:18');
INSERT INTO `song` VALUES (4, '李白', 1, NULL, NULL, NULL, NULL, 2, NULL, NULL, '内地', '李荣浩', '04:33');
INSERT INTO `song` VALUES (5, '不将就', 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, '内地', '李荣浩', '05:12');
INSERT INTO `song` VALUES (6, '模特', 1, NULL, NULL, NULL, NULL, 2, NULL, NULL, '港台', '李荣浩', '05:16');
INSERT INTO `song` VALUES (7, '作曲家', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '港台', '李荣浩', '05:13');
INSERT INTO `song` VALUES (8, '乐团', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '欧美', '李荣浩', '03:25');
INSERT INTO `song` VALUES (9, '念念又不忘', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '李荣浩', '5:42');
INSERT INTO `song` VALUES (10, '成长之重量', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '李荣浩', '05:37');
INSERT INTO `song` VALUES (11, '《龙卷风》', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL);
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
