/*
Navicat MySQL Data Transfer

Source Server         : 114.215.87.206_daxiang123
Source Server Version : 50537
Source Host           : 114.215.87.206:3306
Source Database       : dxclass_a

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2017-05-19 00:26:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yl_word_category
-- ----------------------------
DROP TABLE IF EXISTS `yl_word_category`;
CREATE TABLE `yl_word_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `name` varchar(25) DEFAULT '' COMMENT '分类标题',
  `is_show` int(1) DEFAULT '0' COMMENT '0显示，不显示',
  `hash` varchar(255) DEFAULT '',
  `is_index` int(1) DEFAULT '0' COMMENT '1表示显示在首页',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yl_word_category
-- ----------------------------
INSERT INTO `yl_word_category` VALUES ('1', '0', '有道逻辑英语', '0', '', '0');
INSERT INTO `yl_word_category` VALUES ('2', '1', '英语核心词汇', '0', '', '0');
INSERT INTO `yl_word_category` VALUES ('3', '1', '英语词组', '0', '', '0');
INSERT INTO `yl_word_category` VALUES ('4', '1', '英语高难词汇', '0', '', '0');
INSERT INTO `yl_word_category` VALUES ('5', '1', '英语易混词汇', '0', '', '0');

-- ----------------------------
-- Table structure for yl_word_list
-- ----------------------------
DROP TABLE IF EXISTS `yl_word_list`;
CREATE TABLE `yl_word_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '默认id',
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '表示：1基础单词，２核心单词，３词组，４高难单词，５易混单词',
  `itemNum` int(11) DEFAULT '0' COMMENT '每一次顺序 每张20个单词，则1-20排序',
  `groupNum` int(11) DEFAULT '0' COMMENT '表示归组，比如15张，归于那一张',
  `word_en` varchar(50) DEFAULT '' COMMENT '英语单词',
  `word_cn` varchar(50) DEFAULT '' COMMENT '汉语',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yl_word_list
-- ----------------------------
INSERT INTO `yl_word_list` VALUES ('1', '1', '1', '1', 'flight', '飞机');
INSERT INTO `yl_word_list` VALUES ('2', '1', '1', '1', 'flood', '洪水');
INSERT INTO `yl_word_list` VALUES ('3', '1', '1', '1', 'floor', '地板');
INSERT INTO `yl_word_list` VALUES ('4', '1', '1', '1', 'fly', '飞行;苍蝇');
INSERT INTO `yl_word_list` VALUES ('5', '1', '1', '1', 'force', '力量;强迫');
INSERT INTO `yl_word_list` VALUES ('6', '1', '1', '1', 'foreign', '外国的');
INSERT INTO `yl_word_list` VALUES ('7', '1', '1', '1', 'foreigner', '外国人');
INSERT INTO `yl_word_list` VALUES ('8', '1', '1', '1', 'forest', '森林');
INSERT INTO `yl_word_list` VALUES ('9', '1', '1', '1', 'forever', '永远的');
INSERT INTO `yl_word_list` VALUES ('10', '1', '1', '1', 'forget', '忘记');
INSERT INTO `yl_word_list` VALUES ('11', '1', '1', '1', 'fortunate', '辛运的');
INSERT INTO `yl_word_list` VALUES ('12', '1', '1', '1', 'forward', '向前');
INSERT INTO `yl_word_list` VALUES ('13', '1', '1', '1', 'found', '建立');
INSERT INTO `yl_word_list` VALUES ('14', '1', '1', '1', 'fresh', '新鲜的');
INSERT INTO `yl_word_list` VALUES ('15', '1', '1', '1', 'friday', '星期五');
INSERT INTO `yl_word_list` VALUES ('16', '1', '1', '1', 'fridge', '冰箱');
INSERT INTO `yl_word_list` VALUES ('17', '1', '1', '1', 'friend', '朋友');
INSERT INTO `yl_word_list` VALUES ('18', '1', '1', '1', 'friendly', '友好的');
INSERT INTO `yl_word_list` VALUES ('19', '1', '1', '1', 'friendship', '友谊');
INSERT INTO `yl_word_list` VALUES ('20', '1', '1', '1', 'frightened', '害怕的');
INSERT INTO `yl_word_list` VALUES ('21', '2', '1', '1', 'license', '执照，许可证');
INSERT INTO `yl_word_list` VALUES ('22', '2', '1', '1', 'lecture', '讲课，演讲');
INSERT INTO `yl_word_list` VALUES ('23', '2', '1', '1', 'learned', '有才华的；博学的');
INSERT INTO `yl_word_list` VALUES ('24', '2', '1', '1', 'latter', '（两者中的）后者');
INSERT INTO `yl_word_list` VALUES ('25', '2', '1', '1', 'lovely', '美好的，可爱的');
INSERT INTO `yl_word_list` VALUES ('26', '2', '1', '1', 'local', '当地的，地方的');
INSERT INTO `yl_word_list` VALUES ('27', '2', '1', '1', 'lively', '活泼的；充满生气的');
INSERT INTO `yl_word_list` VALUES ('28', '2', '1', '1', 'litter', '乱丢杂物');
INSERT INTO `yl_word_list` VALUES ('29', '2', '1', '1', 'manager', '经理');
INSERT INTO `yl_word_list` VALUES ('30', '2', '1', '1', 'majority', '大多数');
INSERT INTO `yl_word_list` VALUES ('31', '2', '1', '1', 'magazine', '杂志');
INSERT INTO `yl_word_list` VALUES ('32', '2', '1', '1', 'luggage', '行李(总称)');
INSERT INTO `yl_word_list` VALUES ('33', '2', '1', '1', 'measure', '量(n)，措施(v)');
INSERT INTO `yl_word_list` VALUES ('34', '2', '1', '1', 'meanwhile', '同时');
INSERT INTO `yl_word_list` VALUES ('35', '2', '1', '1', 'material', '材料，原料');
INSERT INTO `yl_word_list` VALUES ('36', '2', '1', '1', 'marriage', '结婚，婚姻');
INSERT INTO `yl_word_list` VALUES ('37', '2', '1', '1', 'message', '消息，音讯');
INSERT INTO `yl_word_list` VALUES ('38', '2', '1', '1', 'mention', '体积，记载(n)；提到；说起；提名表扬');
INSERT INTO `yl_word_list` VALUES ('39', '2', '1', '1', 'memory', '回忆，记忆');
INSERT INTO `yl_word_list` VALUES ('40', '2', '1', '1', 'medicion', '药');
INSERT INTO `yl_word_list` VALUES ('41', '4', '1', '1', 'agent', '代理人，代理商，动因，原因');
INSERT INTO `yl_word_list` VALUES ('42', '4', '1', '1', 'alcohol', '含酒精的饮料，酒精');
INSERT INTO `yl_word_list` VALUES ('43', '4', '1', '1', 'appeal', '呼吁，恳求');
INSERT INTO `yl_word_list` VALUES ('44', '4', '1', '1', 'appreciate', '重视，赏识，欣赏');
INSERT INTO `yl_word_list` VALUES ('45', '4', '1', '1', 'approve', '赞成，同意，批准');
INSERT INTO `yl_word_list` VALUES ('46', '4', '1', '1', 'stimulate', '刺激，激励');
INSERT INTO `yl_word_list` VALUES ('47', '4', '1', '1', 'acquire', '取得，获得；学到');
INSERT INTO `yl_word_list` VALUES ('48', '4', '1', '1', 'accomplish', '完成，到达，实行');
INSERT INTO `yl_word_list` VALUES ('49', '4', '1', '1', 'network', '网状物；广播网，电视网；网络');
INSERT INTO `yl_word_list` VALUES ('50', '4', '1', '1', 'tide', '潮汐；潮流');
INSERT INTO `yl_word_list` VALUES ('51', '4', '1', '1', 'tidy', '整洁的，整齐的');
INSERT INTO `yl_word_list` VALUES ('52', '4', '1', '1', 'trace', '追踪，找到(vt)；痕迹，踪迹');
INSERT INTO `yl_word_list` VALUES ('53', '4', '1', '1', 'torture', '拷打，折磨');
INSERT INTO `yl_word_list` VALUES ('54', '4', '1', '1', 'wander', '漫游，闲逛');
INSERT INTO `yl_word_list` VALUES ('55', '4', '1', '1', 'wax', '蜡');
INSERT INTO `yl_word_list` VALUES ('56', '4', '1', '1', 'weave', '织，编');
INSERT INTO `yl_word_list` VALUES ('57', '4', '1', '1', 'preserve', '保护 ，保存，保持，维持');
INSERT INTO `yl_word_list` VALUES ('58', '4', '1', '1', 'abuse', '滥用，虐待，谩骂');
INSERT INTO `yl_word_list` VALUES ('59', '4', '1', '1', 'academic', '学术的；高等院校的；研究院的');
INSERT INTO `yl_word_list` VALUES ('60', '4', '1', '1', 'academy', '专科院校(高等)；学会');
INSERT INTO `yl_word_list` VALUES ('61', '5', '1', '1', 'party', '参与各方中的一方');
INSERT INTO `yl_word_list` VALUES ('62', '5', '1', '1', 'passage', '经过，迁移，走廊，通道');
INSERT INTO `yl_word_list` VALUES ('63', '5', '1', '1', 'path', '途径，路径，方式方法');
INSERT INTO `yl_word_list` VALUES ('64', '5', '1', '1', 'pay', '和其它一些词可以搭配成自足，或本身没有实际意义');
INSERT INTO `yl_word_list` VALUES ('65', '5', '1', '1', 'penetrate', '弥漫，充满');
INSERT INTO `yl_word_list` VALUES ('66', '5', '1', '1', 'perform', '做手术，执行任务，履行职责');
INSERT INTO `yl_word_list` VALUES ('67', '5', '1', '1', 'persist', '延续或存在至今');
INSERT INTO `yl_word_list` VALUES ('68', '5', '1', '1', 'perspective', '观点，看法；前景，未来');
INSERT INTO `yl_word_list` VALUES ('69', '5', '1', '1', 'philosophy', '基本原则，做人原则');
INSERT INTO `yl_word_list` VALUES ('70', '5', '1', '1', 'pick on somebody', '跳某个人的毛病，找茬');
INSERT INTO `yl_word_list` VALUES ('71', '5', '1', '1', 'pick up', '不经意间学会');
INSERT INTO `yl_word_list` VALUES ('72', '5', '1', '1', 'picture', '情况');
INSERT INTO `yl_word_list` VALUES ('73', '5', '1', '1', 'plague', '动词，折磨，烦忧，肆虐');
INSERT INTO `yl_word_list` VALUES ('74', '5', '1', '1', 'plain', '十足，测底，浅显易懂，太过普通');
INSERT INTO `yl_word_list` VALUES ('75', '5', '1', '1', 'plant', '工厂，电站');
INSERT INTO `yl_word_list` VALUES ('76', '5', '1', '1', 'plug away at something', '埋头苦干');
INSERT INTO `yl_word_list` VALUES ('77', '5', '1', '1', 'plunge', '继续下降，下跌');
INSERT INTO `yl_word_list` VALUES ('78', '5', '1', '1', 'point', '名词，目的，意义');
INSERT INTO `yl_word_list` VALUES ('79', '5', '1', '1', 'poke fun at someone', '拿...寻开心');
INSERT INTO `yl_word_list` VALUES ('80', '5', '1', '1', 'policy', '原则');
INSERT INTO `yl_word_list` VALUES ('81', '3', '1', '1', 'write to', '给...写信');
INSERT INTO `yl_word_list` VALUES ('82', '3', '1', '1', 'set free', '释放');
INSERT INTO `yl_word_list` VALUES ('83', '3', '1', '1', 'escape from', '逃跑');
INSERT INTO `yl_word_list` VALUES ('84', '3', '1', '1', 'lose one\'s life', '牺牲');
INSERT INTO `yl_word_list` VALUES ('85', '3', '1', '1', 'take exercise', '锻炼');
INSERT INTO `yl_word_list` VALUES ('86', '3', '1', '1', 'be for', '支持');
INSERT INTO `yl_word_list` VALUES ('87', '3', '1', '1', 'go with', '与...相配');
INSERT INTO `yl_word_list` VALUES ('88', '3', '1', '1', 'take lies', '说谎');
INSERT INTO `yl_word_list` VALUES ('89', '3', '1', '1', 'break out', '爆发');
INSERT INTO `yl_word_list` VALUES ('90', '3', '1', '1', 'join up', '联合');
INSERT INTO `yl_word_list` VALUES ('91', '3', '1', '1', 'be against', '反对');
INSERT INTO `yl_word_list` VALUES ('92', '3', '1', '1', 'be tired of sth/doing sth', '对...讨厌');
INSERT INTO `yl_word_list` VALUES ('93', '3', '1', '1', 'give advice', '提出建议');
INSERT INTO `yl_word_list` VALUES ('94', '3', '1', '1', 'get along/on with', '进展得');
INSERT INTO `yl_word_list` VALUES ('95', '3', '1', '1', 'worry about', '为...而担忧');
INSERT INTO `yl_word_list` VALUES ('96', '3', '1', '1', 'pick up', '拾起，接收，接送');
INSERT INTO `yl_word_list` VALUES ('97', '3', '1', '1', 'look out | be careful | take care', '当心');
INSERT INTO `yl_word_list` VALUES ('98', '3', '1', '1', 'get burnt', '被烧伤');
INSERT INTO `yl_word_list` VALUES ('99', '3', '1', '1', 'collect money for', '为...捐钱');
INSERT INTO `yl_word_list` VALUES ('100', '3', '1', '1', 'break away from', '摆脱');
INSERT INTO `yl_word_list` VALUES ('101', '3', '1', '2', 'ring up', '给...打电话');
INSERT INTO `yl_word_list` VALUES ('102', '3', '1', '2', 'get through', '拨电话、完成、通过');
INSERT INTO `yl_word_list` VALUES ('103', '3', '1', '2', 'hold on', '别挂断');
INSERT INTO `yl_word_list` VALUES ('104', '3', '1', '2', 'look into', '调查研究');
INSERT INTO `yl_word_list` VALUES ('105', '3', '1', '2', 'keep out of', '防治、避免');
INSERT INTO `yl_word_list` VALUES ('106', '3', '1', '2', 'be filed with', '充满、装满');
INSERT INTO `yl_word_list` VALUES ('107', '3', '1', '2', 'send up', '使上升、发射');
INSERT INTO `yl_word_list` VALUES ('108', '3', '1', '2', 'put away', '收拾起来');
INSERT INTO `yl_word_list` VALUES ('109', '3', '1', '2', 'remember sb to sb', '代...向...问好');
INSERT INTO `yl_word_list` VALUES ('110', '3', '1', '2', 'pay/make a visit to', '拜访、参观');
INSERT INTO `yl_word_list` VALUES ('111', '3', '1', '2', 'be well-known to', '为...所熟知');
INSERT INTO `yl_word_list` VALUES ('112', '3', '1', '2', 'be supposed to', '应该、理应');
INSERT INTO `yl_word_list` VALUES ('113', '3', '1', '2', 'break into', '破门而入、闯入');
INSERT INTO `yl_word_list` VALUES ('114', '3', '1', '2', 'send for', '派人去请');
INSERT INTO `yl_word_list` VALUES ('115', '3', '1', '2', 'leave school', '毕业');
INSERT INTO `yl_word_list` VALUES ('116', '3', '1', '2', 'hold one\'s breath', '屏气呼吸');
INSERT INTO `yl_word_list` VALUES ('117', '3', '1', '2', 'be made up of', '有...组成');
INSERT INTO `yl_word_list` VALUES ('118', '3', '1', '2', 'take in', '吸收、吸入');
INSERT INTO `yl_word_list` VALUES ('119', '3', '1', '2', 'go off', '消灭、小时');
INSERT INTO `yl_word_list` VALUES ('120', '3', '1', '2', 'search for', '搜、找寻');

-- ----------------------------
-- Table structure for yl_word_topic
-- ----------------------------
DROP TABLE IF EXISTS `yl_word_topic`;
CREATE TABLE `yl_word_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `times` varchar(255) DEFAULT NULL COMMENT '第几天',
  `type` int(11) DEFAULT '3' COMMENT '哪一类 英语词组，基础单词 ',
  `type_name` varchar(255) DEFAULT NULL COMMENT '大类别名称',
  `start_time` varchar(55) DEFAULT '22：30' COMMENT '开始时间',
  `word_num` int(11) DEFAULT '20' COMMENT '单词数',
  `train_day` varchar(255) DEFAULT '2017-05-20 22：30' COMMENT '训练日期',
  `group_num` int(11) DEFAULT '1',
  `current` int(11) DEFAULT '0',
  `btn_apply_for_name` varchar(255) DEFAULT '' COMMENT '提示内容',
  `apply_for_content` varchar(255) DEFAULT '' COMMENT '加入信息内容',
  `appy_for_show` int(1) DEFAULT '0' COMMENT '是否显示按钮',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yl_word_topic
-- ----------------------------
INSERT INTO `yl_word_topic` VALUES ('1', '第一天', '3', '英语词组', '22：30', '20', '2017-05-17 ', '1', '0', null, '', '0');
INSERT INTO `yl_word_topic` VALUES ('2', '第二天', '3', '英语词组', '22：30', '20', '2017-05-18 ', '1', '0', '申请加入特训群', '加qq号：2890594972', '0');
INSERT INTO `yl_word_topic` VALUES ('3', '第三天', '3', '英语词组', '22：30', '20', '2017-05-19 ', '2', '1', '申请加入特训群', '加qq号：2890594972', '0');
