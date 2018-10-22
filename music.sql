/*
 Navicat Premium Data Transfer

 Source Server         : mxy
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : music

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 22/10/2018 20:36:52
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
  `asetName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `genre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Types` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `intro` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`albumid`) USING BTREE,
  INDEX `fk_album_singer`(`singerid`) USING BTREE,
  CONSTRAINT `fk_album_singer` FOREIGN KEY (`singerid`) REFERENCES `singer` (`singerid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES (1, '《JAY》', '2000-11-06', 1, '周杰伦', 'Pop', '国语', '录音室专辑', '专辑中以古典弦乐伴奏及Band，形成英国式的复古风格，加上西班牙式风格的弦乐演奏，意境极度逼近电影配乐。\r\n\r\n⊙周杰伦同名专辑 杰伦\r\n\r\n“杰伦”同名专辑，整张曲风充斥着杰伦对音乐的超高技术创作，专辑中以R&B及New Hip-Hop的新曲为主，加上古典巴洛克式弦乐伴奏及Band的加入，形成一种英国式的复古风格，更特别的是，杰伦尝试着把超高难度，西班牙式风格的弦乐演奏，表现在专辑歌曲中，意境却出忽意料的极度逼近电影配乐，这种音乐是台湾目前所没有的。\r\n\r\n⊙这就是杰伦\r\n\r\n在外人眼中，他很害羞、很内向，熟识他的朋友，会觉得他有点闷骚(可爱的那一种)，他像邻家大男孩，有时会羞涩、不说话，但是只要跟他提到音乐，他就可以跟你聊很多想法，永远停不下来思考的想法，对于创作音乐，是他生活的一部份，无时无刻在运转着，随时随地就会想到音乐的节奏，只要是身旁有钢琴或正好有吉他，他都可以创作成一首首脍炙人口的歌曲；十八岁那年，杰伦创作了吴宗宪的屋顶、三暝三日、你比从前快乐；许茹芸的蜗牛；王力宏的打开爱；徐若瑄的姊你睡了吗？…等。\r\n\r\n⊙音乐是幻想的 幻想是快乐的 杰伦的音乐新标准', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000000f01724fd7TH.jpg?max_age=2592000');
INSERT INTO `album` VALUES (2, '《范特西》', '2001-09-14', 1, '周杰伦', 'Pop流行', '国语', '录音室专辑', '⊙周杰伦要发片了！\r\n\r\n在这段不算短的日子中，喜爱杰伦的歌迷们，仅能透过市面上流传属于杰伦气息的旋律，来稍稍抚慰失落的心情。经过将近一年时间的精墩细熬，大家万众期待的周杰伦第二张专辑---「范特西」，终于在歌迷们的千呼万唤声中，决定于2001年9月份与大众见面！\r\n\r\n⊙Welcome To Jay\'s Fantasy World\r\n\r\n此次周杰伦的音乐层面，不仅突破以往的制作水平、创作更臻成熟，他所发挥的奇特幻想力及个人特质，更淋漓尽致地融入于他的歌曲里。听杰伦的音乐，就犹如畅游梦幻的游乐世界；听杰伦的音乐，你将会享受比上一张专辑更多的惊艳。现在，就请你准备系好安全带，和我们一起进入周杰伦的「音乐幻想世界」！\r\n\r\n周杰伦的第二张专辑---「范特西」(音同Fantasy)，充分反射出杰伦思绪充沛的一面，他独特的想象空间，可说是构成此张专辑的主要原动力。仅仅浏览「爸我回来了」、「双截棍」、「忍者」、「爱在西元前」、「上海一九四三」、「威廉古堡」等特殊歌名，大家的好奇心就会不自觉被轻轻挑起，从杰伦更多元化的音乐尝试，不难嗅出他此番强烈的企图心，而这突破自己的考验，杰伦不仅做到了，而且，做得还十分出色！\r\n\r\n⊙作曲无限大 填词铁三角', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000000I5jJB3blWeN.jpg?max_age=2592000');
INSERT INTO `album` VALUES (3, '《八度空间》', '2002-07-18', 1, '周杰伦', 'Pop流行', '国语', '录音室专辑', '在金曲奖上大放异彩的音乐奇才周杰伦，今年破天荒地一连拿下多项大奖，可说是缔造华语歌坛前所未有的新纪录，这样傲人的成绩，不仅再度肯定杰伦音乐上过人的才华，无疑的，也是替饱受盗版之苦的唱片娱乐圈，带来一丝希望曙光！ 2002年七月，杰伦又一次展现他惊人的音乐狂想力，他尝试把自己的奇想格局更加扩大，玩弄音符是杰伦天生潜在的本性，但拥有音乐天赋的杰伦并不视骄而宠，反而更战战兢兢的制作出一首又一首脍炙人口的作品，因为他深知，大家的肯定是他创作的原动力！因此，请擦亮你的眼睛，欣赏杰伦驰骋游戏空间所散发的光彩！', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000004MGitN0zEHpb.jpg?max_age=2592000');
INSERT INTO `album` VALUES (4, '《乐行者》', '2003-04-01', 2, '林俊杰', 'Pop流行', '国语', '录音室专辑', '⊙乐行者 在世界里悠然行走的人\r\n\r\n这个人刚满22岁\r\n\r\n海蝶唱片继2002年度畅销新人阿杜之后，4月4日即将推出要华人乐坛“听好、看好”的重点新人J.J林俊杰。\r\n\r\nJ.J林俊杰，新加坡人。22岁的年轻创作歌手。擅长键盘与吉他。只要有机会坐在键盘前，不需几分钟，一首美妙旋律，应指而生。\r\n\r\n对各类新鲜事物吸收力特强的林俊杰，具备丰富的海绵特质。在台北短短的半年时间，就已经完全溶入而且悠游在这对他来说是梦想中的华人优秀音乐集中地─台湾。\r\n\r\nJ.J林俊杰，J.J是林俊杰的英文称呼。在新加坡服役时曾加入军中艺工队。有深厚的舞蹈基础及舞台经验。也由于J.J林俊杰年轻乖巧的形象，容易取得同辈年轻人的好感与亲近。\r\n\r\n十支魔力的手指，为台湾流行乐坛增添了许多的动人旋律。阿妹的「记得」、阿杜的「一个人住」、「放手」、可米小子的「超人心」、王心凌的「当你」、罗美玲的「清楚」都是俊杰的作品。\r\n\r\n⊙乐行者 在世界里悠然行走的人\r\n\r\n这个人刚满22岁\r\n\r\n海蝶唱片继2002年度畅销新人阿杜之后，4月4日即将推出要华人乐坛“听好、看好”的重点新人J.J林俊杰。\r\n\r\nJ.J林俊杰，新加坡人。22岁的年轻创作歌手。擅长键盘与吉他。只要有机会坐在键盘前，不需几分钟，一首美妙旋律，应指而生。\r\n\r\n对各类新鲜事物吸收力特强的林俊杰，具备丰富的海绵特质。在台北短短的半年时间，就已经完全溶入而且悠游在这对他来说是梦想中的华人优秀音乐集中地─台湾。\r\n\r\nJ.J林俊杰，J.J是林俊杰的英文称呼。在新加坡服役时曾加入军中艺工队。有深厚的舞蹈基础及舞台经验。也由于J.J林俊杰年轻乖巧的形象，容易取得同辈年轻人的好感与亲近。\r\n\r\n十支魔力的手指，为台湾流行乐坛增添了许多的动人旋律。阿妹的「记得」、阿杜的「一个人住」、「放手」、可米小子的「超人心」、王心凌的「当你」、罗美玲的「清楚」都是俊杰的作品。\r\n\r\n', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000002vlOfM1X5TQ0.jpg?max_age=2592000');
INSERT INTO `album` VALUES (5, '《因你而在》', '2013-03-13', 2, '林俊杰', 'Pop流行', '国语，英语', '录音室专辑', '2014QQ音乐巅峰榜暨年度盛典年度最佳国语专辑。\r\n\r\n「这张专辑属于你们，没有你们就没有我。\r\n\r\n我，林俊杰，因你而在。」\r\n\r\n10年前写下的 10年后成为故事\r\n\r\nJJ林俊杰 因你而在 为你而唱\r\n\r\n唱出那些 不曾说过的故事\r\n\r\n『 我发现，生活中我们永远都在做一件同样的事情 - 寻回。寻回童年，寻回当初的无忧无虑。寻回感动，因为曾经一定有人让我们奋不顾身去相信爱情。寻回勇气，因为也许某些错过的机会现在回不去了。寻回梦想，所谓「once bitten twice shy」；碰壁时，有些人可能会越挫越勇，但挫败多了，难免还是会气馁。寻回单纯的 快乐。或许我是个念旧的人，我觉得怀念，不是因为以前比较好，\r\n\r\n而是可以让自己懂得更珍惜现在，甚至把自己未来的路铺得更好。\r\n\r\n我们的过去，是让我们看到现在的价值的证据。\r\n\r\n一转眼，已经是第10张专辑了。\r\n\r\n10年了，好不容易。记得刚出道的那几年，我是一个非常需要被肯定的年轻人，很缺乏自信。所以我很强硬地逼着自己努力、证明自己、突破自己，因为有身边人的许多鼓励。\r\n\r\n谢谢写信给我为我加油的歌迷朋友们，\r\n\r\n也谢谢常拍拍我肩膀对我说「你可以的」的同事们、老师们、音乐伙伴们。\r\n\r\n当然我也记得曾经面临很多负面的评论，\r\n\r\n但也因为有这些批评，我才能更了解自己的短处，调整自己让自己变得更好。要在这个娱乐圈里保持对音乐的热忱，不是一件简单的事。时间久了，我发现，快乐越来越难定义，越来越模糊，甚至曾经告诉自己 ─ 快乐的来源已经不一样了。发现自己上每个节目时脑海里只想着怎么做或说才会让导播把镜头转到自己身上；歌曲要加什么乐器或取什么歌名才能让自己的作品比较容易出位；或是在访问中要提谁的名字才会让自己的新闻变更大。这就是演艺圈的现实面，相信也是每个音乐人的恶梦。但我后来学习到，这也是当艺人的一部分，\r\n\r\n我必须释怀，必须找到最适合自己的方式应对，也必须自己学习怎么维持做音乐的快乐。\r\n\r\n我谢谢一开始陪伴我一起写歌的朋友。当我还是个学生时，你们选择相信我的梦想，也把自己的梦想寄托在我身上。我希望我没让你们失望。是你们让我永远记住做音乐真正的快乐来源。谢谢，我没有忘记你。', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000001gqOnU3DTg2S.jpg?max_age=2592000');
INSERT INTO `album` VALUES (6, '《精彩才刚刚开始》', '2018-10-15', 2, '易烊千玺', 'Soundtack', '国语', 'Sing', '十年，让18岁的易烊千玺\r\n\r\n唱出一个少年到巨星漫长成长\r\n\r\n更唱出你我每一个人在十年间的点滴骄傲或遗憾，\r\n\r\n唱出我们一如既往的初心\r\n\r\n或勇敢的改变\r\n\r\n十年，给我们理由回望\r\n\r\n给我们理由狂欢，更给我们理由期待\r\n\r\n这一切让我们深信——精彩才刚刚开始\r\n\r\n《精彩才刚刚开始》，由亚洲跨年代造星大师——许环良亲自作曲、制作；林俊杰的御用作词人——林怡凤跨刀作词；亚洲剧情MV大师——周格泰执导MV。期许更精彩的未来，由此开始。', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000003QvxjW3C1HzS.jpg?max_age=2592000');
INSERT INTO `album` VALUES (7, '《耳朵》', '2018-10-17', 3, '李荣浩', 'Pop流行', '国语', '录音室专辑', '闭上眼睛\r\n\r\n当所有感官只剩耳朵\r\n\r\n你的世界…还留下什么\r\n\r\n『唱作大神』李荣浩\r\n\r\n第5张全新创作大碟【耳朵】\r\n\r\n十首全新创作 十种情感记忆\r\n\r\n李荣浩的新音乐风格 属于李荣浩的音乐新时代\r\n\r\n全心角度感受李荣浩全新专辑\r\n\r\n触动华语乐坛心震撼\r\n\r\n『唱作大神』李荣浩\r\n\r\n第5张全新创作大碟【耳朵】\r\n\r\n10.17正式发行 华纳音乐\r\n\r\n从专辑【模特】、【李荣浩】、【有理想】到【嗯】\r\n\r\n李荣浩从创作到一手包办制作、编曲、吉他弹奏等 从不假他人之手\r\n\r\n成为近五年华语乐坛最炙手可热的全能唱作人\r\n\r\n从《天生李荣浩》演唱会到《有理想》世界巡演\r\n\r\n以北京为起点 成功征服香港红磡与台北小巨蛋\r\n\r\n成为登上华语乐坛两大指标性舞台的内地男歌手第一人\r\n\r\n从《蒙面唱将》、《中国新声音》、《梦想的声音》\r\n\r\n以独特的李式演唱风格征战各大歌唱真人秀节目\r\n\r\n再到偶像养成真人秀《偶像练习生》的音乐导师\r\n\r\n《无限歌谣季》的无限唱作人、《这！就是歌唱·对唱季》对唱发起人\r\n\r\n再到《中国新说唱》帮唱嘉宾等唱作真人秀节目\r\n\r\n成为两岸三地争相追随与期待的音乐新标的\r\n\r\n从全能音乐人跨界电影演出到各类真人秀\r\n\r\n李荣浩的音乐感染力 李荣浩的独特舞台魅力\r\n\r\n2017年『唱作大神』李荣浩发行第四张全创作大碟【嗯】，专辑发行前以全新打歌思维颠覆华语乐坛，每月主打七连发，启动年度浩计划，短短半年内即创下全亚洲超过十亿次的点播量，李荣浩独特的创作风格和音乐感染力，广大传媒封之『唱作大神』。', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000002PQCmo2azasb.jpg?max_age=2592000');
INSERT INTO `album` VALUES (8, '《学不会》', '2011-12-31', 3, '林俊杰', 'Pop流行', '国语，英语', '录音室专辑', '积累两年时间，横跨上万公里，旅程、时间和陌生的语言，\r\n\r\n距离远了，焦点反而清晰了，连心都跟著透明了…\r\n\r\n[我听见那些旋律在脑海阵阵骚动] ---- 林俊杰恍如Reset，不多不少二年丰沛创作一次尽收！\r\n\r\n去年度发行的「她说概念自选辑」，重新聚焦了林俊杰旺盛的创作能力，唤醒了JJ个人专辑创作外精采佳作的记忆，同时也让我们更惊觉，林俊杰全新创作专辑，已等待许久，酝酿的期待，在2011的尾声推升至沸腾临界。\r\n\r\n郎朗、林夕、方文山、姚若龙、青峰、天天、林秋离、葛大为等创作人联手刻画New JJ\r\n\r\n[ 古典、流行、电子、爵士、中国风等11种多样面貌，各自精彩的林俊杰 ]\r\n\r\n崭新林俊杰 x 全新工作团队\r\n\r\n不着痕迹的完美进阶 无法取代的全心力作\r\n\r\n积累两年时间，横跨上万公里，旅程、时间和陌生的语言，\r\n\r\n距离远了，焦点反而清晰了，连心都跟着透明了…\r\n\r\n[我听见那些旋律在脑海阵阵骚动]\r\n\r\n---- 林俊杰恍如Reset，不多不少二年丰沛创作一次尽收！\r\n\r\n「2009年末开始，我以一种前所未有的状态和情绪继续写着创作，不同于以往的林俊杰，但那其实ㄧ直是某部份的我，只是妥善的收着，还没有被看见过；我甚至离开熟悉的人群、舞台和环境，和自己做一段简单和长的自助旅行；在这两年之间的创作，充满了我生活的点滴、想法和感受，几乎象是用音乐写成的日记，所以当你翻开，会看到迥异于以往的我，像新的我，有点新鲜、有点挑战。」---林俊杰', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000004QnEHc3zjC7J.jpg?max_age=2592000');
INSERT INTO `album` VALUES (9, '《归去来兮》', '2018-10-18', 4, '叶炫清', 'Soundtack', '国语，纯音乐', 'Single', '《归去来兮》由畅和文化出品，郑建浩作曲、朱伟作词、王滔监制，超强阵容打造出一首浓郁复古风的音乐作品，作为《双世宠妃2》的片尾曲，全曲以古筝为基调，融入了磅礴弦乐，行云流水的旋律，加上叶炫清如水一般温柔的嗓音，保持着独有的辨识度，声音厚实却不浑浊，音色清新、饱满也不失细腻的线条，与古典旋律完美融合，唱出了山川流水、清风皓月一般的舒缓大气。\r\n\r\n“愿乘风归去来兮，层层相思落满地，卷起珠帘唯有一袭青衣。梦一场江南烟雨，无愁亦无需惦记，一夜清欢谁在旁白首共齐”，复古旋律和虐心词作演绎出一场动人心弦、跌宕起伏、缠绵悱恻的爱情故事。《归去来兮》在表现上更多是演绎主人公内心独白，繁花皓月，却独自一人对着月亮诉说心事，旋律从平静、诉说之感开始，随着乐曲的深入，旋律的情绪也随之提升，以此表现剧中情绪的一种宣泄。剧中人物也对月袒露心声，无奈繁华看破，流砂褪尽，却仍然斩不断思念的线，依然在故事中等你', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000002SMS5c3qorcc.jpg?max_age=2592000');
INSERT INTO `album` VALUES (10, '《想给你》', '2018-09-20', 4, '钟易轩', 'Pop流行', '国语', 'Single', '成长是一场场告别\r\n\r\n告别盛夏，告别稚嫩，告别过去的自己\r\n\r\n人生是一次次相遇\r\n\r\n遇见花开，遇见花落，遇见不同的风景\r\n\r\n心智渐开，初衷不改\r\n\r\n以爱之名，以梦为马\r\n\r\n感恩相伴，感谢守候\r\n\r\n十七岁，我们有缘相遇\r\n\r\n怀念过往，不畏将来\r\n\r\n十八岁，我们继续同行\r\n\r\n不忘初心，感恩成长\r\n\r\n感谢一路并肩前行的每一个“你”\r\n\r\n不论曾经或是未来，不离不弃，”易”路有你。\r\n\r\n忧郁的嗓音，治愈的歌声\r\n\r\n钟易轩十八岁成人纪念单曲《想给你》新鲜首发', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000003kb9A80XpBBR.jpg?max_age=2592000');
INSERT INTO `album` VALUES (11, '《沙漠骆驼》', '2017-06-19', 4, '展展罗和罗罗', 'Pop流行', '国语，纯音乐', 'Single', '《沙漠骆驼》整首歌曲融入西域色彩，并结合流行和摇滚风格，是一首多元化并存的歌曲。节奏明朗且激昂，又不失欢快俏皮。', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000001ERfY50PCNW6.jpg?max_age=2592000');
INSERT INTO `album` VALUES (12, '《双栖动物》', '2018-09-28', 4, '胡夏', 'Pop流行', '国语', 'Single', '胡夏“陪伴”概念专辑新单《双栖动物》上线\r\n\r\n解构爱情迷失心境\r\n\r\n都市森林里，爱情更像一场追逐游戏：你追逐自由，我只能追逐你，因为这就是我在感情里唯一存在的方式。9月28日零点，胡夏第五张「陪伴」概念专辑最新单曲《双栖动物》释出，解构现代男女沉溺依赖，在爱情里丢失自我的迷失心境。作为新专辑“陪伴”系的第八支单曲，《双栖动物》翻唱自天后蔡健雅的经典之作；透过胡夏清透声线的全“心”演绎，为经典的爱情追逐戏码释放“暖伤”讯号。\r\n\r\n为全情呈现这首经典情歌，胡夏在筹备前就与专辑制作团队多番讨论、推敲，希望借由自己的演绎，唤起歌迷对“自我进化与他人陪伴”这一矛盾主题的思考。因此，胡夏也在录制中积极尝试多种唱法，力求做到最好。值得一提的是，当原本预备发布的《双栖动物》制作完成后，有了新理解、新想法的胡夏不惜推翻成品，全新架构、重置情绪，再次投入到紧张的录制工作中。这一“任性”举动对于胡夏与专辑制作团队来说，正是代表着这张专辑无一不是突破自我、带来诚意的匠心作品，也是胡夏与歌迷之间最好的遇见。\r\n\r\n伴随胡夏清透质感的声线，《双栖动物》开篇即带来失落却温柔的“追逐”独白，增添“夏式vocal”注脚。歌曲经由专辑制作人刘胡轶的精心改编，音乐铺排由简入繁、层层递进，将胡夏细腻不失张力的声线施展得淋漓尽致，为歌迷描绘在爱情里迷失自我的都市男女群像——当迷恋上一个追逐自由、进退自如的“双栖动物”，最沉溺的人是否只能待在原地的适应圈内，无法上岸？在感情里，追逐他人还是进化自我，哪一种选择才是必修课？通过这首“心”曲，胡夏也希望将自己对感情的思考、对自我成长的心境唱给陪伴已久的大家听。\r\n\r\n随着B面第四支翻唱歌曲《双栖动物》发布，胡夏这张精心打磨的“陪伴”概念音乐专辑仍在持续揭晓，以“如呼吸般自然亲切”的理念唤醒金曲时代带给我们的感动。借由胡夏《双栖动物》的陪伴，每一个曾迷失过的我们，都将“进化”为更好的我们，演绎都市森林里专属自我的爱情法则。', 'https://y.gtimg.cn/music/photo_new/T002R300x300M0000019TZUn0vMfjP.jpg?max_age=2592000');
INSERT INTO `album` VALUES (13, '《不及雨》', '2018-09-27', 5, '张碧晨', 'Pop流行', '国语', 'Single', '蜉蝣的轮回是一昼 花的轮回是一季 人的轮回是一生 而初心的轮回是四年 四年蜕变历练 一路向前一路捡拾 也时时回归原点： 不曾忘为什么出发 才会有更好的到达 ——张碧晨2018专辑第五首单曲《不及雨》', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000003eMz0J487bNo.jpg?max_age=2592000');
INSERT INTO `album` VALUES (14, '《心安理得》', '2018-09-21', 5, '王天戈', 'Pop流行', '国语，纯音乐', 'Single', '王天戈新歌《心安理得》首发 动人诠释95后爱情态度\r\n\r\n新晋歌手王天戈的第一支中文单曲《心安理得》全网首发，她用别有韵味的嗓音，演绎了95后“爱情无关对错”的爱情态度。\r\n\r\n自由、随性、洒脱、特立独行，没有刻意的逢迎，王天戈的歌声中带着鲜明的95后烙印。正在纽约大学就读的她，有机会接触最前沿的流行音乐文化，这一经历大大丰富了她对音乐的认知。\r\n\r\n王天戈的嗓音幽婉、淡哑、富有磁性，具有相当高的辨识度，极具感染力。其歌声慵懒中带着优雅，温暖中带着冷调，深情又不失清醒，亦即亦离，游走于大众和自我之间。\r\n\r\n王天戈与众不同的音色和中西合璧的多元化演唱风格，为她打上了国际范的标签。在薛之谦的引荐下，她拜著名声乐教授周筱燕为师，唱功日益精进，并从此与薛之谦、胡彦斌、黄龄等优秀音乐人成为同门。\r\n\r\n《心安理得》表达的是对待无疾而终的爱情的留恋与释然，王天戈用自己独特的嗓音和感悟，完美演绎了歌者由黯然神伤到涣然冰释的层层递进，令人一曲听罢意犹未尽。\r\n\r\n对于被朋友们赞誉为高学历、高颜值、高唱功的“三高”歌手，王天戈回应到：“在歌坛，我还是新人，更希望外界通过音乐来关注我。我相信，通达灵魂的音乐一定会有人感受得到，《心安理得》就是这样的一首歌', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000004dzfVE3kbbiA.jpg?max_age=2592000');
INSERT INTO `album` VALUES (15, '《我不在》', '2018-10-08', 5, '张靓颖', 'Soundtack', '国语', 'Single', '“我不再”是音乐人陈少琪原创音乐剧“爱在星光里”的主题曲，这部剧是他为张学友音乐剧“雪狼湖” 原版编剧20年纪念的全新创作。故事发生在一个叫星光里的老式弄堂，这首歌是女主角小柔决定要离开与她一起长大的伙伴童菲，同时发现当年父亲遗弃她一去不返的秘密时，在绝望中唱出的一首歌。前半段靓颖的嗓音哀怨而伤感，后半段强而有力的唱功完全是小柔坚强面对命运来临的呐喊。韩国制作人Nick Pyo也功不可没，大气的百老汇式编曲为歌曲增加不少舞台感。', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000003Ekbxt2GHHPp.jpg?max_age=2592000');
INSERT INTO `album` VALUES (17, '《时间停了》', '2018-09-27', 5, '鹿晗', 'Pop流行', '国语', 'Single', '给一起成长的你们。 这一次，鹿晗从探索未知到回归经典，用最简单的钢琴配乐，最纯粹的嗓音，唱给所有想要记住的美好经过。 给“不善言辞”的你们，给一起成长的你', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000002S5cfR02Supm.jpg?max_age=2592000');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `commentid` int(100) NOT NULL AUTO_INCREMENT,
  `ccontent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cdata` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
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
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, '233', '2018-09-29 00:00:00', NULL, 1, NULL, NULL, 1, 1, '点点', '2018-10-02');
INSERT INTO `comment` VALUES (3, '345566', '2018-10-23 00:00:00', NULL, NULL, NULL, NULL, NULL, 1, '梦妮', '2018-10-08');
INSERT INTO `comment` VALUES (4, '4567', '2018-10-23 00:00:00', NULL, NULL, 1, NULL, NULL, 1, 'zz', '2018-10-09');
INSERT INTO `comment` VALUES (5, '6789', '2018-10-05 00:00:00', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `comment` VALUES (6, '世界崩塌了', '2018-10-21 19:23:32', 'id', NULL, NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `comment` VALUES (13, '得不到的永远在骚动', '2018-10-21 19:21:24', 'zj', 2, NULL, 1, NULL, NULL, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES (1, '年少有为', 1, '', 'https://y.gtimg.cn/music/photo_new/T002R90x90M000004QnEHc3zjC7J.jpg?http://p1.music.126.net/tt8xwK-ASC2iqXNUXYKoDQ==/109951163606377163.jpg?https://y.gtimg.cn/music/photo_new/T002R90x90M000004QnEHc3zjC7J.jpg?max_age=2592000', NULL, NULL, 1, NULL, NULL, '内地', '李荣浩', '04:39');
INSERT INTO `song` VALUES (2, '戒烟', 1, NULL, 'https://y.gtimg.cn/music/photo_new/T002R90x90M000003JcvIk3zRsZl.jpg?max_age=2592000', NULL, NULL, 1, NULL, NULL, '内地', '李荣浩', '04:54');
INSERT INTO `song` VALUES (3, '老街', 1, NULL, 'https://y.gtimg.cn/music/photo_new/T002R90x90M0000023wXWz1niBQS.jpg?max_age=2592000', NULL, NULL, 2, NULL, NULL, '内地', '李荣浩', '05:18');
INSERT INTO `song` VALUES (4, '李白', 1, NULL, 'https://y.gtimg.cn/music/photo_new/T002R300x300M000004AhJHV3slLjN.jpg?max_age=2592000', NULL, NULL, 2, NULL, NULL, '内地', '李荣浩', '04:33');
INSERT INTO `song` VALUES (5, '不将就', 1, NULL, 'https://y.gtimg.cn/music/photo_new/T002R300x300M000001fi1zG0EjU2u.jpg?max_age=2592000', NULL, NULL, 1, NULL, NULL, '内地', '李荣浩', '05:12');
INSERT INTO `song` VALUES (6, '模特', 1, NULL, 'https://y.gtimg.cn/music/photo_new/T002R300x300M000004AhJHV3slLjN.jpg?max_age=2592000', NULL, NULL, 2, NULL, NULL, '港台', '李荣浩', '05:16');
INSERT INTO `song` VALUES (7, '作曲家', 1, NULL, 'https://y.gtimg.cn/music/photo_new/T002R300x300M0000029sjwR42NOu9.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, '港台', '李荣浩', '05:13');
INSERT INTO `song` VALUES (8, '乐团', 1, NULL, 'https://y.gtimg.cn/music/photo_new/T002R300x300M000002O4q192lEA83.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, '欧美', '李荣浩', '03:25');
INSERT INTO `song` VALUES (9, '念念又不忘', 1, NULL, 'https://y.gtimg.cn/music/photo_new/T002R300x300M000004QnEHc3zjC7J.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, '欧美', '李荣浩', '5:42');
INSERT INTO `song` VALUES (10, '成长之重量', 1, NULL, 'https://y.gtimg.cn/music/photo_new/T002R300x300M000004QnEHc3zjC7J.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, '韩国', '李荣浩', '05:37');
INSERT INTO `song` VALUES (11, '龙卷风', 9, '龙卷风 - 周杰伦 (Jay Chou)\r\n\r\n词：徐若瑄\r\n\r\n曲：周杰伦\r\n\r\n编曲：周杰伦\r\n\r\n制作人：周杰伦\r\n\r\n爱像一阵风 吹完它就走\r\n\r\n这样的节奏 谁都无可奈何\r\n\r\n没有你以后 我灵魂失控\r\n\r\n黑云在降落 我被它拖着走\r\n\r\n静静悄悄默默离开\r\n\r\n陷入了危险边缘Baby\r\n\r\n我的世界已狂风暴雨 wu\r\n\r\n爱情来的太快 就像龙卷风\r\n\r\n离不开暴风圈 来不及逃\r\n\r\n我不能再想 我不能再想\r\n\r\n我不 我不 我不能\r\n\r\n爱情走的太快 就像龙卷风\r\n\r\n不能承受 我已无处可躲\r\n\r\n我不要再想 我不要再想\r\n\r\n我不 我不 我不要再想你\r\n\r\n不知不觉 你已经离开我\r\n\r\n不知不觉 我跟了这节奏\r\n\r\n后知后觉 又过了一个秋\r\n\r\n后知后觉 我该好好生活\r\n\r\n静静悄悄默默离开\r\n\r\n陷入了危险边缘Baby\r\n\r\n我的世界已狂风暴雨 wu\r\n\r\n爱情来的太快 就像龙卷风\r\n\r\n离不开暴风圈 来不及逃\r\n\r\n我不能再想 我不能再想\r\n\r\n我不 我不 我不能\r\n\r\n爱情走的太快 就像龙卷风\r\n\r\n不能承受 我已无处可躲\r\n\r\n我不要再想 我不要再想\r\n\r\n我不 我不 我不要再想你\r\n\r\n爱情来的太快 就像龙卷风\r\n\r\n离不开暴风圈 来不及逃\r\n\r\n我不能再想 我不能再想\r\n\r\n我不 我不 我不能\r\n\r\n爱情走的太快 就像龙卷风\r\n\r\n不能承受 我已无处可躲\r\n\r\n我不要再想 我不要再想\r\n\r\n我不 我不 我不要再想你\r\n\r\n不知不觉 你已经离开我\r\n\r\n不知不觉 我跟了这节奏\r\n\r\n后知后觉 又过了一个秋\r\n\r\n后知后觉 我该好好生活\r\n\r\n不知不觉 你已经离开我\r\n\r\n不知不觉 我跟了这节奏\r\n\r\n后知后觉 又过了一个秋\r\n\r\n后知后觉 我该好好生活\r\n\r\n不知不觉 你已经离开我\r\n\r\n不知不觉 我跟了这节奏\r\n\r\n后知后觉 后知后觉', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000001UyUjq2QzMMF.jpg?max_age=2592000', NULL, 1, NULL, NULL, NULL, '港台', '周杰伦', '04:10');
INSERT INTO `song` VALUES (12, '告白气球', 9, '告白气球 - 周杰伦 (Jay Chou)\r\n\r\n词：方文山\r\n\r\n曲：周杰伦\r\n\r\n塞纳河畔 左岸的咖啡\r\n\r\n我手一杯 品尝你的美\r\n\r\n留下唇印的嘴\r\n\r\n花店玫瑰 名字写错谁\r\n\r\n告白气球 风吹到对街\r\n\r\n微笑在天上飞\r\n\r\n你说你有点难追\r\n\r\n想让我知难而退\r\n\r\n礼物不需挑最贵\r\n\r\n只要香榭的落叶\r\n\r\n喔 营造浪漫的约会\r\n\r\n不害怕搞砸一切\r\n\r\n拥有你就拥有全世界\r\n\r\n亲爱的 爱上你\r\n\r\n从那天起\r\n\r\n甜蜜的很轻易\r\n\r\n亲爱的 别任性\r\n\r\n你的眼睛\r\n\r\n在说我愿意\r\n\r\n塞纳河畔 左岸的咖啡\r\n\r\n我手一杯 品尝你的美\r\n\r\n留下唇印的嘴\r\n\r\n花店玫瑰 名字写错谁\r\n\r\n告白气球 风吹到对街\r\n\r\n微笑在天上飞\r\n\r\n你说你有点难追\r\n\r\n想让我知难而退\r\n\r\n礼物不需挑最贵\r\n\r\n只要香榭的落叶\r\n\r\n喔 营造浪漫的约会\r\n\r\n不害怕搞砸一切\r\n\r\n拥有你就拥有 全世界\r\n\r\n亲爱的 爱上你\r\n\r\n从那天起\r\n\r\n甜蜜的很轻易\r\n\r\n亲爱的 别任性\r\n\r\n你的眼睛\r\n\r\n在说我愿意\r\n\r\n亲爱的 爱上你\r\n\r\n恋爱日记\r\n\r\n飘香水的回忆\r\n\r\n一整瓶 的梦境\r\n\r\n全都有你\r\n\r\n搅拌在一起\r\n\r\n亲爱的别任性\r\n\r\n你的眼睛\r\n\r\n在说我愿意\r\n\r\n告白气球 - 周杰伦 (Jay Chou)\r\n\r\n词：方文山\r\n\r\n曲：周杰伦\r\n\r\n塞纳河畔 左岸的咖啡\r\n\r\n我手一杯 品尝你的美\r\n\r\n留下唇印的嘴\r\n\r\n花店玫瑰 名字写错谁\r\n\r\n告白气球 风吹到对街\r\n\r\n微笑在天上飞\r\n\r\n你说你有点难追\r\n\r\n想让我知难而退\r\n\r\n礼物不需挑最贵\r\n\r\n只要香榭的落叶\r\n\r\n喔 营造浪漫的约会\r\n\r\n不害怕搞砸一切\r\n\r\n拥有你就拥有全世界\r\n\r\n亲爱的 爱上你\r\n\r\n从那天起\r\n\r\n甜蜜的很轻易\r\n\r\n亲爱的 别任性\r\n\r\n你的眼睛\r\n\r\n在说我愿意\r\n\r\n塞纳河畔 左岸的咖啡\r\n\r\n我手一杯 品尝你的美\r\n\r\n留下唇印的嘴\r\n\r\n花店玫瑰 名字写错谁\r\n\r\n告白气球 风吹到对街\r\n\r\n微笑在天上飞\r\n\r\n你说你有点难追\r\n\r\n想让我知难而退\r\n\r\n礼物不需挑最贵\r\n\r\n只要香榭的落叶\r\n\r\n喔 营造浪漫的约会\r\n\r\n不害怕搞砸一切\r\n\r\n拥有你就拥有 全世界\r\n\r\n亲爱的 爱上你\r\n\r\n从那天起\r\n\r\n甜蜜的很轻易\r\n\r\n亲爱的 别任性\r\n\r\n你的眼睛\r\n\r\n在说我愿意\r\n\r\n亲爱的 爱上你\r\n\r\n恋爱日记\r\n\r\n飘香水的回忆\r\n\r\n一整瓶 的梦境\r\n\r\n全都有你\r\n\r\n搅拌在一起\r\n\r\n亲爱的别任性\r\n\r\n你的眼睛\r\n\r\n在说我愿意\r\n\r\n告白气球 - 周杰伦 (Jay Chou)\r\n\r\n词：方文山\r\n\r\n曲：周杰伦\r\n\r\n塞纳河畔 左岸的咖啡\r\n\r\n我手一杯 品尝你的美\r\n\r\n留下唇印的嘴\r\n\r\n花店玫瑰 名字写错谁\r\n\r\n告白气球 风吹到对街\r\n\r\n微笑在天上飞\r\n\r\n你说你有点难追\r\n\r\n想让我知难而退\r\n\r\n礼物不需挑最贵\r\n\r\n只要香榭的落叶\r\n\r\n喔 营造浪漫的约会\r\n\r\n不害怕搞砸一切\r\n\r\n拥有你就拥有全世界\r\n\r\n亲爱的 爱上你\r\n\r\n从那天起\r\n\r\n甜蜜的很轻易\r\n\r\n亲爱的 别任性\r\n\r\n你的眼睛\r\n\r\n在说我愿意\r\n\r\n塞纳河畔 左岸的咖啡\r\n\r\n我手一杯 品尝你的美\r\n\r\n留下唇印的嘴\r\n\r\n花店玫瑰 名字写错谁\r\n\r\n告白气球 风吹到对街\r\n\r\n微笑在天上飞\r\n\r\n你说你有点难追\r\n\r\n想让我知难而退\r\n\r\n礼物不需挑最贵\r\n\r\n只要香榭的落叶\r\n\r\n喔 营造浪漫的约会\r\n\r\n不害怕搞砸一切\r\n\r\n拥有你就拥有 全世界\r\n\r\n亲爱的 爱上你\r\n\r\n从那天起\r\n\r\n甜蜜的很轻易\r\n\r\n亲爱的 别任性\r\n\r\n你的眼睛\r\n\r\n在说我愿意\r\n\r\n亲爱的 爱上你\r\n\r\n恋爱日记\r\n\r\n飘香水的回忆\r\n\r\n一整瓶 的梦境\r\n\r\n全都有你\r\n\r\n搅拌在一起\r\n\r\n亲爱的别任性\r\n\r\n你的眼睛\r\n\r\n在说我愿意', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000003RMaRI1iFoYd.jpg?max_age=2592000', NULL, 2, NULL, NULL, NULL, '港台', '周杰伦', '03:35');
INSERT INTO `song` VALUES (13, '等你下课', 9, '等你下课(with 杨瑞代) - 周杰伦 (Jay Chou)\r\n\r\n词：周杰伦\r\n\r\n曲：周杰伦\r\n\r\nJay：你住的 巷子里\r\n\r\n我租了一间公寓\r\n\r\n为了想与你不期而遇\r\n\r\n高中三年 我为什么\r\n\r\n为什么不好好读书\r\n\r\n没考上跟你一样的大学\r\n\r\n我找了份工作\r\n\r\n离你宿舍很近\r\n\r\n当我开始学会做蛋饼\r\n\r\n才发现你 不吃早餐\r\n\r\n喔 你又擦肩而过\r\n\r\n你耳机听什么\r\n\r\n能不能告诉我\r\n\r\n合：躺在你学校的操场看星空\r\n\r\n教室里的灯还亮着你没走\r\n\r\n记得 我写给你的情书\r\n\r\n都什么年代了\r\n\r\n到现在我还在写着\r\n\r\n总有一天总有一年会发现\r\n\r\n有人默默的陪在你的身边\r\n\r\n也许 我不该在你的世界\r\n\r\n当你收到情书\r\n\r\n也代表我已经走远\r\n\r\nGary：学校旁 的广场\r\n\r\n我在这等钟声响\r\n\r\n等你下课一起走好吗\r\n\r\nJay：弹着琴 唱你爱的歌\r\n\r\n暗恋一点都不痛苦\r\n\r\nGary：一点都不痛苦\r\n\r\nJay：痛苦的是你\r\n\r\n合：根本没看我\r\n\r\nJay：我唱这么走心\r\n\r\nGary：这么走心\r\n\r\nJay：却走不进你心里\r\n\r\nGary：进你心里\r\n\r\nJay：在人来人往\r\n\r\n合：找寻着你 守护着你\r\n\r\n不求结局\r\n\r\n合：喔\r\n\r\nGary：你又擦肩\r\n\r\n合：而过\r\n\r\nJay：我唱告白气球\r\n\r\n终于你回了头\r\n\r\n合：躺在你学校的操场看星空\r\n\r\n教室里的灯还亮着你没走\r\n\r\n记得 我写给你的情书\r\n\r\n都什么年代了\r\n\r\n到现在我还在写着\r\n\r\n总有一天总有一年会发现\r\n\r\n有人默默的陪在你的身边\r\n\r\n也许 我不该在你的世界\r\n\r\n当你收到情书\r\n\r\n也代表我已经走远', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000003bSL0v4bpKAx.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, '港台', '周杰伦', '04:30');
INSERT INTO `song` VALUES (14, '稻香', 9, '稻香 - 周杰伦 (Jay Chou)\r\n\r\n词：周杰伦\r\n\r\n曲：周杰伦\r\n\r\n对这个世界如果你有太多的抱怨\r\n\r\n跌倒了就不敢继续往前走\r\n\r\n为什么人要这么的脆弱堕落\r\n\r\n请你打开电视看看\r\n\r\n多少人为生命在努力勇敢的走下去\r\n\r\n我们是不是该知足\r\n\r\n珍惜一切就算没有拥有\r\n\r\n还记得你说家是唯一的城堡\r\n\r\n随着稻香河流继续奔跑\r\n\r\n微微笑 小时候的梦我知道\r\n\r\n不要哭让萤火虫带着你逃跑\r\n\r\n乡间的歌谣永远的依靠\r\n\r\n回家吧 回到最初的美好\r\n\r\n不要这么容易就想放弃\r\n\r\n就像我说的\r\n\r\n追不到的梦想换个梦不就得了\r\n\r\n为自己的人生鲜艳上色\r\n\r\n先把爱涂上喜欢的颜色\r\n\r\n笑一个吧\r\n\r\n功成名就不是目的\r\n\r\n让自己快乐快乐这才叫做意义\r\n\r\n童年的纸飞机\r\n\r\n现在终于飞回我手里\r\n\r\n所谓的那快乐\r\n\r\n赤脚在田里追蜻蜓追到累了\r\n\r\n偷摘水果被蜜蜂给叮到怕了\r\n\r\n谁在偷笑呢\r\n\r\n我靠着稻草人\r\n\r\n吹着风 唱着歌 睡着了\r\n\r\n午后吉他在虫鸣中更清脆\r\n\r\n阳光洒在路上就不怕心碎\r\n\r\n珍惜一切 就算没有拥有\r\n\r\n还记得你说家是唯一的城堡\r\n\r\n随着稻香河流继续奔跑\r\n\r\n微微笑 小时候的梦我知道\r\n\r\n不要哭让萤火虫带着你逃跑\r\n\r\n乡间的歌谣永远的依靠\r\n\r\n回家吧 回到最初的美好\r\n\r\n还记得你说家是唯一的城堡\r\n\r\n随着稻香河流继续奔跑\r\n\r\n微微笑 小时候的梦我知道\r\n\r\n不要哭让萤火虫带着你逃跑\r\n\r\n乡间的歌谣永远的依靠\r\n\r\n回家吧 回到最初的美好', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000002Neh8l0uciQZ.jpg?max_age=2592000', NULL, 3, NULL, NULL, NULL, '港台', '周杰伦', '03:43');
INSERT INTO `song` VALUES (15, '晴天', 9, '晴天 - 周杰伦 (Jay Chou)\r\n\r\n词：周杰伦\r\n\r\n曲：周杰伦\r\n\r\n编曲：周杰伦\r\n\r\n故事的小黄花\r\n\r\n从出生那年就飘着\r\n\r\n童年的荡秋千\r\n\r\n随记忆一直晃到现在\r\n\r\nRe So So Si Do Si La\r\n\r\nSo La Si Si Si Si La Si La So\r\n\r\n吹着前奏望着天空\r\n\r\n我想起花瓣试着掉落\r\n\r\n为你翘课的那一天\r\n\r\n花落的那一天\r\n\r\n教室的那一间\r\n\r\n我怎么看不见\r\n\r\n消失的下雨天\r\n\r\n我好想再淋一遍\r\n\r\n没想到失去的勇气我还留着\r\n\r\n好想再问一遍\r\n\r\n你会等待还是离开\r\n\r\n刮风这天我试过握着你手\r\n\r\n但偏偏雨渐渐大到我看你不见\r\n\r\n还要多久我才能在你身边\r\n\r\n等到放晴的那天也许我会比较好一点\r\n\r\n从前从前有个人爱你很久\r\n\r\n但偏偏风渐渐把距离吹得好远\r\n\r\n好不容易又能再多爱一天\r\n\r\n但故事的最后你好像还是说了拜拜\r\n\r\n为你翘课的那一天\r\n\r\n花落的那一天\r\n\r\n教室的那一间\r\n\r\n我怎么看不见\r\n\r\n消失的下雨天\r\n\r\n我好想再淋一遍\r\n\r\n没想到失去的勇气我还留着\r\n\r\n好想再问一遍\r\n\r\n你会等待还是离开\r\n\r\n刮风这天我试过握着你手\r\n\r\n但偏偏雨渐渐大到我看你不见\r\n\r\n还要多久我才能在你身边\r\n\r\n等到放晴的那天也许我会比较好一点\r\n\r\n从前从前有个人爱你很久\r\n\r\n偏偏风渐渐把距离吹得好远\r\n\r\n好不容易又能再多爱一天\r\n\r\n但故事的最后你好像还是说了拜拜\r\n\r\n刮风这天我试过握着你手\r\n\r\n但偏偏雨渐渐大到我看你不见\r\n\r\n还要多久我才能够在你身边\r\n\r\n等到放晴那天也许我会比较好一点\r\n\r\n从前从前有个人爱你很久\r\n\r\n但偏偏雨渐渐把距离吹得好远\r\n\r\n好不容易又能再多爱一天\r\n\r\n但故事的最后你好像还是说了拜', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000000MkMni19ClKG.jpg?max_age=2592000', NULL, 3, NULL, NULL, NULL, '港台', '周杰伦', '04:29');
INSERT INTO `song` VALUES (16, '青花瓷', 9, '青花瓷 - 周杰伦 (Jay Chou)\r\n\r\n词：方文山\r\n\r\n曲：周杰伦\r\n\r\n编曲：钟兴民\r\n\r\n素胚勾勒出青花笔锋浓转淡\r\n\r\n瓶身描绘的牡丹一如你初妆\r\n\r\n冉冉檀香透过窗心事我了然\r\n\r\n宣纸上走笔至此搁一半\r\n\r\n釉色渲染仕女图韵味被私藏\r\n\r\n而你嫣然的一笑如含苞待放\r\n\r\n你的美一缕飘散\r\n\r\n去到我去不了的地方\r\n\r\n天青色等烟雨 而我在等你\r\n\r\n炊烟袅袅升起 隔江千万里\r\n\r\n在瓶底书汉隶仿前朝的飘逸\r\n\r\n就当我为遇见你伏笔\r\n\r\n天青色等烟雨 而我在等你\r\n\r\n月色被打捞起 晕开了结局\r\n\r\n如传世的青花瓷自顾自美丽\r\n\r\n你眼带笑意\r\n\r\n色白花青的锦鲤跃然于碗底\r\n\r\n临摹宋体落款时却惦记着你\r\n\r\n你隐藏在窑烧里千年的秘密\r\n\r\n极细腻犹如绣花针落地\r\n\r\n帘外芭蕉惹骤雨门环惹铜绿\r\n\r\n而我路过那江南小镇惹了你\r\n\r\n在泼墨山水画里\r\n\r\n你从墨色深处被隐去\r\n\r\n天青色等烟雨 而我在等你\r\n\r\n炊烟袅袅升起 隔江千万里\r\n\r\n在瓶底书汉隶仿前朝的飘逸\r\n\r\n就当我为遇见你伏笔\r\n\r\n天青色等烟雨 而我在等你\r\n\r\n月色被打捞起 晕开了结局\r\n\r\n如传世的青花瓷自顾自美丽\r\n\r\n你眼带笑意\r\n\r\n天青色等烟雨 而我在等你\r\n\r\n炊烟袅袅升起 隔江千万里\r\n\r\n在瓶底书汉隶仿前朝的飘逸\r\n\r\n就当我为遇见你伏笔\r\n\r\n天青色等烟雨 而我在等你\r\n\r\n月色被打捞起 晕开了结局\r\n\r\n如传世的青花瓷自顾自美丽\r\n\r\n你眼带笑意', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000002eFUFm2XYZ7z.jpg?max_age=2592000', NULL, 3, NULL, NULL, NULL, '港台', '周杰伦', '03:59');
INSERT INTO `song` VALUES (17, '简单爱', 9, '简单爱 - 周杰伦 (Jay Chou)\r\n\r\n词：徐若瑄\r\n\r\n曲：周杰伦\r\n\r\n编曲：林迈可\r\n\r\n说不上为什么 我变得很主动\r\n\r\n若爱上一个人 什么都会值得去做\r\n\r\n我想大声宣布 对你依依不舍\r\n\r\n连隔壁邻居都猜到我现在的感受\r\n\r\n河边的风 在吹着头发 飘动\r\n\r\n牵着你的手 一阵莫名感动\r\n\r\n我想带你 回我的外婆家\r\n\r\n一起看着日落 一直到我们都睡着\r\n\r\n我想就这样牵着你的手不放开\r\n\r\n爱能不能够永远单纯没有悲哀\r\n\r\n我 想带你骑单车\r\n\r\n我 想和你看棒球\r\n\r\n想这样没担忧\r\n\r\n唱着歌 一直走\r\n\r\n我想就这样牵着你的手不放开\r\n\r\n爱可不可以简简单单没有伤害\r\n\r\n你 靠着我的肩膀\r\n\r\n你 在我胸口睡着\r\n\r\n像这样的生活\r\n\r\n我爱你 你爱我\r\n\r\n想 简简单单 爱\r\n\r\n想 简简单单 爱\r\n\r\n我想大声宣布 对你依依不舍\r\n\r\n连隔壁邻居都猜到我现在的感受\r\n\r\n河边的风 在吹着头发 飘动\r\n\r\n牵着你的手 一阵莫名感动\r\n\r\n我想带你 回我的外婆家\r\n\r\n一起看着日落 一直到我们都睡着\r\n\r\n我想就这样牵着你的手不放开\r\n\r\n爱能不能够永远单纯没有悲哀\r\n\r\n我 想带你骑单车\r\n\r\n我 想和你看棒球\r\n\r\n想这样没担忧\r\n\r\n唱着歌 一直走\r\n\r\n我想就这样牵着你的手不放开\r\n\r\n爱可不可以简简单单没有伤害\r\n\r\n你 靠着我的肩膀\r\n\r\n你 在我胸口睡着\r\n\r\n像这样的生活\r\n\r\n我爱你 你爱我\r\n\r\n想 简简单单 爱\r\n\r\n想 简简单单 爱\r\n\r\n我想就这样牵着你的手不放开\r\n\r\n爱能不能够永远单纯没有悲哀\r\n\r\n我 想带你骑单车\r\n\r\n我 想和你看棒球\r\n\r\n想这样没担忧\r\n\r\n唱着歌 一直走\r\n\r\n我想就这样牵着你的手不放开\r\n\r\n爱可不可以简简单单没有伤害\r\n\r\n你 靠着我的肩膀\r\n\r\n你 在我胸口睡着\r\n\r\n像这样的生活\r\n\r\n我爱你 你爱我', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000000I5jJB3blWeN.jpg?max_age=2592000', NULL, 2, NULL, NULL, NULL, '港台', '周杰伦', '04:31');
INSERT INTO `song` VALUES (18, '七里香', 9, '七里香 - 周杰伦 (Jay Chou)\r\n\r\n词：方文山\r\n\r\n曲：周杰伦\r\n\r\n编曲：钟兴民\r\n\r\n窗外的麻雀在电线杆上多嘴\r\n\r\n你说这一句很有夏天的感觉\r\n\r\n手中的铅笔在纸上来来回回\r\n\r\n我用几行字形容你是我的谁\r\n\r\n秋刀鱼的滋味猫跟你都想了解\r\n\r\n初恋的香味就这样被我们寻回\r\n\r\n那温暖的阳光像刚摘的鲜艳草莓\r\n\r\n你说你舍不得吃掉这一种感觉\r\n\r\n雨下整夜我的爱溢出就像雨水\r\n\r\n院子落叶跟我的思念厚厚一叠\r\n\r\n几句是非也无法将我的热情冷却\r\n\r\n你出现在我诗的每一页\r\n\r\n雨下整夜我的爱溢出就像雨水\r\n\r\n窗台蝴蝶像诗里纷飞的美丽章节\r\n\r\n我接着写\r\n\r\n把永远爱你写进诗的结尾\r\n\r\n你是我唯一想要的了解\r\n\r\n雨下整夜我的爱溢出就像雨水\r\n\r\n院子落叶跟我的思念厚厚一叠\r\n\r\n几句是非也无法将我的热情冷却\r\n\r\n你出现在我诗的每一页\r\n\r\n那饱满的稻穗幸福了这个季节\r\n\r\n而你的脸颊像田里熟透的蕃茄\r\n\r\n你突然对我说七里香的名字很美\r\n\r\n我此刻却只想亲吻你倔强的嘴\r\n\r\n雨下整夜我的爱溢出就像雨水\r\n\r\n院子落叶跟我的思念厚厚一叠\r\n\r\n几句是非也无法将我的热情冷却\r\n\r\n你出现在我诗的每一页\r\n\r\n整夜我的爱溢出就像雨水\r\n\r\n窗台蝴蝶像诗里纷飞的美丽章节\r\n\r\n我接着写\r\n\r\n把永远爱你写进诗的结尾\r\n\r\n你是我唯一想要的了解', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000003DFRzD192KKD.jpg?max_age=2592000', NULL, 4, NULL, NULL, NULL, '港台', '周杰伦', '04:59');
INSERT INTO `song` VALUES (19, '夜曲', 9, '夜曲 - 周杰伦词：方文山曲：周杰伦编曲：林迈可一群嗜血的蚂蚁 被腐肉所吸引我面无表情 看孤独的风景失去你 爱恨开始分明失去你 还有什么事好关心当鸽子不再象征和平我终于被提醒广场上喂食的是秃鹰我用漂亮的押韵形容被掠夺一空的爱情啊 乌云开始遮蔽 夜色不干净公园里 葬礼的回音 在漫天飞行送你的白色玫瑰在纯黑的环境凋零乌鸦在树枝上诡异的很安静静静听 我黑色的大衣想温暖你日渐冰冷的回忆走过的 走过的 生命啊 四周弥漫雾气我在空旷的墓地老去后还爱你为你弹奏肖邦的夜曲纪念我死去的爱情跟夜风一样的声音心碎的很好听手在键盘敲很轻我给的思念很小心你埋葬的地方叫幽冥为你弹奏肖邦的夜曲纪念我死去的爱情而我为你隐姓埋名在月光下弹琴对你心跳的感应还是如此温热亲近怀念你那鲜红的唇印那些断翅的蜻蜓 散落在这森林而我的眼睛 没有丝毫同情失去你 泪水混浊不清失去你 我连笑容都有阴影风在长满青苔的屋顶嘲笑我的伤心像一口没有水的枯井我用凄美的字型描绘后悔莫及的那爱情为你弹奏肖邦的夜曲纪念我死去的爱情跟夜风一样的声音心碎的很好听手在键盘敲很轻我给的思念很小心你埋葬的地方叫幽冥为你弹奏肖邦的夜曲纪念我死去的爱情而我为你隐姓埋名在月光下弹琴对你心跳的感应还是如此温热亲近怀念你那鲜红的唇印一群嗜血的蚂蚁 被腐肉所吸引我面无表情 看孤独的风景失去你 爱恨开始分明失去你 还有什么事好关心当鸽子不再象征和平我终于被提醒广场上喂食的是秃鹰我用漂亮的押韵形容被掠夺一空的爱情', 'https://y.gtimg.cn/music/photo_new/T002R300x300M0000024bjiL2aocxT.jpg?max_age=2592000', NULL, 4, NULL, NULL, NULL, '港台', '周杰伦', '03:46');
INSERT INTO `song` VALUES (20, '退后', 9, '退后 - 周杰伦 (Jay Chou)词：宋健彰曲：周杰伦编曲：林迈可天空灰得像哭过离开你以后 并没有 更自由酸酸的空气 嗅出我们的距离一幕锥心的结局像呼吸般无法停息抽屉泛黄的日记榨干了回忆那笑容 是夏季你我的过去被顺时针的忘记缺氧过后的爱情粗心的眼泪是多余我知道你我都没有错只是忘了怎么退后信誓旦旦给了承诺却被时间扑了空我知道我们都没有错只是放手会比较好过最美的爱情 回忆里待续天空灰得像哭过离开你以后 并没有 更自由酸酸的空气 嗅出我们的距离一幕锥心的结局像呼吸般无法停息抽屉泛黄的日记榨干了回忆那笑容 是夏季你我的过去被顺时针的忘记缺氧过后的爱情粗心的眼泪是多余我知道你我都没有错只是忘了怎么退后信誓旦旦给了承诺却被时间扑了空我知道我们都没有错只是放手会比较好过最美的爱情 回忆里待续我知道你我都没有错只是忘了怎么退后信誓旦旦给了承诺却被时间扑了空我知道我们都没有错只是放手会比较好过最美的爱情 回忆里待续', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000002jLGWe16Tf1H.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, '港台', '周杰伦', '04:21');
INSERT INTO `song` VALUES (21, '醉赤壁', 2, '醉赤壁 (《赤壁Online》网游主题曲) - 林俊杰 (JJ Lin)词：方文山曲：林俊杰编曲：谢占隽落叶堆积了好几层 而我踩过青春听见 前世谁在泪语纷纷一次缘分结一次绳 我今生还在等一世 就只能有一次的认真确认过眼神 我遇上对的人我挥剑转身 而鲜血如红唇前朝记忆渡红尘 伤人的不是刀刃是你转世而来的魂确认过眼神 我遇上对的人我策马出征 马蹄声如泪奔青石板上的月光照进这山城我一路的跟 你轮回声我对你用情极深洛阳城旁的老树根 像回忆般延伸你问 经过是谁的心跳声我拿醇酒一坛饮恨 你那千年眼神是我 醉醉坠入赤壁的 伤痕确认过眼神 我遇上对的人我挥剑转身 而鲜血如红唇前朝记忆渡红尘 伤人的不是刀刃是你转世而来的魂确认过眼神 我遇上对的人我策马出征 马蹄声如泪奔青石板上的月光照进这山城我一路的跟 你轮回声我对你用情极深确认过眼神 我遇上对的人我策马出征 马蹄声如泪奔青石板上的月光照进这山城我一路的跟 你轮回声我对你用情极深我一路的跟 你轮回声我对你用情极深', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000002g6zv02X7SNi.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, '', '林俊杰', '04:41');
INSERT INTO `song` VALUES (22, '那些你很冒险的梦', 2, '那些你很冒险的梦 - 林俊杰 (JJ Lin)词：王雅君曲：林俊杰当两颗心开始震动当你瞳孔学会闪躲当爱慢慢被遮住只剩下黑距离像影子被拉拖当爱的故事剩听说我找不到你单纯的面孔当生命每分每秒都为你转动心多执着就加倍心痛那些你很冒险的梦 我陪你去疯折纸飞机 碰到雨天 终究会坠落太残忍的话我直说 因为爱很重你却不想懂 只往反方向走哦 当爱的故事剩听说我找不到你单纯的面孔当生命每分每秒都为你转动心有多执着就加倍心痛那些你很冒险的梦 我陪你去疯折纸飞机 碰到雨天 终究会坠落太残忍的话我直说 因为爱很重你却不想懂 只往反方向走我不想放手 你松开的左手你爱的放纵 我白不回天空我输了 累了但你 再也 不回头那些你很冒险的梦 我陪你去疯折纸飞机 碰到雨天 终究会坠落太残忍的话我直说 因为爱很重你却不想懂 只往反方向走你真的不懂 我的爱已降落', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000002PQCmo2azasb.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '林俊杰', '04:05');
INSERT INTO `song` VALUES (23, '可惜没如果', 2, '可惜没如果 (If Only…) (《这！就是街舞》第八期背景音乐|《杜鹃之巢》韩剧中文主题曲|《对我而言，可爱的她》韩剧中文片尾曲) - 林俊杰 (JJ Lin)词：林夕曲：林俊杰假如把犯得起的错能错的都错过应该还来得及去悔过假如没把一切说破那一场小风波 将一笑带过在感情面前 讲什么自我要得过且过 才好过全都怪我不该沉默时沉默 该勇敢时软弱如果不是我误会自己洒脱 让我们难过可当初的你 和现在的我假如重来过倘若那天把该说的话好好说该体谅的不执着如果那天我不受情绪挑拨你会怎么做那么多如果 可能如果我可惜没如果 只剩下结果如果早点了解那率性的你或者晚一点遇上成熟的我不过 oh全都怪我不该沉默时沉默 该勇敢时软弱如果不是我误会自己洒脱 让我们难过可当初的你 和现在的我假如重来过倘若那天把该说的话好好说该体谅的不执着如果那天我不受情绪挑拨你会怎么做那么多如果 可能如果我可惜没如果 没有你和我都怪我不该沉默时沉默 该勇敢时软弱如果不是我误会自己洒脱 让我们难过可当初的你 和现在的我假如重来过倘若那天把该说的话好好说该体谅的不执着如果那天我不受情绪挑拨你会怎么做那么多如果 可能如果我可惜没如果只剩下结果可惜没如果', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000001IV22P1RDX7p.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '林俊杰', '04：58');
INSERT INTO `song` VALUES (24, '当你', 2, '当你 (Whenever) - 林俊杰 (JJ Lin)词：张思尔曲：林俊杰如果有一天我回到从前回到最原始的我你是否会觉得我不错如果有一天我离你遥远不能再和你相约你是否会发觉我已经说再见当你的眼睛眯着笑当你喝可乐当你吵我想对你好你从来不知道想你想你也能成为嗜好当你说今天的烦恼当你说夜深你睡不着我想对你说却害怕都说错好喜欢你知不知道如果有一天梦想都实现回忆都成了永远你是否还会记得今天如果有一天我们都发觉原来什么都可以我们是否还会停留在这里当你的眼睛眯着笑当你喝可乐当你吵我想对你好你从来不知道想你想你也能成为嗜好当你说今天的烦恼当你说夜深你睡不着我想对你说却害怕都说错好喜欢你知不知道也许空虚让我想得太多也许该回到被窝梦里会相遇就毫不犹豫大声的说我要说当你的眼睛眯着笑当你喝可乐当你吵我想对你好你从来不知道想你想你也能成为嗜好当你说今天的烦恼当你说夜深你睡不着我想对你说却害怕都说错好喜欢你知不知道当你的眼睛眯着笑当你喝可乐当你吵我想对你好你从来不知道想你想你也能成为嗜好啦 啦我想对你说却害怕都说错好喜欢你知不知道', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000000TuW8h0AH2n4.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '林俊杰', '04：09');
INSERT INTO `song` VALUES (25, '江南', 2, '江南 - 林俊杰 (JJ Lin)词：李瑞洵曲：林俊杰编曲：蔡政勋/陈建玮风到这里就是黏黏住过客的思念雨到了这里缠成线缠着我们留恋人世间你在身边就是缘缘分写在三生石上面爱有万分之一甜宁愿我就葬在这一点圈圈圆圆圈圈天天年年天天的我深深看你的脸生气的温柔埋怨的温柔的脸不懂爱恨情愁煎熬的我们都以为相爱就像风云的善变相信爱一天抵过永远在这一刹那冻结了时间不懂怎么表现温柔的我们还以为殉情只是古老的传言离愁能有多痛痛有多浓当梦被埋在江南烟雨中心碎了才懂圈圈圆圆圈圈天天年年天天的我深深看你的脸生气的温柔埋怨的温柔的脸不懂爱恨情愁煎熬的我们都以为相爱就像风云的善变相信爱一天抵过永远在这一刹那冻结了时间不懂怎么表现温柔的我们还以为殉情只是古老的传言离愁能有多痛痛有多浓当梦被埋在江南烟雨中心碎了才懂相信爱一天抵过永远在这一刹那冻结了时间不懂怎么表现温柔的我们还以为殉情只是古老的传言离愁能有多痛痛有多浓当梦被埋在江南烟雨中心碎了才懂', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000000y5gq7449K9I.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '林俊杰', '04：27');
INSERT INTO `song` VALUES (26, '她说', 2, '她说 (She Says) (《爱情睡醒了》电视剧插曲) - 林俊杰 (JJ Lin)词：孙燕姿曲：林俊杰他静悄悄地来过他慢慢带走沉默只是最后的承诺还是没有带走了寂寞我们爱的没有错只是美丽的独秀太折磨她说无所谓只要能在夜里翻来覆去的时候有寄托等不到天黑烟火不会太完美回忆烧成灰还是等不到结尾她曾说的无所谓我怕一天一天被摧毁等不到天黑不敢凋谢的花蕾绿叶在跟随放开刺痛的滋味今后不再怕天明我想只是害怕清醒他静悄悄地来过他慢慢带走沉默只是最后的承诺还是没有带走了寂寞我们爱的没有错只是美丽的独秀太折磨她说无所谓只要能在夜里翻来覆去的时候有寄托等不到天黑烟火不会太完美回忆烧成灰还是等不到结尾她曾说的无所谓我怕一天一天被摧毁等不到天黑不敢凋谢的花蕾绿叶在跟随放开刺痛的滋味今后不再怕天明我想只是害怕清醒等不到天黑烟火不会太完美回忆烧成灰还是等不到结尾她曾说的无所谓我怕一天一天被摧毁等不到天黑不敢凋谢的花蕾绿叶在跟随放开刺痛的滋味今后不再怕天明我想只是害怕清醒不怕天明我想只是害怕清醒', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000000TuW8h0AH2n4.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '林俊杰', '05：20');
INSERT INTO `song` VALUES (27, 'Alaways Online', 2, 'Always Online (联想idea Pad S9/S10笔记本主题曲|《Cries In A Distance》国语版) - 林俊杰 (JJ Lin)词：林怡凤曲：林俊杰编曲：陈建玮/蔡政勋制作人：林俊杰变色的生活 任性的挑拨疯狂的冒出了头单方的守候 试探的温柔还是少了点什么遥远两端 爱挂在天空飞风停了也无所谓 只因为你曾说Everything will be okay准备好了three two oneI\'m always online和你one to one 爱开始扩散我们连结了 穿越天空 银河 oh开始倒数three two one删除我的孤单More and more尽是深刻爱亮了 爱笑了I\'m always online变色的生活 任性的挑拨疯狂的冒出了头单方的守候 试探的温柔却还是少了点什么遥远两端 爱挂在天空飞风停了也无所谓 只因为你曾说Everything will be okay我准备好了three two oneI\'m always online和你one to one 爱开始扩散我们连结了 穿越天空 银河 oh开始倒数three two one删除我的孤单More and more尽是深刻爱亮了 爱笑了I\'m always online准备好了three two oneI\'m always online和你one to one 爱开始扩散我们连结了 穿越天空 银河开始倒数three two one删除我的孤单More and more尽是深刻爱亮了 爱笑了I\'m always online爱亮了 爱笑了I\'m always online', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000002g6zv02X7SNi.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '林俊杰', '03：42');
INSERT INTO `song` VALUES (28, '修炼爱情', 2, '修炼爱情 - 林俊杰 (JJ Lin)词：易家扬曲：林俊杰编曲：林俊杰制作人：林俊杰凭什么要失望藏眼泪到心脏往事不会说谎别跟它为难我们两人之间不需要这样我想修炼爱情的心酸学会放好以前的渴望我们那些信仰要忘记多难远距离的欣赏近距离的迷惘谁说太阳会找到月亮别人有的爱我们不可能模仿修炼爱情的悲欢我们这些努力不简单快乐炼成泪水是一种勇敢几年前的幻想几年后的原谅为一张脸去养一身伤别讲想念我我会受不了这样记忆它真嚣张路灯把痛点亮情人一起看过多少次月亮它在天空看过多少次遗忘多少心慌修炼爱情的心酸学会放好以前的渴望我们那些信仰要忘记多难远距离的欣赏近距离的迷惘谁说太阳会找到月亮别人有的爱我们不可能模仿修炼爱情的悲欢我们这些努力不简单快乐炼成泪水是一种勇敢几年前的幻想几年后的原谅为一张脸去养一身伤别讲想念我我会受不了这样笑着说爱让人疯狂哭着说爱让人紧张忘不了那个人就投降修炼爱情的悲欢我们这些努力不简单快乐炼成泪水是一种勇敢几年前的幻想几年后的原谅为一张脸去养一身伤别讲想念我我会受不了这样几年前的幻想几年后的原谅为一张脸去养一身伤别讲想念我我会受不了这样', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000001gqOnU3DTg2S.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '林俊杰', '04：47');
INSERT INTO `song` VALUES (29, '背对背拥抱', 2, '背对背拥抱 - 林俊杰 (JJ Lin)词：林怡凤曲：林俊杰话总说不清楚该怎么明了一字一句像圈套旧账总翻不完谁无理取闹你的双手甩开刚好的微妙然后战火再燃烧我们背对背拥抱滥用沉默在咆哮爱情来不及变老葬送在烽火的玩笑我们背对背拥抱真话兜着圈子乱乱绕只是想让我知道只是想让你知道爱的警告话总说不清楚该怎么明了一字一句像圈套旧账总翻不完谁无理取闹你的双手甩开刚好的微妙然后战火再燃烧我们背对背拥抱滥用沉默在咆哮爱情来不及变老葬送在烽火的玩笑我们背对背拥抱真话兜着圈子乱乱绕只是想让我知道只是想让你知道爱的警告我不要一直到形同陌路变成自找既然可以拥抱就不要轻易放掉我们背对背拥抱滥用沉默在咆哮爱情来不及变老葬送在烽火的玩笑我们背对背拥抱真话兜着圈子乱乱绕只是想让我知道只是想让你知道这警告只是想让我知道只是想让你知道爱的警告', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000002C0kX720gMQi.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '林俊杰', '03：54');
INSERT INTO `song` VALUES (30, '不为谁而作的歌', 2, '不为谁而作的歌 - 林俊杰 (JJ Lin)词：林秋离曲：林俊杰原谅我这一首不为谁而作的歌感觉上仿佛窗外的夜色曾经有那一刻回头竟然认不得需要从记忆再摸索的人和他们关心的 的地方和那些走过的请等一等梦为努力浇了水爱在背后往前推当我抬起头才发觉我是不是忘了谁累到整夜不能睡夜色哪里都是美一定有个人她躲过避过闪过瞒过她是谁她是谁原谅我这一首不为谁而作的歌感觉上仿佛窗外的夜色曾经有那一刻回头竟然认不得需要从记忆再摸索的人和他们关心的 的地方和那些走过的梦为努力浇了水爱在背后往前推当我抬起头才发觉我是不是忘了谁累到整夜不能睡夜色哪里都是美一定有个人她躲过避过闪过瞒过她是谁她是谁也许在真实面对自己才不顾一切去探究当初我害怕面对梦为努力浇了水爱在背后往前推当我抬起头才发觉我是不是忘了谁累到整夜不能睡夜色哪里都是美一定有个她躲过避过闪过瞒过她是谁她是谁她是谁', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000003nbc0602Tgfx.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '林俊杰', '04：25');
INSERT INTO `song` VALUES (31, '光年之外', 3, '光年之外 (《太空旅客（Passengers）》电影中国区主题曲) - G.E.M. 邓紫棋 (Gem Tang)词：G.E.M. 邓紫棋曲：G.E.M. 邓紫棋编曲：Lupo Groinig监制：Lupo Groinig感受停在我发端的指尖如何瞬间冻结时间记住望着我坚定的双眼也许已经没有明天面对浩瀚的星海我们微小得像尘埃漂浮在一片无奈缘分让我们相遇乱世以外命运却要我们危难中相爱也许未来遥远在光年之外我愿守候未知里为你等待我没想到为了你我能疯狂到山崩海啸没有你根本不想逃我的大脑为了你已经疯狂到脉搏心跳没有你根本不重要一双围在我胸口的臂弯足够抵挡天旋地转一种执迷不放手的倔强足以点燃所有希望宇宙磅礡而冷漠我们的爱微小却闪烁颠簸却如此忘我缘分让我们相遇乱世以外命运却要我们危难中相爱也许未来遥远在光年之外我愿守候未知里为你等待我没想到为了你我能疯狂到山崩海啸没有你根本不想逃我的大脑为了你已经疯狂到脉搏心跳没有你根本不重要也许航道以外是醒不来的梦乱世以外是纯粹的相拥我没想到为了你我能疯狂到山崩海啸没有你根本不想逃我的大脑为了你已经疯狂到脉搏心跳没有你根本不重要相遇乱世以外危难中相爱相遇乱世以外危难中相爱我没想到', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000001mTkmb4GJlh4.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '邓紫棋', '03:  55');
INSERT INTO `song` VALUES (32, '倒数', 3, '倒数 - G.E.M. 邓紫棋词：G.E.M. 邓紫棋曲：G.E.M. 邓紫棋/Lupo Groinig编曲：Lupo Groinig监制：Lupo Groinig还没到的樱花季还没用的照相机还没光临的餐厅还在期待有着你的旅行等待日落的巴黎铁塔之下牵着你等待说着我愿意等待未来每天身边有你一点一滴每一天珍惜怕突然来不及好好的爱你时针一直倒数着我们剩下的快乐此刻相拥的狂热却永远都深刻心跳一直倒数着生命剩下的温热至少用力地爱着还乌黑的头发有你就不怕白了漆黑过后是旭日泪流以后是坚持真的爱是日复日从不放弃重复说你愿意还没退化的眼睛抓紧时间看看你爱是从来不止息一个风景每天新的生命一点一滴每一天珍惜用尽每一口气好好的爱你时针一直倒数着我们剩下的快乐此刻相拥的狂热却永远都深刻心跳一直倒数着生命剩下的温热至少用力地爱着还乌黑的头发有你就不怕白了咖啡再不喝就酸了晚餐再不吃就冷了爱着为什么不说呢难道错过了才来后悔着谁梦未实现就醒了谁心没开过就灰了追逐爱的旅途曲折就算再曲折为你都值得一点一滴每一天珍惜用尽每一口气好好的爱你时针一直倒数着我们剩下的快乐此刻相拥的狂热却永远都深刻心跳一直倒数着生命剩下的温热至少痛并快乐着爱过才算活着有你别无所求了有你别无所求了有你别无所求了有你别无所求了有你别无所求了有你别无所求了', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000003cKIKZ1J4Yyu.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '邓紫棋', '03:49');
INSERT INTO `song` VALUES (33, '我的秘密', 3, '我的秘密 - G.E.M. 邓紫棋 (Gem Tang)词：G.E.M. 邓紫棋曲：G.E.M. 邓紫棋编曲：Lupo Groinig监制：Lupo Groinig最近一直很好心情不知道什么原因我现在这一种心情我想要唱给你听Ha ha ha ha看着窗外的小星星心里想着我的秘密算不算爱我不太确定我只知道我在想你Ha ha ha我们之间的距离好像忽远又忽近你明明不在我身边我却觉得很亲Ha ha ha有一种感觉我想说明我心里的秘密 是你给的甜蜜我们之间的距离好像一点点靠近是不是你对我也有一种特殊感情Ha ha ha我犹豫要不要告诉你我心里的秘密 是我好像喜欢了你Ha夜里陪着我的声音就算沙了也动听这一种累了的声音是最温柔的证明Ha你是我 你是我的秘密我一直偷偷想着你你是我心里的秘密我们之间的距离好像忽远又忽近你明明不在我身边我却觉得很亲Ha ha ha有一种感觉我想说明我心里的秘密 是你给的甜蜜我们之间的距离好像一点点靠近是不是你对我也有一种特殊感情Ha ha ha我犹豫要不要告诉你我心里的秘密 是我好像喜欢了你Ha ha ha这模糊的关系 是莫名的美丽我们之间的距离好像忽远又忽近你明明不在我身边我却觉得很亲Ha ha ha这一刻我真的想说明我心里的秘密 是你给的甜蜜我们之间的距离每天一点点靠近这是种别人无法理解的特殊感情Ha ha ha我要让全世界都清晰我心里的秘密是我会一直深爱着你深爱着你Ha ha ha', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000002F059l1kCcdr.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '邓紫棋', '04:12');
INSERT INTO `song` VALUES (34, '再见', 3, '再见 - G.E.M. 邓紫棋 (Gem Tang)词：G.E.M. 邓紫棋曲：G.E.M. 邓紫棋编曲：Lupo Groinig爱情的起点都是最美的瞬间什么铁达尼的经典罗密欧跟茱丽叶那些最煽情的电影情节都说爱能超越生死离别曾经 我们都很坚决爱了就不改变不要对我说再见一句再见就结束这一切能否不要说再见你的再见说得那么明确怎么我和你之间两个世界再也没有交接如果告别能不能再见我们的照片纪录幸福到永远只是再幸福的画面只定格在 一瞬间那些慢吞吞悲情的音乐早说过爱过之后就是离别早该相信那些预言我们也没有多特别不要对我说再见一句再见让爱变得表面真的不用说再见就算再见结局不能改变就算我和你之间两个世界 再也没有交接不用抱歉 就真的再见如果有缘我们会再遇见反正地球本来就很圆就算今天你要走得多远反正就是 一条地平线反正愿望不一定会实现反正承诺不一定要兑现反正睡醒是新的 一天别对我说再见一句再见让爱变得表面真的不用说再见就算再见结局不能改变就算我和你之间两个世界再也没有交接不用抱歉就真的再见爱情到终点我们只能说再见', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000003c616O2Zlswm.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '邓紫棋', '03:26');
INSERT INTO `song` VALUES (35, '泡沫', 3, '泡沫 - G.E.M. 邓紫棋 (Gem Tang)词：G.E.M. 邓紫棋曲：G.E.M. 邓紫棋阳光下的泡沫 是彩色的就像被骗的我 是幸福的追究什么对错 你的谎言基于你还爱我美丽的泡沫 虽然一刹花火你所有承诺 虽然都太脆弱但爱像泡沫 如果能够看破有什么难过早该知道泡沫 一触就破就像已伤的心 不胜折磨也不是谁的错 谎言再多基于你还爱我美丽的泡沫 虽然一刹花火你所有承诺 虽然都太脆弱爱本是泡沫 如果能够看破有什么难过再美的花朵 盛开过就凋落再亮眼的星 一闪过就坠落爱本是泡沫 如果能够看破有什么难过为什么难过 有什么难过为什么难过全都是泡沫 只一刹的花火你所有承诺 全部都太脆弱而你的轮廓 怪我没有看破才如此难过相爱的把握 要如何再搜索相拥着寂寞 难道就不寂寞爱本是泡沫 怪我没有看破才如此难过在雨下的泡沫 一触就破当初炽热的心 早已沉没说什么你爱我 如果骗我我宁愿你沉默', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000002YFufr4bXZyI.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '邓紫棋', '04:18');
INSERT INTO `song` VALUES (36, '喜欢你', 3, '喜欢你 - G.E.M. 邓紫棋 (Gem Tang)词：黄家驹曲：黄家驹编曲：Lupo Groinig细雨带风湿透黄昏的街道抹去雨水双眼无故地仰望望向孤单的晚灯是那伤感的记忆再次泛起心里无数的思念以往片刻欢笑仍挂在脸上愿你此刻可会知是我衷心的说声喜欢你 那双眼动人笑声更迷人愿再可 轻抚你那可爱面容挽手说梦话像昨天 你共我满带理想的我曾经多冲动屡怨与她相爱难有自由愿你此刻可会知是我衷心的说声喜欢你 那双眼动人笑声更迷人愿再可 轻抚你那可爱面容挽手说梦话像昨天 你共我每晚夜里自我独行随处荡 多冰冷以往为了自我挣扎从不知 她的痛苦喜欢你 那双眼动人笑声更迷人愿再可 轻抚你那可爱面容挽手说梦话像昨天 你共我', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000000cFPKx3ZGzks.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '邓紫棋', '03:59');
INSERT INTO `song` VALUES (37, '另外一个童话', 3, '另一个童话 - G.E.M. 邓紫棋词：G.E.M. 邓紫棋曲：G.E.M. 邓紫棋编曲：Lupo Groinig监制：Lupo Groinig看你看我 原地在走着眼睛都睁着 而脑袋都睡着每张脸都 没多大区别为什么这世界 变得太机械太多目光 曾把人刺伤让人心中的窗 打开以前就关上慢慢习惯 化一样的妆学坚一样的强 泪流以前就擦干从小到大 听着同一个童话跟着大家 渴望开一样的花活得像一匹被 勒住的马心里多狂热也 只能听话为何独特 会让人如此害怕为何长大 必须同一个步伐可是我相信着 世界之大我只想寻找那 属于我的还未写的 另一个童话还未变天鹅 的另一只小鸭只不过在 等一个未来等世界能欣赏 乌鸦的漂亮再多目光 再把人刺伤别让自己遗忘 当时天真的模样抹掉身上 有毒的土壤别让陌生的妆 掩盖你我的光芒从小到大 听着同一个童话跟着大家 渴望开一样的花活得像一匹被 勒住的马心里多狂热也 只能听话为何独特 会让人如此害怕为何长大 必须同一个步伐可是我相信着 世界之大我只想寻找那 属于我的另一个童话 另一个童话释放我心里那 自由的马我只想追逐那 属于我的另一个童话 不一样的童话让我们相信着 世界之大用我们的独特 勇敢写下另一个童话', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000003cKIKZ1J4Yyu.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '邓紫棋', '03:03');
INSERT INTO `song` VALUES (38, 'A.I.N.Y', 3, 'A.I.N.Y. (爱你) - G.E.M. 邓紫棋 (Gem Tang)词：G.E.M.邓紫棋曲：Lupo Groinig/G.E.M.邓紫棋编曲：Lupo Groinig分开以后每个夜晚格外的寂静滴答滴答剩大钟在陪着我回忆电话里头曾经是你最温柔的声音现在只有空气冷漠地回应OH 给你我的心能否请你别遗弃一句爱你爱你爱你爱你能否再也不分离OH 给你我的心为什么你却给了我孤寂就算爱你爱你爱你爱你可能你也不想听你的拥抱曾经是最温暖最熟悉现在换了谁安睡在你胸口的位置你的承诺曾是一种不自觉的甜蜜现在一划一笔刺在我心里OH 给你我的心能否请你别遗弃一句爱你爱你爱你爱你能否再也不分离OH 给你我的心为什么你却给了我孤寂就算爱你爱你爱你爱你可能你也不想听 你不想听回忆最后的回忆对你最后的回忆是你走远的身影慢慢走远的身影然后你离开了离开了没有痕迹然后我 哭泣崩溃了放纵哭泣恨你恨你 每当我想起曾经曾经曾经曾经曾经Yeah还是爱你爱你爱你爱你难道还不能清醒OH 给你我的心为什么你却给了我孤寂一句爱你爱你爱你爱你难道你也不想听OH 给你我的心为什么你却给了我孤寂就算爱你爱你爱你爱你不值得为你伤心伤心Your confession remains to be my final pleadingBut the only thing that\'s here with meIs tic tac tic tac tic tac tic tac', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000000HZzEx0QIMNM.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '邓紫棋', '03:46');
INSERT INTO `song` VALUES (39, '攀登（live）', 3, '攀登 (Live) - 潘玮柏/G.E.M. 邓紫棋/艾热原唱：Coldplay原词曲：Martin, Christopher Anthony John/Berryman, Guy Rupert/Buckland, Jonathan Mark/Champion, William/Eriksen, Mikkel Storleer/Hermansen, Tor Erik/Tovar, Marcos Jesus/Yard, Venor Timothy/Zant, Scott Alan中文填词：G.E.M. 邓紫棋Rap词：潘玮柏/G.E.M. 邓紫棋/艾热编曲：赫连长泓音乐总监：刘洲定位制作人：刘洲混音：时俊峰改编歌曲：《Hymn For The Weekend》改编歌曲词曲版权代理：环球音乐出版有限公司(Universal Music Publishing Ltd.)/百代音乐版权代理（北京）有限公司/北京盛海传音文化传播有限公司有时候我会问自己到底为了什么努力赢得什么才叫胜利你曾否问自己我们明白很多时候当你醒来渴望自由但现实总变质并不是你想要的样子有人在逆境中蜕变想在机遇中兑现说过的承诺更多的时候都被打磨成碎片是因为生活要继续想振作 获得惊喜要更多 要心意更精细 更尽力让经历跟新意更亲密 更凝聚这就是我想要的我想要我能被铭记想忘记那些华丽的浮夸的装点滑稽的实话里藏着谎话却又很庄严Do what I do是因为不想停止迈步不是不在乎而是我害怕心思败露世界的面积可能大到让人抵触但时间的延续就是你最大的礼物别畏惧像是暴露你某个意图让阳光彻底照着你每寸皮肤I pray for myselfI pray for my hood真理藏在心里Keep real for my world我为我自己买单不会逃脱而是负责我自己对抗灾难哪怕超过我的负荷You feel meOh 爱 oh 爱Got me feeling drunk and highSo high so highOh 爱 oh 爱 oh 爱Got me feeling drunk and highSo high so high我曾经如此随和跟着世界的规则他们说什么就什么听着话 心却是灰色沉睡着多努力追上社会太看重的荣耀我逐一对抗恶鬼在煽动的控告根本都不重要理想再崇高每当我动摇撑着我是一个拥抱我的忠告 别覆辙重蹈一切的功劳来自我爱的 爱着我的身边每一个珍贵的容貌Yo shout out to 2PacPut your hands upSo just bounceIf you feel me不要放肆 学着感激像个壮士 勇往向前去伤势再痛不要放弃拼死拼活地追求到底为了什么意义不就是为了成为你口中的Favorite MC他要spit game on fire他要带你们higher他要证明说唱文化本身就是个爷们儿我觉得现在可以好好入睡因为世界都是Hip-Hop词汇Never thoughtI be in position to do thisIt all startedWhen Pac nation chanted《How do you want it》I keep it old schoolWith some Pac imitationWest side till I dieYou love it no hesitationDear mama不要哭我永远在你身边别在乎世界怎么看我对我多少偏见今天忍气吞声为了要更好的明天我们说的唱的坚持的全都会实现So I pray for my loved onesAnd I pray for the warriorsI pray for the go-gettersAnd I pray for the naysayersLord please let meSee another day浴火凤凰展开双翼We will see that day let goOh 爱 oh 爱Got me feeling drunk and highSo high so highOh 爱 oh 爱 oh 爱Got me feeling drunk and highSo high so highOh 爱 oh 爱Got me feeling drunk and highSo high so highOh 爱Got me feeling drunk and highSo high so high你觉得我会在意么你给的质疑你觉得我会猜疑么只相信自己用音乐转换季节所以不会再畏惧冬天中文Hip-Hop有版图我会在最中间Yeah you feel me', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000001kgcVb1p6Qao.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '邓紫棋', '04:11');
INSERT INTO `song` VALUES (40, '多远都要在一起', 3, '多远都要在一起 (Long Distance) - G.E.M. 邓紫棋 (Gem Tang)词：G.E.M. 邓紫棋曲：G.E.M. 邓紫棋编曲：Lupo Groinig想听你听过的音乐想看你看过的小说我想收集每一刻我想看到你眼里的世界想到你到过的地方和你曾度过的时光不想错过每一刻多希望我一直在你身旁未来何从何去你快乐我也就没关系对你我最熟悉你爱自由我却更爱你我能习惯远距离爱总是身不由己宁愿换个方式至少还能遥远爱着你爱能克服远距离多远都要在一起你已经不再存在我世界里请不要离开我的回忆想你说爱我的语气想你望着我的眼睛不想忘记每一刻用思念让我们一直前进想像你失落的唇印想像你失约的旅行想像你离开的一刻如果我有留下你的勇气我能习惯远距离爱总是身不由己宁愿换个方式至少还能遥远爱着你爱能克服远距离多远都要在一起我已经不再存在你的心里就让我独自守着回忆如果阳光永远都炽热如果彩虹不会掉颜色你能不能不离开呢我能习惯远距离爱总是身不由己宁愿换个方式至少还能遥远爱着你爱能克服远距离多远都要在一起你已经不再存在我世界里请不要离开我的回忆请不要离开不要离开我的回忆', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000003c616O2Zlswm.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '邓紫棋', '03:37');
INSERT INTO `song` VALUES (41, '违背的青春', 4, '违背的青春 - 薛之谦致不易青年主题曲词：薛之谦曲：薛之谦我该规矩的 跳入每格我好像还记得 愿望是什么挡住的 自行车 一个色我在叛逆的 坚持什么用我仅剩的 硬币做选择反正我 也没去处要叵测原谅我可好我傲慢的青春在触摸里奔跑 在黑夜里舞蹈你们嘲笑的船会停靠原谅我可好我失陪的青春最遗憾的是你 用最后的距离目送我 躁动的远离满是歉意我在尝试着 放弃哪格可是幼稚的 愿望多难得以前的 自行车 五颜六色我该经历的 皮毛有了我可以复杂的 介绍我了电视里 我的英雄 过期了原谅我可好我傲慢的青春在触摸里奔跑 在黑夜里舞蹈你们嘲笑的船会停靠原谅我可好我失陪的青春最遗憾的是你 用婉转的距离守着我 不安的远离再无归期嘲笑我可好我幼稚的青春用木剑来争吵 为尊严而摔倒不能让的 咬着牙也不放掉原谅我可好我违背的青春在拥挤的人潮 我妥协了多少一直到让我什么也不曾 得到原谅我可好原谅我可好我逝去的青春制作人：金志文编曲：金志文/李文魁吉他：金冬昱/金志文bass：王佳林鼓：祁大为/胡宇桐合声：李文魁人声录音棚：上海广播大厦人声监棚：郑伟人声录音：夏之炜乐器录音：孙梓滔混音：李军母带处理：李军', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000003Rtibw458BC5.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '薛之谦', '05：36');
INSERT INTO `song` VALUES (42, '演员', 4, '演员 - 薛之谦 (Joker)词：薛之谦曲：薛之谦编曲：郑伟/张宝宇制作人：赵英俊合声：赵英俊录音师：王晓海混音师：鲍锐母带处理工程师：鲍锐简单点说话的方式简单点递进的情绪请省略你又不是个演员别设计那些情节没意见我只想看看你怎么圆你难过的太表面像没天赋的演员观众一眼能看见该配合你演出的我演视而不见在逼一个最爱你的人即兴表演什么时候我们开始收起了底线顺应时代的改变看那些拙劣的表演可你曾经那么爱我干嘛演出细节我该变成什么样子才能延缓厌倦原来当爱放下防备后的这些那些才是考验没意见你想怎样我都随便你演技也有限又不用说感言分开就平淡些该配合你演出的我演视而不见别逼一个最爱你的人即兴表演什么时候我们开始没有了底线顺着别人的谎言被动就不显得可怜可你曾经那么爱我干嘛演出细节我该变成什么样子才能配合出演原来当爱放下防备后的这些那些都有个期限其实台下的观众就我一个其实我也看出你有点不舍场景也习惯我们来回拉扯还计较着什么其实说分不开的也不见得其实感情最怕的就是拖着越演到重场戏越哭不出了是否还值得该配合你演出的我尽力在表演像情感节目里的嘉宾任人挑选如果还能看出我有爱你的那面请剪掉那些情节让我看上去体面可你曾经那么爱我干嘛演出细节不在意的样子是我最后的表演是因为爱你我才选择表演这种成全', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000003y8dsH2wBHlo.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '薛之谦', '04：21');
INSERT INTO `song` VALUES (43, '刚刚好', 4, '刚刚好 (《我与你的光年距离》网络剧主题曲) - 薛之谦 (Joker)词：薛之谦曲：薛之谦编曲：郑伟制作人：薛之谦混音室：郝宇混音师：郑伟母带处理工程师：Ted Jensen如果有人在灯塔拨弄她的头发思念刻在墙和瓦如果感情会挣扎没有说的儒雅把挽回的手放下镜子里的人说假话违心的样子你决定了吗装聋或者作哑 要不我先说话我们的爱情 到这刚刚好剩不多也不少 还能忘掉我应该可以 把自己照顾好我们的距离 到这刚刚好不够我们拥抱 就挽回不了用力爱过的人 不该计较是否要逼人弃了甲亮出一条伤疤不堪的根源在哪可是感情会挣扎没有别的办法它劝你不如退下如果分手太复杂流浪的歌手会放下吉他故事要美必须藏着真话我们的爱情 到这刚刚好剩不多也不少 还能忘掉我应该可以 把自己照顾好我们的距离 到这刚刚好不够我们拥抱 就挽回不了用力爱过的人 不该计较我们的爱情到这刚刚好再不争也不吵 不必再煎熬你可以不用 记得我的好我们的流浪到这刚刚好趁我们还没到 天涯海角我也不是非要去那座城堡天空有些暗了暗的刚刚好我难过的样子就没人看到你别太在意我身上的记号', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000000dcZ9I1nzO62.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '薛之谦', '04：10');
INSERT INTO `song` VALUES (44, '绅士', 4, '绅士 (Gentleman) (《是！尚先生》电视剧插曲) - 薛之谦 (Joker)词：薛之谦曲：薛之谦好久没见了什么角色呢细心装扮着白色衬衫的袖扣是你送的尽量表现着像不在意的频繁暴露了自欺欺人者越掩饰越深刻你说我说听说忍着言不由衷的段落我反正决定自己难过我想摸你的头发只是简单的试探啊我想给你个拥抱像以前一样可以吗你退半步的动作认真的吗小小的动作伤害还那么大我只能扮演个绅士才能和你说说话我能送你回家吗可能外面要下雨啦我能给你个拥抱像朋友一样可以吗我忍不住从背后抱了一下尺度掌握在不能说想你啊你就当刚认识的绅士闹了个笑话吧尽量表现着善解人意的频繁暴露了不欲人知的越掩饰越深刻想说听说别说忍着言不由衷的段落我反正注定留在角落我想摸你的头发只是简单的试探啊我想给你个拥抱像以前一样可以吗你退半步的动作认真的吗小小的动作伤害还那么大我只能扮演个绅士才能和你说说话我能送你回家吗可能外面要下雨啦我能给你个拥抱像朋友一样可以吗我忍不住从背后抱了一下尺度掌握在不能说想你啊你就当刚认识的绅士闹了个笑话吧你能给我只左手牵你到马路那头吗我会像以前一样看着来往的车子啊我们的距离在眉间皱了下迅速还原成路人的样子啊越有礼貌我越害怕绅士要放得下', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000003y8dsH2wBHlo.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '薛之谦', '04：50');
INSERT INTO `song` VALUES (45, '丑八怪', 4, '丑八怪 (《如果我爱你》电视剧插曲) - 薛之谦 (Joker)词：甘世佳曲：李荣浩编曲：李荣浩如果世界漆黑 其实我很美在爱情里面进退 最多被消费无关痛痒的是非又怎么不对 无所谓如果像你一样 总有人赞美围绕着我的卑微 也许能消退其实我并不在意 有很多机会像巨人一样的无畏放纵我 心里的鬼可是我不配丑八怪 能否别把灯打开我要的爱 出没在漆黑一片的舞台丑八怪 在这暧昧的时代我的存在 像意外有人用一滴泪 会红颜祸水有人丢掉称谓 什么也不会只要你足够虚伪 就不怕魔鬼 对不对如果剧本写好 谁比谁高贵我只能沉默以对 美丽本无罪当欲望开始贪杯 有更多机会像尘埃一样的无畏 化成灰 谁认得谁管他配不配丑八怪 能否别把灯打开我要的爱 出没在漆黑一片的舞台丑八怪 在这暧昧的时代我的存在 不意外丑八怪 其实见多就不怪放肆去high 用力踩那不堪一击的洁白丑八怪 这是我们的时代我不存在 才意外', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000000QgFcm0v8WaF.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '薛之谦', '04：08');
INSERT INTO `song` VALUES (46, '你还要我怎样', 4, '你还要我怎样 (《妈妈像花儿一样》电视剧片尾曲|《如果我爱你》电视剧插曲) - 薛之谦 (Joker)词：薛之谦曲：薛之谦你停在了这条我们熟悉的街把你准备好的台词全念一遍我还在逞强 说着谎也没能力遮挡 你去的方向至少分开的时候我落落大方我后来都会选择绕过那条街又多希望在另一条街能遇见思念在逞强 不肯忘怪我没能力跟随 你去的方向若越爱越被动 越要落落大方你还要我怎样 要怎样你突然来的短信就够我悲伤我没能力遗忘 你不用提醒我哪怕结局就这样我还能怎样 能怎样最后还不是落得情人的立场你从来不会想 我何必这样我慢慢的回到自己的生活圈也开始可以接触新的人选爱你到最后 不痛不痒留言在计较 谁爱过一场我剩下一张 没后悔的模样你还要我怎样 要怎样你千万不要在我婚礼的现场我听完你爱的歌 就上了车爱过你很值得我不要你怎样 没怎样我陪你走的路你不能忘因为那是我 最快乐的时光后来我的生活还算理想没为你落到孤单的下场有一天晚上 梦一场你白发苍苍 说带我流浪我还是没犹豫 就随你去天堂不管能怎样 我能陪你到天亮', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000000QgFcm0v8WaF.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '薛之谦', '05：10');
INSERT INTO `song` VALUES (47, '暧昧', 4, '暧昧 - 薛之谦 (Joker)词：薛之谦曲：薛之谦反正现在的感情 都暧昧你大可不必为难 找般配付出过的人排队 谈体会趁年轻别害怕一个人睡可能是现在感情 太昂贵让付出真心的人 好狼狈还不如听首情歌 的机会忘了谁感情像牛奶一杯越甜越让人生畏都早有些防备润色前的原味所以人们都拿起咖啡把试探放在两人位距离感一对就不必再赤裸相对反正现在的感情 都暧昧你大可不必为难 找般配付出过的人排队 谈体会弃之可惜 食而无味可能是现在感情 太珍贵让付出真心的人 好疲惫谁不曾用过卑微的词汇想留住谁还贪恋着衣衫昂贵却输给了廉价香水他先诱你入位还刻意放低了分贝可感情越爱越妩媚像烂掉的苹果一堆连基因都不对还在意什么鱼腥味反正现在的感情 都暧昧你大可不必为难 找般配何必给自己沉迷 的机会不如用误会来结尾反正现在的我们 算暧昧我愿意给的感情 请浪费反正流过的眼泪 难收回就别再安慰看你入眠的侧脸 有多美和你丢下的一切 好匹配我还以为我能 多狼狈我自以为制作人：郑伟编曲：薛之谦/郑伟混音：郑伟大提琴：周润青女声：孟楠合音：薛之谦/张石狄录音：莫家伟母带：Chris Gehringer', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000001L7UIu3GXVtT.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '薛之谦', '05：12');
INSERT INTO `song` VALUES (48, '意外', 4, '意外 (《如果我爱你》电视剧插曲) - 薛之谦 (Joker)词：杨子朴曲：杨子朴我在清晨的路上谁被我遗忘我在深夜里旅行谁被我遗忘肩上的破旧行囊能收藏多少坚强不如全身赤裸还给我那脆弱明知这是一场意外你要不要来明知这是一场重伤害你会不会来当疯狂慢慢从爱情离开还有什么你值得感慨如果风景早已都不存在我想我谁都不爱都不爱都不爱都不爱都不爱都不爱都不爱都不爱都不爱都不爱我在清晨的路上谁被我遗忘我在深夜里旅行谁被我遗忘肩上的破旧行囊能收藏多少坚强不如全身赤裸还给我那脆弱明知这是一场意外你要不要来明知这是一场重伤害你会不会来当疯狂慢慢从爱情离开还有什么你值得感慨如果风景早已都不存在我想我谁都不爱明知这是一场意外你要不要来明知这是一场重伤害你会不会来当疯狂慢慢从爱情离开还有什么你值得感慨如果风景早已都不存在我想我谁都不爱谁都不爱', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000000QgFcm0v8WaF.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '薛之谦', '04：47');
INSERT INTO `song` VALUES (49, '哑巴', 4, '哑巴 - 薛之谦 (Joker)原唱：刘维原词曲： 汪苏泷新版作词：薛之谦/汪苏泷新版作曲：薛之谦/汪苏泷我们都迁就嘴巴我们都憋着真话我们都让爱先发芽我们会接受惩罚有一个变成哑巴越退让越不会表达所有的安静都是人造的冷清所有的杂音在安慰后平静我不需要证明我不需要声音我就像一个哑巴一样你翻译不了我的声响怕腻烦过量我举止要限量你可以当我哑巴一样你不会看见我的抵抗请别怕我受伤 我自己会圆场我们会接受惩罚有一个变成哑巴越退让越不会表达所有的安静都是人造的冷清所有的杂音在安慰后平静我不需要证明我不需要声音我就像一个哑巴一样你翻译不了我的声响怕腻烦过量我举止要限量你可以当我哑巴一样你不会看见我的抵抗请别怕我受伤 我自己会圆场我就像一个哑巴一样反正我也不擅长抵抗制作人：郑伟编曲：郑伟吉他：王山合音：薛之谦混音：郑伟人声录制：莫家伟（上海广播大厦200Studio）母带制作：全相彦（OK Master Studio）', 'https://y.gtimg.cn/music/photo_new/T002R300x300M000000JOrf02Iy29a.jpg?max_age=2592000', NULL, NULL, NULL, NULL, NULL, NULL, '薛之谦', '04：21');
INSERT INTO `song` VALUES (50, '可爱女人', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '周杰伦', '03:59');
INSERT INTO `song` VALUES (51, '完美主义', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '周杰伦', '04:03');
INSERT INTO `song` VALUES (52, '娘子', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '周杰伦', '04:31');
INSERT INTO `song` VALUES (53, '斗牛', 4, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '周杰伦', '04:39');
INSERT INTO `song` VALUES (54, '爱在西元前', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, '周杰伦', '04:31');
INSERT INTO `song` VALUES (55, '对不起', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, '周杰伦', '03:45');
INSERT INTO `song` VALUES (56, '安静', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, '周杰伦', '05:34');
INSERT INTO `song` VALUES (57, '半兽人', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, '周杰伦', '04:05');
INSERT INTO `song` VALUES (58, '分裂', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, '周杰伦', '04:12');
INSERT INTO `song` VALUES (59, '暗号', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, '周杰伦', '04:29');
INSERT INTO `song` VALUES (60, '会有那么一天', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, '林俊杰', '04:13');
INSERT INTO `song` VALUES (61, '不懂', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, ' 林俊杰', '04:31');
INSERT INTO `song` VALUES (62, '就是我', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, ' 林俊杰', '03:14');

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
