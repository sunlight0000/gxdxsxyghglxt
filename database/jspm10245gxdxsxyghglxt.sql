/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : jspm10245gxdxsxyghglxt

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2022-01-19 14:58:31
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cx` varchar(50) NOT NULL COMMENT '权限',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '帐号',
  `pwd` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `xingbie` varchar(10) NOT NULL COMMENT '性别',
  `lianxifangshi` varchar(50) NOT NULL DEFAULT '' COMMENT '联系方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='管理员';

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', '超级管理员', 'admin', 'admin', '张德塞', '男', '12345678901');
INSERT INTO `admins` VALUES ('2', '二级管理员', 'admins', 'admins', '张爱国', '男', '12345678902');

-- ----------------------------
-- Table structure for `cepingjieguo`
-- ----------------------------
DROP TABLE IF EXISTS `cepingjieguo`;
CREATE TABLE `cepingjieguo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cepingtikuid` int(10) unsigned NOT NULL COMMENT '测评题库id',
  `cepingbianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '测评编号',
  `cepingmingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '测评名称',
  `faburen` varchar(64) NOT NULL DEFAULT '' COMMENT '发布人',
  `pinggubianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '评估编号',
  `shititimu` varchar(255) NOT NULL DEFAULT '' COMMENT '试题题目',
  `leixing` varchar(255) NOT NULL DEFAULT '' COMMENT '类型',
  `daan` text NOT NULL COMMENT '答案',
  `zimu` varchar(50) NOT NULL DEFAULT '' COMMENT '字母',
  `cepingren` varchar(64) NOT NULL DEFAULT '' COMMENT '测评人',
  PRIMARY KEY (`id`),
  KEY `cepingjieguo_cepingtikuid_index` (`cepingtikuid`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COMMENT='测评结果';

-- ----------------------------
-- Records of cepingjieguo
-- ----------------------------
INSERT INTO `cepingjieguo` VALUES ('21', '2', '01151339191591', '职业规划测评', '100', '01151417193725', '职业测评5', '单选题', 'A、沙发斯蒂芬的', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('22', '2', '01151339191591', '职业规划测评', '100', '01151417193725', '职业测评9', '单选题', 'A、我认为若翁', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('23', '2', '01151339191591', '职业规划测评', '100', '01151417193725', '职业测评1', '单选题', 'A、所发生的', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('24', '2', '01151339191591', '职业规划测评', '100', '01151417193725', '职业测评6', '单选题', 'A、沃尔沃', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('25', '2', '01151339191591', '职业规划测评', '100', '01151417193725', '职业测评3', '单选题', 'A、所发生的', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('26', '2', '01151339191591', '职业规划测评', '100', '01151417193725', '职业测评7', '单选题', 'A、4特然特特人', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('27', '2', '01151339191591', '职业规划测评', '100', '01151417193725', '职业测评2', '单选题', 'A、所发生的', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('28', '2', '01151339191591', '职业规划测评', '100', '01151417193725', '职业测评4', '单选题', 'A、身高多少服务认为', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('29', '2', '01151339191591', '职业规划测评', '100', '01151417193725', '职业测评8', '多选题', 'A、是的发生的,C、沙发斯蒂芬', 'A,C', '999');
INSERT INTO `cepingjieguo` VALUES ('30', '2', '01151339191591', '职业规划测评', '100', '01151417193725', '职业测评10', '多选题', 'A、发送到发送到,C、电饭锅地方回复的', 'A,C', '999');
INSERT INTO `cepingjieguo` VALUES ('31', '2', '01151339191591', '职业规划测评', '100', '01151419341406', '职业测评3', '单选题', 'A、所发生的', 'A', '888');
INSERT INTO `cepingjieguo` VALUES ('32', '2', '01151339191591', '职业规划测评', '100', '01151419341406', '职业测评4', '单选题', 'A、身高多少服务认为', 'A', '888');
INSERT INTO `cepingjieguo` VALUES ('33', '2', '01151339191591', '职业规划测评', '100', '01151419341406', '职业测评2', '单选题', 'A、所发生的', 'A', '888');
INSERT INTO `cepingjieguo` VALUES ('34', '2', '01151339191591', '职业规划测评', '100', '01151419341406', '职业测评1', '单选题', 'B、我认为若', 'B', '888');
INSERT INTO `cepingjieguo` VALUES ('35', '2', '01151339191591', '职业规划测评', '100', '01151419341406', '职业测评5', '单选题', 'A、沙发斯蒂芬的', 'A', '888');
INSERT INTO `cepingjieguo` VALUES ('36', '2', '01151339191591', '职业规划测评', '100', '01151419341406', '职业测评7', '单选题', 'A、4特然特特人', 'A', '888');
INSERT INTO `cepingjieguo` VALUES ('37', '2', '01151339191591', '职业规划测评', '100', '01151419341406', '职业测评6', '单选题', 'D、是发送到发送到', 'D', '888');
INSERT INTO `cepingjieguo` VALUES ('38', '2', '01151339191591', '职业规划测评', '100', '01151419341406', '职业测评9', '单选题', 'C、是发送到发送到', 'C', '888');
INSERT INTO `cepingjieguo` VALUES ('39', '2', '01151339191591', '职业规划测评', '100', '01151419341406', '职业测评10', '多选题', 'A、发送到发送到,B、沃尔沃若', 'A,B', '888');
INSERT INTO `cepingjieguo` VALUES ('40', '2', '01151339191591', '职业规划测评', '100', '01151419341406', '职业测评8', '多选题', 'A、是的发生的,D、是的发送到发送到', 'A,D', '888');
INSERT INTO `cepingjieguo` VALUES ('41', '1', '01151339061399', '学业规划测评', '100', '01151419591320', '学业测评M', '单选题', 'A、舒服舒服', 'A', '888');
INSERT INTO `cepingjieguo` VALUES ('42', '1', '01151339061399', '学业规划测评', '100', '01151419591320', '学业测评C', '单选题', 'A、是否所发生的', 'A', '888');
INSERT INTO `cepingjieguo` VALUES ('43', '1', '01151339061399', '学业规划测评', '100', '01151419591320', '学业测评B', '单选题', 'A、水电费所发生的', 'A', '888');
INSERT INTO `cepingjieguo` VALUES ('44', '1', '01151339061399', '学业规划测评', '100', '01151419591320', '请问是否继续攻读以下那个学位?', '单选题', 'A、博士', 'A', '888');
INSERT INTO `cepingjieguo` VALUES ('45', '1', '01151339061399', '学业规划测评', '100', '01151419591320', '学业测评D', '单选题', 'A、沙发斯蒂芬', 'A', '888');
INSERT INTO `cepingjieguo` VALUES ('46', '1', '01151339061399', '学业规划测评', '100', '01151419591320', '学业测评A', '单选题', 'A、是的发生的', 'A', '888');
INSERT INTO `cepingjieguo` VALUES ('47', '1', '01151339061399', '学业规划测评', '100', '01151419591320', '学业测评F', '多选题', 'A、啥打法是否,C、似睡非睡', 'A,C', '888');
INSERT INTO `cepingjieguo` VALUES ('48', '1', '01151339061399', '学业规划测评', '100', '01151419591320', '学业测评L', '多选题', 'A、所发生的发生,C、是否所发生的', 'A,C', '888');
INSERT INTO `cepingjieguo` VALUES ('49', '1', '01151339061399', '学业规划测评', '100', '01151419591320', '学业测评P', '多选题', 'A、已归还金龟换酒,C、改号码管红玫瑰哈密瓜', 'A,C', '888');
INSERT INTO `cepingjieguo` VALUES ('50', '1', '01151339061399', '学业规划测评', '100', '01151419591320', '学业测评W', '多选题', 'A、东方红鬼地方个,B、热特瑞特人', 'A,B', '888');
INSERT INTO `cepingjieguo` VALUES ('51', '2', '01151339191591', '职业规划测评', '100', '01151435091490', '职业测评3', '单选题', 'A、所发生的', 'A', '666');
INSERT INTO `cepingjieguo` VALUES ('52', '2', '01151339191591', '职业规划测评', '100', '01151435091490', '职业测评5', '单选题', 'A、沙发斯蒂芬的', 'A', '666');
INSERT INTO `cepingjieguo` VALUES ('53', '2', '01151339191591', '职业规划测评', '100', '01151435091490', '职业测评2', '单选题', 'A、所发生的', 'A', '666');
INSERT INTO `cepingjieguo` VALUES ('54', '2', '01151339191591', '职业规划测评', '100', '01151435091490', '职业测评9', '单选题', 'A、我认为若翁', 'A', '666');
INSERT INTO `cepingjieguo` VALUES ('55', '2', '01151339191591', '职业规划测评', '100', '01151435091490', '职业测评7', '单选题', 'A、4特然特特人', 'A', '666');
INSERT INTO `cepingjieguo` VALUES ('56', '2', '01151339191591', '职业规划测评', '100', '01151435091490', '职业测评11', '单选题', 'C、从发鬼地方个地方', 'C', '666');
INSERT INTO `cepingjieguo` VALUES ('57', '2', '01151339191591', '职业规划测评', '100', '01151435091490', '职业测评4', '单选题', 'A、身高多少服务认为', 'A', '666');
INSERT INTO `cepingjieguo` VALUES ('58', '2', '01151339191591', '职业规划测评', '100', '01151435091490', '职业测评6', '单选题', 'A、沃尔沃', 'A', '666');
INSERT INTO `cepingjieguo` VALUES ('59', '2', '01151339191591', '职业规划测评', '100', '01151435091490', '职业测评1', '单选题', 'A、所发生的', 'A', '666');
INSERT INTO `cepingjieguo` VALUES ('60', '2', '01151339191591', '职业规划测评', '100', '01151435091490', '职业测评8', '多选题', 'A、是的发生的,C、沙发斯蒂芬', 'A,C', '666');
INSERT INTO `cepingjieguo` VALUES ('61', '2', '01151339191591', '职业规划测评', '100', '01151435091490', '职业测评10', '多选题', 'A、发送到发送到,E、合集狂欢节狂欢节', 'A,E', '666');
INSERT INTO `cepingjieguo` VALUES ('62', '2', '01151339191591', '职业规划测评', '100', '01151435091490', '职业测评12', '多选题', 'A、截图已经有,C、法国恢复规划法规', 'A,C', '666');
INSERT INTO `cepingjieguo` VALUES ('63', '2', '01151339191591', '职业规划测评', '100', '01151439522100', '职业测评1', '单选题', 'A、所发生的', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('64', '2', '01151339191591', '职业规划测评', '100', '01151439522100', '职业测评4', '单选题', 'A、身高多少服务认为', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('65', '2', '01151339191591', '职业规划测评', '100', '01151439522100', '职业测评3', '单选题', 'A、所发生的', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('66', '2', '01151339191591', '职业规划测评', '100', '01151439522100', '职业测评5', '单选题', 'A、沙发斯蒂芬的', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('67', '2', '01151339191591', '职业规划测评', '100', '01151439522100', '职业测评2', '单选题', 'A、所发生的', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('68', '2', '01151339191591', '职业规划测评', '100', '01151439522100', '职业测评7', '单选题', 'C、所发生的', 'C', '999');
INSERT INTO `cepingjieguo` VALUES ('69', '2', '01151339191591', '职业规划测评', '100', '01151439522100', '职业测评9', '单选题', 'B、所发生的', 'B', '999');
INSERT INTO `cepingjieguo` VALUES ('70', '2', '01151339191591', '职业规划测评', '100', '01151439522100', '职业测评11', '单选题', 'C、从发鬼地方个地方', 'C', '999');
INSERT INTO `cepingjieguo` VALUES ('71', '2', '01151339191591', '职业规划测评', '100', '01151439522100', '职业测评6', '单选题', 'B、沙发斯蒂芬', 'B', '999');
INSERT INTO `cepingjieguo` VALUES ('72', '2', '01151339191591', '职业规划测评', '100', '01151439522100', '职业测评12', '多选题', 'A、截图已经有,B、特瑞特', 'A,B', '999');
INSERT INTO `cepingjieguo` VALUES ('73', '2', '01151339191591', '职业规划测评', '100', '01151439522100', '职业测评10', '多选题', 'A、发送到发送到,E、合集狂欢节狂欢节', 'A,E', '999');
INSERT INTO `cepingjieguo` VALUES ('74', '2', '01151339191591', '职业规划测评', '100', '01151439522100', '职业测评8', '多选题', 'A、是的发生的,C、沙发斯蒂芬', 'A,C', '999');
INSERT INTO `cepingjieguo` VALUES ('75', '2', '01151339191591', '职业规划测评', '100', '01151440013759', '职业测评1', '单选题', 'A、所发生的', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('76', '2', '01151339191591', '职业规划测评', '100', '01151440013759', '职业测评4', '单选题', 'A、身高多少服务认为', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('77', '2', '01151339191591', '职业规划测评', '100', '01151440013759', '职业测评3', '单选题', 'A、所发生的', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('78', '2', '01151339191591', '职业规划测评', '100', '01151440013759', '职业测评5', '单选题', 'A、沙发斯蒂芬的', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('79', '2', '01151339191591', '职业规划测评', '100', '01151440013759', '职业测评2', '单选题', 'A、所发生的', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('80', '2', '01151339191591', '职业规划测评', '100', '01151440013759', '职业测评7', '单选题', 'C、所发生的', 'C', '999');
INSERT INTO `cepingjieguo` VALUES ('81', '2', '01151339191591', '职业规划测评', '100', '01151440013759', '职业测评9', '单选题', 'B、所发生的', 'B', '999');
INSERT INTO `cepingjieguo` VALUES ('82', '2', '01151339191591', '职业规划测评', '100', '01151440013759', '职业测评11', '单选题', 'C、从发鬼地方个地方', 'C', '999');
INSERT INTO `cepingjieguo` VALUES ('83', '2', '01151339191591', '职业规划测评', '100', '01151440013759', '职业测评6', '单选题', 'B、沙发斯蒂芬', 'B', '999');
INSERT INTO `cepingjieguo` VALUES ('84', '2', '01151339191591', '职业规划测评', '100', '01151440013759', '职业测评12', '多选题', 'A、截图已经有,B、特瑞特', 'A,B', '999');
INSERT INTO `cepingjieguo` VALUES ('85', '2', '01151339191591', '职业规划测评', '100', '01151440013759', '职业测评10', '多选题', 'A、发送到发送到,E、合集狂欢节狂欢节', 'A,E', '999');
INSERT INTO `cepingjieguo` VALUES ('86', '2', '01151339191591', '职业规划测评', '100', '01151440013759', '职业测评8', '多选题', 'A、是的发生的,C、沙发斯蒂芬', 'A,C', '999');
INSERT INTO `cepingjieguo` VALUES ('87', '2', '01151339191591', '职业规划测评', '100', '01151440133537', '职业测评1', '单选题', 'A、所发生的', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('88', '2', '01151339191591', '职业规划测评', '100', '01151440133537', '职业测评4', '单选题', 'A、身高多少服务认为', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('89', '2', '01151339191591', '职业规划测评', '100', '01151440133537', '职业测评3', '单选题', 'A、所发生的', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('90', '2', '01151339191591', '职业规划测评', '100', '01151440133537', '职业测评5', '单选题', 'A、沙发斯蒂芬的', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('91', '2', '01151339191591', '职业规划测评', '100', '01151440133537', '职业测评2', '单选题', 'A、所发生的', 'A', '999');
INSERT INTO `cepingjieguo` VALUES ('92', '2', '01151339191591', '职业规划测评', '100', '01151440133537', '职业测评7', '单选题', 'C、所发生的', 'C', '999');
INSERT INTO `cepingjieguo` VALUES ('93', '2', '01151339191591', '职业规划测评', '100', '01151440133537', '职业测评9', '单选题', 'B、所发生的', 'B', '999');
INSERT INTO `cepingjieguo` VALUES ('94', '2', '01151339191591', '职业规划测评', '100', '01151440133537', '职业测评11', '单选题', 'C、从发鬼地方个地方', 'C', '999');
INSERT INTO `cepingjieguo` VALUES ('95', '2', '01151339191591', '职业规划测评', '100', '01151440133537', '职业测评6', '单选题', 'B、沙发斯蒂芬', 'B', '999');

-- ----------------------------
-- Table structure for `cepingshiti`
-- ----------------------------
DROP TABLE IF EXISTS `cepingshiti`;
CREATE TABLE `cepingshiti` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cepingtikuid` int(10) unsigned NOT NULL COMMENT '测评题库id',
  `cepingbianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '测评编号',
  `cepingmingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '测评名称',
  `faburen` varchar(64) NOT NULL DEFAULT '' COMMENT '发布人',
  `shititimu` varchar(255) NOT NULL DEFAULT '' COMMENT '试题题目',
  `leixing` varchar(50) NOT NULL COMMENT '类型',
  `daan` text NOT NULL COMMENT '答案',
  PRIMARY KEY (`id`),
  KEY `cepingshiti_cepingtikuid_index` (`cepingtikuid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COMMENT='测评试题';

-- ----------------------------
-- Records of cepingshiti
-- ----------------------------
INSERT INTO `cepingshiti` VALUES ('1', '1', '01151339061399', '学业规划测评', '100', '请问是否继续攻读以下那个学位?', '单选题', '[{\"zimu\":\"A\",\"title\":\"博士\"},{\"zimu\":\"B\",\"title\":\"硕士\"},{\"zimu\":\"C\",\"title\":\"研究生\"}]');
INSERT INTO `cepingshiti` VALUES ('2', '1', '01151339061399', '学业规划测评', '100', '学业测评A', '单选题', '[{\"zimu\":\"A\",\"title\":\"是的发生的\"},{\"zimu\":\"B\",\"title\":\"无人\"},{\"zimu\":\"C\",\"title\":\"水电费水电费水电费\"}]');
INSERT INTO `cepingshiti` VALUES ('3', '1', '01151339061399', '学业规划测评', '100', '学业测评B', '单选题', '[{\"zimu\":\"A\",\"title\":\"水电费所发生的\"},{\"zimu\":\"B\",\"title\":\"玩儿翁热无\"},{\"zimu\":\"C\",\"title\":\"啥打法是否是发\"}]');
INSERT INTO `cepingshiti` VALUES ('4', '1', '01151339061399', '学业规划测评', '100', '学业测评C', '单选题', '[{\"zimu\":\"A\",\"title\":\"是否所发生的\"},{\"zimu\":\"B\",\"title\":\"沃尔沃若翁\"},{\"zimu\":\"C\",\"title\":\"发的鬼地方个地方\"},{\"zimu\":\"D\",\"title\":\"我认为若翁人翁\"}]');
INSERT INTO `cepingshiti` VALUES ('5', '1', '01151339061399', '学业规划测评', '100', '学业测评D', '单选题', '[{\"zimu\":\"A\",\"title\":\"沙发斯蒂芬\"},{\"zimu\":\"B\",\"title\":\"玩儿二翁\"}]');
INSERT INTO `cepingshiti` VALUES ('6', '1', '01151339061399', '学业规划测评', '100', '学业测评F', '多选题', '[{\"zimu\":\"A\",\"title\":\"啥打法是否\"},{\"zimu\":\"B\",\"title\":\"我认为二\"},{\"zimu\":\"C\",\"title\":\"似睡非睡\"},{\"zimu\":\"D\",\"title\":\"是的发送到发送到\"}]');
INSERT INTO `cepingshiti` VALUES ('7', '1', '01151339061399', '学业规划测评', '100', '学业测评L', '多选题', '[{\"zimu\":\"A\",\"title\":\"所发生的发生\"},{\"zimu\":\"B\",\"title\":\"我认为二翁\"},{\"zimu\":\"C\",\"title\":\"是否所发生的\"},{\"zimu\":\"D\",\"title\":\"我认为若翁人翁二\"}]');
INSERT INTO `cepingshiti` VALUES ('8', '1', '01151339061399', '学业规划测评', '100', '学业测评P', '多选题', '[{\"zimu\":\"A\",\"title\":\"已归还金龟换酒\"},{\"zimu\":\"B\",\"title\":\"让他一人一人头\"},{\"zimu\":\"C\",\"title\":\"改号码管红玫瑰哈密瓜\"}]');
INSERT INTO `cepingshiti` VALUES ('9', '1', '01151339061399', '学业规划测评', '100', '学业测评W', '多选题', '[{\"zimu\":\"A\",\"title\":\"东方红鬼地方个\"},{\"zimu\":\"B\",\"title\":\"热特瑞特人\"},{\"zimu\":\"C\",\"title\":\"把你妈比你们还能\"}]');
INSERT INTO `cepingshiti` VALUES ('10', '1', '01151339061399', '学业规划测评', '100', '学业测评M', '单选题', '[{\"zimu\":\"A\",\"title\":\"舒服舒服\"},{\"zimu\":\"B\",\"title\":\"容易热腾\"},{\"zimu\":\"C\",\"title\":\"电饭锅电饭锅发过的\"}]');
INSERT INTO `cepingshiti` VALUES ('11', '2', '01151339191591', '职业规划测评', '100', '职业测评1', '单选题', '[{\"zimu\":\"A\",\"title\":\"所发生的\"},{\"zimu\":\"B\",\"title\":\"我认为若\"},{\"zimu\":\"C\",\"title\":\"电饭锅大概地方\"}]');
INSERT INTO `cepingshiti` VALUES ('12', '2', '01151339191591', '职业规划测评', '100', '职业测评2', '单选题', '[{\"zimu\":\"A\",\"title\":\"所发生的\"},{\"zimu\":\"B\",\"title\":\"我认为二翁\"}]');
INSERT INTO `cepingshiti` VALUES ('13', '2', '01151339191591', '职业规划测评', '100', '职业测评3', '单选题', '[{\"zimu\":\"A\",\"title\":\"所发生的\"},{\"zimu\":\"B\",\"title\":\"尔特让他\"},{\"zimu\":\"C\",\"title\":\"否重复花港饭店\"}]');
INSERT INTO `cepingshiti` VALUES ('14', '2', '01151339191591', '职业规划测评', '100', '职业测评4', '单选题', '[{\"zimu\":\"A\",\"title\":\"身高多少服务认为\"},{\"zimu\":\"B\",\"title\":\"我认为二翁二\"}]');
INSERT INTO `cepingshiti` VALUES ('15', '2', '01151339191591', '职业规划测评', '100', '职业测评5', '单选题', '[{\"zimu\":\"A\",\"title\":\"沙发斯蒂芬的\"},{\"zimu\":\"B\",\"title\":\"我认为若翁\"}]');
INSERT INTO `cepingshiti` VALUES ('16', '2', '01151339191591', '职业规划测评', '100', '职业测评6', '单选题', '[{\"zimu\":\"A\",\"title\":\"沃尔沃\"},{\"zimu\":\"B\",\"title\":\"沙发斯蒂芬\"},{\"zimu\":\"C\",\"title\":\"水电费工时费\"},{\"zimu\":\"D\",\"title\":\"是发送到发送到\"}]');
INSERT INTO `cepingshiti` VALUES ('17', '2', '01151339191591', '职业规划测评', '100', '职业测评7', '单选题', '[{\"zimu\":\"A\",\"title\":\"4特然特特人\"},{\"zimu\":\"B\",\"title\":\"好几个号号\"},{\"zimu\":\"C\",\"title\":\"所发生的\"},{\"zimu\":\"D\",\"title\":\"热污染翁\"}]');
INSERT INTO `cepingshiti` VALUES ('18', '2', '01151339191591', '职业规划测评', '100', '职业测评8', '多选题', '[{\"zimu\":\"A\",\"title\":\"是的发生的\"},{\"zimu\":\"B\",\"title\":\"我认为二\"},{\"zimu\":\"C\",\"title\":\"沙发斯蒂芬\"},{\"zimu\":\"D\",\"title\":\"是的发送到发送到\"}]');
INSERT INTO `cepingshiti` VALUES ('19', '2', '01151339191591', '职业规划测评', '100', '职业测评9', '单选题', '[{\"zimu\":\"A\",\"title\":\"我认为若翁\"},{\"zimu\":\"B\",\"title\":\"所发生的\"},{\"zimu\":\"C\",\"title\":\"是发送到发送到\"}]');
INSERT INTO `cepingshiti` VALUES ('20', '2', '01151339191591', '职业规划测评', '100', '职业测评10', '多选题', '[{\"zimu\":\"A\",\"title\":\"发送到发送到\"},{\"zimu\":\"B\",\"title\":\"沃尔沃若\"},{\"zimu\":\"C\",\"title\":\"电饭锅地方回复的\"},{\"zimu\":\"E\",\"title\":\"合集狂欢节狂欢节\"}]');
INSERT INTO `cepingshiti` VALUES ('21', '2', '01151339191591', '职业规划测评', '100', '职业测评11', '单选题', '[{\"zimu\":\"A\",\"title\":\"啥打法是否\"},{\"zimu\":\"B\",\"title\":\"王蓉蓉翁\"},{\"zimu\":\"C\",\"title\":\"从发鬼地方个地方\"},{\"zimu\":\"D\",\"title\":\"特热特瑞特人\"}]');
INSERT INTO `cepingshiti` VALUES ('22', '2', '01151339191591', '职业规划测评', '100', '职业测评12', '多选题', '[{\"zimu\":\"A\",\"title\":\"截图已经有\"},{\"zimu\":\"B\",\"title\":\"特瑞特\"},{\"zimu\":\"C\",\"title\":\"法国恢复规划法规\"},{\"zimu\":\"D\",\"title\":\"对符合规范广告费\"},{\"zimu\":\"E\",\"title\":\"儿童热\"}]');

-- ----------------------------
-- Table structure for `cepingtiku`
-- ----------------------------
DROP TABLE IF EXISTS `cepingtiku`;
CREATE TABLE `cepingtiku` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cepingbianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '测评编号',
  `cepingmingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '测评名称',
  `cepingjianjie` varchar(50) NOT NULL DEFAULT '' COMMENT '测评简介',
  `faburen` varchar(64) NOT NULL DEFAULT '' COMMENT '发布人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='测评题库';

-- ----------------------------
-- Records of cepingtiku
-- ----------------------------
INSERT INTO `cepingtiku` VALUES ('1', '01151339061399', '学业规划测评', 'XXX', '100');
INSERT INTO `cepingtiku` VALUES ('2', '01151339191591', '职业规划测评', 'XXX', '100');

-- ----------------------------
-- Table structure for `fudaoyuan`
-- ----------------------------
DROP TABLE IF EXISTS `fudaoyuan`;
CREATE TABLE `fudaoyuan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gonghao` varchar(50) NOT NULL DEFAULT '' COMMENT '工号',
  `mima` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `xingbie` varchar(10) NOT NULL COMMENT '性别',
  `lianxifangshi` varchar(50) NOT NULL DEFAULT '' COMMENT '联系方式',
  `biyeyuanxiao` varchar(50) NOT NULL DEFAULT '' COMMENT '毕业院校',
  `youxiang` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='辅导员';

-- ----------------------------
-- Records of fudaoyuan
-- ----------------------------
INSERT INTO `fudaoyuan` VALUES ('1', '200', '200', '陈辅导', '男', '12345678955', '北京师范', '7745@qq.com');

-- ----------------------------
-- Table structure for `jiaoshi`
-- ----------------------------
DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE `jiaoshi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gonghao` varchar(50) NOT NULL DEFAULT '' COMMENT '工号',
  `mima` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `xingbie` varchar(10) NOT NULL COMMENT '性别',
  `lianxifangshi` varchar(50) NOT NULL DEFAULT '' COMMENT '联系方式',
  `biyeyuanxiao` varchar(50) NOT NULL DEFAULT '' COMMENT '毕业院校',
  `youxiang` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='教师';

-- ----------------------------
-- Records of jiaoshi
-- ----------------------------
INSERT INTO `jiaoshi` VALUES ('1', '100', '100', '杨老师', '男', '12345654545', '北京师范', '1235@qq.com');

-- ----------------------------
-- Table structure for `kemu`
-- ----------------------------
DROP TABLE IF EXISTS `kemu`;
CREATE TABLE `kemu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kemumingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '科目名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='科目';

-- ----------------------------
-- Records of kemu
-- ----------------------------
INSERT INTO `kemu` VALUES ('1', '语文');
INSERT INTO `kemu` VALUES ('2', '数学');
INSERT INTO `kemu` VALUES ('3', '英语');
INSERT INTO `kemu` VALUES ('4', '计算机');

-- ----------------------------
-- Table structure for `xinxifankui`
-- ----------------------------
DROP TABLE IF EXISTS `xinxifankui`;
CREATE TABLE `xinxifankui` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fankuibianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '反馈编号',
  `fankuishijian` varchar(25) NOT NULL COMMENT '反馈时间',
  `fankuineirong` text NOT NULL COMMENT '反馈内容',
  `fankuihuifu` text NOT NULL COMMENT '反馈回复',
  `fankuixuesheng` varchar(64) NOT NULL DEFAULT '' COMMENT '反馈学生',
  `fankuizhuangtai` varchar(50) NOT NULL COMMENT '反馈状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='信息反馈';

-- ----------------------------
-- Records of xinxifankui
-- ----------------------------
INSERT INTO `xinxifankui` VALUES ('1', '01151353444257', '2022-01-15 13:53:44', '是的发生的是的发送到发送到', '是否所发生的发', '999', '已回复');
INSERT INTO `xinxifankui` VALUES ('2', '01151433521180', '2022-01-15 14:33:52', '是发是发送到发送到问', '水电费水电费', '666', '已回复');

-- ----------------------------
-- Table structure for `xuesheng`
-- ----------------------------
DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE `xuesheng` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xuehao` varchar(50) NOT NULL DEFAULT '' COMMENT '学号',
  `mima` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `xingbie` varchar(10) NOT NULL COMMENT '性别',
  `lianxifangshi` varchar(50) NOT NULL DEFAULT '' COMMENT '联系方式',
  `yuanxi` varchar(50) NOT NULL DEFAULT '' COMMENT '院系',
  `zhuanye` varchar(50) NOT NULL DEFAULT '' COMMENT '专业',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='学生';

-- ----------------------------
-- Records of xuesheng
-- ----------------------------
INSERT INTO `xuesheng` VALUES ('1', '999', '999', '小红', '女', '12345678459', '计算机', '编程');
INSERT INTO `xuesheng` VALUES ('2', '888', '888', '小王', '男', '12345678909', '计算机', '编程');
INSERT INTO `xuesheng` VALUES ('3', '666', '666', '李四', '男', '12345678955', '计算机', '编程');

-- ----------------------------
-- Table structure for `xuexichengji`
-- ----------------------------
DROP TABLE IF EXISTS `xuexichengji`;
CREATE TABLE `xuexichengji` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chengjibianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '成绩编号',
  `xuesheng` int(10) unsigned NOT NULL COMMENT '学生ID',
  `xuehao` varchar(64) NOT NULL DEFAULT '' COMMENT '学号',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `yuanxi` varchar(50) NOT NULL DEFAULT '' COMMENT '院系',
  `zhuanye` varchar(50) NOT NULL DEFAULT '' COMMENT '专业',
  `xuenian` varchar(25) NOT NULL COMMENT '学年',
  `kemu` int(10) unsigned NOT NULL COMMENT '科目',
  `chengji` varchar(50) NOT NULL DEFAULT '' COMMENT '成绩',
  `chengjibeizhu` text NOT NULL COMMENT '成绩备注',
  `tianjiaren` varchar(64) NOT NULL DEFAULT '' COMMENT '添加人',
  PRIMARY KEY (`id`),
  KEY `xuexichengji_xuesheng_index` (`xuesheng`),
  KEY `xuexichengji_kemu_index` (`kemu`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='学习成绩';

-- ----------------------------
-- Records of xuexichengji
-- ----------------------------
INSERT INTO `xuexichengji` VALUES ('1', '01151336126559', '2', '888', '小王', '计算机', '编程', '2020', '4', '75', 'XXX', '200');
INSERT INTO `xuexichengji` VALUES ('2', '01151336351468', '2', '888', '小王', '计算机', '编程', '2020', '3', '69', 'X', '200');
INSERT INTO `xuexichengji` VALUES ('3', '01151336423130', '2', '888', '小王', '计算机', '编程', '2020', '2', '83', 'XX', '200');
INSERT INTO `xuexichengji` VALUES ('4', '01151336485068', '2', '888', '小王', '计算机', '编程', '2020', '1', '69', 'XXX', '200');
INSERT INTO `xuexichengji` VALUES ('5', '01151337007038', '1', '999', '小红', '计算机', '编程', '2021', '4', '85', 'X', '200');
INSERT INTO `xuexichengji` VALUES ('6', '01151337072463', '2', '888', '小王', '计算机', '编程', '2021', '3', '93', 'X', '200');
INSERT INTO `xuexichengji` VALUES ('7', '01151337141633', '2', '888', '小王', '计算机', '编程', '2021', '2', '79', 'XX', '200');
INSERT INTO `xuexichengji` VALUES ('8', '01151337214576', '2', '888', '小王', '计算机', '编程', '2021', '1', '69', 'X', '200');
INSERT INTO `xuexichengji` VALUES ('9', '01151337339456', '1', '999', '小红', '计算机', '编程', '2020', '4', '99', 'X', '200');
INSERT INTO `xuexichengji` VALUES ('10', '01151337406003', '1', '999', '小红', '计算机', '编程', '2020', '3', '85', 'X', '200');
INSERT INTO `xuexichengji` VALUES ('11', '01151337451477', '1', '999', '小红', '计算机', '编程', '2020', '2', '80', 'X', '200');
INSERT INTO `xuexichengji` VALUES ('12', '01151337517691', '1', '999', '小红', '计算机', '编程', '2020', '1', '71', 'X', '200');
INSERT INTO `xuexichengji` VALUES ('13', '01151338101915', '1', '999', '小红', '计算机', '编程', '2021', '4', '89', 'X', '200');
INSERT INTO `xuexichengji` VALUES ('14', '01151338168684', '1', '999', '小红', '计算机', '编程', '2021', '3', '93', 'X', '200');
INSERT INTO `xuexichengji` VALUES ('15', '01151338222552', '1', '999', '小红', '计算机', '编程', '2021', '2', '70', 'X', '200');
INSERT INTO `xuexichengji` VALUES ('16', '01151338285922', '1', '999', '小红', '计算机', '编程', '2021', '1', '88', 'X', '200');
INSERT INTO `xuexichengji` VALUES ('17', '01151431479507', '3', '666', '李四', '计算机', '编程', '2020', '4', '69', 'X', '200');
INSERT INTO `xuexichengji` VALUES ('18', '01151431533643', '3', '666', '李四', '计算机', '编程', '2020', '3', '72', 'X', '200');
INSERT INTO `xuexichengji` VALUES ('19', '01151431591418', '3', '666', '李四', '计算机', '编程', '2020', '2', '82', 'X', '200');
INSERT INTO `xuexichengji` VALUES ('20', '01151432051696', '3', '666', '李四', '计算机', '编程', '2020', '1', '92', '', '200');
INSERT INTO `xuexichengji` VALUES ('21', '01151432244171', '3', '666', '李四', '计算机', '编程', '2021', '4', '83', '', '200');
