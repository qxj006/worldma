/*
Navicat MySQL Data Transfer

Source Server         : hong
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : wxhong

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-09-06 09:39:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity_msg
-- ----------------------------
DROP TABLE IF EXISTS `activity_msg`;
CREATE TABLE `activity_msg` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `msg` text NOT NULL COMMENT '待发送的活动信息',
  `type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '消息的类型（1文字或2图片）',
  `status` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1表示要发送的活动消息，2表示以过期的活动消息',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity_msg
-- ----------------------------
INSERT INTO `activity_msg` VALUES ('1', '什么是“World码”？\nWorld码是一款微信扫码群发软件\n由程序开发者hong基于微信网页版进行开发\n\n基于兴趣、学习研究而开发，该软件拒绝买卖', '1', '1', '2017-09-06 08:27:09');
INSERT INTO `activity_msg` VALUES ('2', '“World码”核心优势\n1、让别人扫一扫二维码，自动把设置好的活动信息“文字、链接、图片”群发给扫码人微信中的全部好友和微信群。\n2、完美破解线下商家《活动信息传播》难题、经测试引客上门转化率30%以上。\n3、不加好友、自动群发；一经推出，引爆市场；轰炸全城、财源滚滚；所向披靡，谁与争锋.....\n4、World码完全免费使用\n', '1', '1', '2017-09-06 08:28:47');
INSERT INTO `activity_msg` VALUES ('3', '“World码”适用范围\n\n影楼、美容美发、儿童乐园、房地产、服装鞋帽\n餐饮、酒店、KTV、汽车美容、汽车4S店、超市、健身房、教育培训等需要大量客户的各行业线下实体店。\n', '1', '1', '2017-09-06 08:29:24');
INSERT INTO `activity_msg` VALUES ('4', '“World码”应用场景\n\n商家开业、周年庆、节日活动、充卡活动、会议营销等各类商业活动的不定期拓客引流。\n', '1', '1', '2017-09-06 08:29:51');
INSERT INTO `activity_msg` VALUES ('5', '“World码”应用案例\n\n以线下实体店开业“扫码送奖品”为例：一个员工每天在商圈、校园门口完成50人扫码，每个扫码人微信好友平均200人，就是10000人的活动信息曝光量，10个员工就是10万的曝光量；以1%-5%的到店转化率计算，会有1000-5000人到店；以30%的到店购买转化率计算，会有300-1500人到店产生交易\n\n', '1', '1', '2017-09-06 08:31:14');

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(200) DEFAULT NULL COMMENT '客户的昵称',
  `sex` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '客户性别0保密1男2女',
  `city` varchar(15) DEFAULT NULL COMMENT '客户地址',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '客户扫码的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of client
-- ----------------------------

-- ----------------------------
-- Table structure for client_friends
-- ----------------------------
DROP TABLE IF EXISTS `client_friends`;
CREATE TABLE `client_friends` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(200) DEFAULT NULL COMMENT '客户好友的昵称',
  `remark_name` varchar(200) DEFAULT NULL COMMENT '客户好友的备注名称',
  `sex` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '客户性别0保密1男2女',
  `city` varchar(15) DEFAULT NULL COMMENT '客户好友的地址',
  `client_id` int(10) unsigned NOT NULL COMMENT 'client表主键ID',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '数据插入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of client_friends
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
