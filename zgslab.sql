/*
 Navicat Premium Data Transfer

 Source Server         : 浙工商zgslab项目
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : 47.92.117.54:3307
 Source Schema         : zgslab

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 06/09/2019 15:50:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `question_id` int(11) NULL DEFAULT NULL COMMENT '答案id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '评论',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间 ',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最近一次更改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
INSERT INTO `tb_comment` VALUES (1, 1, '王杰', '登录进去后，选择分拣实验，按照系统操作流程。', '2019-08-13 17:10:53', '2019-08-13 17:10:53');
INSERT INTO `tb_comment` VALUES (2, 2, '李桂英', '播种式电子标签拣货系统DAS中的每一电子标签所代表的是一个订货厂商或是一个配送对象，即一个电子标签代表一张订货单。工作人员汇集多家订货单位的多张订货单，按货品进行分类，依照货品为处理单位。', '2019-08-13 17:11:25', '2019-08-13 17:11:25');
INSERT INTO `tb_comment` VALUES (3, 3, '王军', 'VR仿真实验完全模拟现实操作流程，按照操作流程指引即可完全掌握！', '2019-08-23 17:49:40', '2019-08-23 17:49:40');
INSERT INTO `tb_comment` VALUES (4, 4, '赵健', '是的，大神蒋老师讲授的。', '2019-08-23 17:50:00', '2019-08-23 17:50:00');
INSERT INTO `tb_comment` VALUES (5, 5, '李松', '仿真实验是利用FLASH技术开发的最富真实感的实验,可直接在电脑上在线模拟操作。', '2019-08-23 17:53:19', '2019-08-23 17:53:19');
INSERT INTO `tb_comment` VALUES (6, 6, '张大卫', '是的，刚开设没多久，据说用的是VR技术。', '2019-08-23 17:53:56', '2019-08-23 17:53:56');
INSERT INTO `tb_comment` VALUES (7, 7, '张国会', '登陆教育管理系统后，进入视频下载区下载即可，网速不太好。', '2019-08-23 17:56:09', '2019-08-23 17:56:09');
INSERT INTO `tb_comment` VALUES (8, 8, '华芳', 'vue.js吧，目前主流的前端开发框架。', '2019-08-23 17:56:11', '2019-08-23 17:56:11');
INSERT INTO `tb_comment` VALUES (9, 9, '立文', '我也觉得是U3D，最近在研究这么技术。', '2019-08-23 17:56:13', '2019-08-23 17:56:13');
INSERT INTO `tb_comment` VALUES (10, 10, '周康', '拣货指：依据顾客的订货要求或配送中心的送货计划，尽可能迅速、准确地将商品从其储位或其他区域拣取出来，并按一定的方式进行分类、集中、等待配装送货的作业流程。', '2019-08-23 17:56:19', '2019-08-23 17:56:19');
INSERT INTO `tb_comment` VALUES (11, 11, '张代', '上课不听讲哈，去好好看看教程，书上有讲到哈哈。', '2019-08-23 18:03:34', '2019-08-23 18:03:34');
INSERT INTO `tb_comment` VALUES (12, 12, '王强', '是的，直接去电脑房上机操作。', '2019-08-23 18:03:42', '2019-08-23 18:03:42');
INSERT INTO `tb_comment` VALUES (13, 13, '张国超', '时间大概1个小时左右。', '2019-08-28 22:00:54', '2019-08-28 22:00:54');
INSERT INTO `tb_comment` VALUES (14, 14, '张永华', '多上机操作，多回顾回顾，多看书。', '2019-08-30 11:44:38', '2019-08-30 11:44:38');
INSERT INTO `tb_comment` VALUES (15, 15, '张守', '有的，去教务下载区下载，我已经下载好了。', '2019-08-30 12:57:57', '2019-08-30 12:57:57');
INSERT INTO `tb_comment` VALUES (16, 16, '周洁', 'web已经对接好u3d程序，u3d产生的试验记录数据在昨完3次实验后，会直接在web端自动展示报告。', '2019-08-30 12:58:05', '2019-08-30 12:58:05');
INSERT INTO `tb_comment` VALUES (17, 17, '张伟', '提一下申请给到老师，然后申请批复了，就可以去了。', '2019-08-30 12:58:06', '2019-08-30 12:58:06');
INSERT INTO `tb_comment` VALUES (18, 18, '王伟', '和上海形拓科技有限公司一起合作搞的。', '2019-08-30 18:25:15', '2019-08-30 18:25:15');
INSERT INTO `tb_comment` VALUES (19, 19, '王芳', '明天老师家里有事情，后天上实验课。', '2019-08-30 18:25:15', '2019-08-30 18:25:15');
INSERT INTO `tb_comment` VALUES (20, 20, '李伟', '通过上下左右键去移动，查看。', '2019-08-30 18:25:15', '2019-08-30 18:25:15');

-- ----------------------------
-- Table structure for tb_course
-- ----------------------------
DROP TABLE IF EXISTS `tb_course`;
CREATE TABLE `tb_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程主键id',
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_course
-- ----------------------------
INSERT INTO `tb_course` VALUES (1, '电商小件商品快速拣货决策虚拟仿真实验', '2019-08-09 09:21:32', '2019-08-09 09:21:34');
INSERT INTO `tb_course` VALUES (2, '实验课程2', '2019-08-09 09:21:46', '2019-08-09 09:21:49');

-- ----------------------------
-- Table structure for tb_evaluate_suggest
-- ----------------------------
DROP TABLE IF EXISTS `tb_evaluate_suggest`;
CREATE TABLE `tb_evaluate_suggest`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校',
  `suggest` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '建议',
  `star` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评级',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次更新时间',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_evaluate_suggest
-- ----------------------------
INSERT INTO `tb_evaluate_suggest` VALUES (1, '张华', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-08-11 11:12:11', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (2, '王秀兰', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-08-14 11:13:16', '2019-08-14 11:13:16', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (3, '李霞', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-08-18 13:26:29', '2019-08-14 13:26:29', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (4, '王勇', '浙江工商管理大学', '蒋老师讲课好', '5', '2017-07-14 13:26:54', '2019-08-14 13:26:54', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (5, '刘敏', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-04-12 15:27:20', '2019-08-14 13:27:20', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (6, '李丽', '浙江工商管理大学', '蒋老师讲课好', '4', '2018-08-22 16:21:33', '2019-08-22 16:21:33', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (7, '张强', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-08-22 16:57:19', '2019-08-22 16:57:19', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (8, '王平', '浙江工商管理大学', '蒋老师讲课好', '4', '2018-08-23 14:58:10', '2019-08-23 14:58:10', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (9, '李亮', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-08-23 14:58:18', '2019-08-23 14:58:18', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (10, '王刚', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-08-24 14:58:30', '2019-08-23 14:58:30', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (11, '王杰', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-08-23 14:58:42', '2019-08-23 14:58:42', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (12, '李桂英', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-08-23 14:59:02', '2019-08-23 14:59:02', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (13, '王军', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-08-23 15:01:25', '2019-08-23 15:01:25', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (14, '赵健', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-05-24 15:01:25', '2019-08-23 15:01:25', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (15, '李松', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-05-23 15:02:46', '2019-08-23 15:02:46', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (16, '张大卫', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-05-23 15:04:51', '2019-08-23 15:04:51', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (17, '张国会', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-05-23 15:04:54', '2019-08-23 15:04:54', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (18, '华芳', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-04-23 15:04:56', '2019-08-23 15:04:56', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (19, '立文', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-04-23 15:05:02', '2019-08-23 15:05:02', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (20, '周康', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-04-23 15:05:04', '2019-08-23 15:05:04', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (21, '张代', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-04-23 15:05:07', '2019-08-23 15:05:07', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (22, '王强', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-04-23 15:05:12', '2019-08-23 15:05:12', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (23, '张国超', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-04-23 15:05:15', '2019-08-23 15:05:15', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (24, '张永华', '浙江工商管理大学', '蒋老师讲课好', '5', '2017-07-23 15:05:21', '2019-08-23 15:05:21', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (25, '张守', '浙江工商管理大学', '蒋老师讲课好', '5', '2017-07-25 16:49:08', '2019-08-30 15:48:00', 16);
INSERT INTO `tb_evaluate_suggest` VALUES (26, '周洁', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-03-11 11:18:10', '2019-08-30 15:48:00', 16);
INSERT INTO `tb_evaluate_suggest` VALUES (27, '张伟', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-06-30 15:53:03', '2019-08-30 15:48:00', 16);
INSERT INTO `tb_evaluate_suggest` VALUES (28, '王伟', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-06-30 15:48:00', '2019-08-30 15:48:00', 16);
INSERT INTO `tb_evaluate_suggest` VALUES (29, '王芳', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-05-30 16:47:08', '2019-08-30 15:48:00', 16);
INSERT INTO `tb_evaluate_suggest` VALUES (30, '李伟', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-06-30 16:47:08', '2019-08-30 15:48:00', 16);
INSERT INTO `tb_evaluate_suggest` VALUES (31, '王秀英', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-06-30 11:22:22', '2019-08-30 15:48:00', 16);
INSERT INTO `tb_evaluate_suggest` VALUES (32, '李秀英', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-06-30 13:38:09', '2019-08-30 15:48:00', 16);
INSERT INTO `tb_evaluate_suggest` VALUES (33, '李娜', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-06-23 13:48:08', '2019-08-30 15:48:00', 16);
INSERT INTO `tb_evaluate_suggest` VALUES (34, '张秀英', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-06-30 15:48:00', '2019-08-30 15:48:00', 16);
INSERT INTO `tb_evaluate_suggest` VALUES (35, '刘伟', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-05-30 15:22:24', '2019-08-30 15:48:00', 16);
INSERT INTO `tb_evaluate_suggest` VALUES (36, '张敏', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-05-30 14:38:03', '2019-08-30 15:48:00', 16);
INSERT INTO `tb_evaluate_suggest` VALUES (37, '李静', '浙江工商管理大学', '蒋老师讲课好', '5', '2017-07-23 17:18:09', '2019-08-30 15:48:00', 16);
INSERT INTO `tb_evaluate_suggest` VALUES (38, '张丽', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-04-30 14:18:18', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (39, '王静', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-05-20 12:20:41', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (40, '王丽', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-05-14 13:13:31', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (41, '李强', '浙江工商管理大学', '蒋老师讲课好', '5', '2017-04-14 14:15:16', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (42, '张静', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-07-17 16:17:16', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (43, '李敏', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-08-14 11:12:11', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (44, '王敏', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-05-14 16:23:41', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (45, '王磊', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-05-14 16:12:31', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (46, '李军', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-05-14 15:15:15', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (47, '刘洋', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-11-12 10:52:41', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (48, '王勇勇', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-03-22 14:14:21', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (49, '张勇', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-10-14 16:32:32', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (50, '王艳', '浙江工商管理大学', '蒋老师讲课好', '5', '2017-05-18 10:32:31', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (51, '李杰', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-09-14 13:12:11', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (52, '张磊', '浙江工商管理大学', '蒋老师讲课好', '5', '2017-08-14 11:12:19', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (53, '王强强', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-11-14 14:12:14', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (54, '张杰', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-10-25 13:19:19', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (55, '张军', '浙江工商管理大学', '蒋老师讲课好', '5', '2017-08-24 10:25:25', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (56, '李娟', '浙江工商管理大学', '蒋老师讲课好', '5', '2017-04-24 10:32:16', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (57, '张艳', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-05-14 15:17:22', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (58, '张涛', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-05-12 16:15:15', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (59, '王涛', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-04-14 15:12:31', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (60, '李明', '浙江工商管理大学', '蒋老师讲课好', '5', '2017-11-25 12:25:17', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (61, '李艳', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-05-14 16:35:22', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (62, '王超', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-06-14 09:17:37', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (63, '李勇', '浙江工商管理大学', '蒋老师讲课好', '5', '2017-09-14 13:12:11', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (64, '王娟', '浙江工商管理大学', '蒋老师讲课好', '5', '2019-04-13 11:19:31', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (65, '刘杰', '浙江工商管理大学', '蒋老师讲课好', '5', '2018-07-14 10:12:51', '2019-08-14 11:12:11', NULL);
INSERT INTO `tb_evaluate_suggest` VALUES (66, '黄芸', '浙江工商管理大学', '蒋老师讲课好', '5', '2017-06-14 13:17:55', '2019-08-14 11:12:11', NULL);

-- ----------------------------
-- Table structure for tb_experiment
-- ----------------------------
DROP TABLE IF EXISTS `tb_experiment`;
CREATE TABLE `tb_experiment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '实验id',
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次更新时间',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名字',
  `experiment_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验编码',
  `experiment_start_time` datetime(0) NULL DEFAULT NULL COMMENT '实验开始时间',
  `experiment_end_time` datetime(0) NULL DEFAULT NULL COMMENT '实验结束时间',
  `experiment_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_experiment
-- ----------------------------
INSERT INTO `tb_experiment` VALUES (13, '电商小件商品快速拣货决策虚拟仿真实验', '2019-08-21 15:38:08', '2019-09-02 16:22:39', '蒋长兵', 'HN0MNMSU', '2019-09-01 01:02:06', '2019-10-01 12:03:02', '2019年6月 05班中期测验');
INSERT INTO `tb_experiment` VALUES (14, '电商小件商品快速拣货决策虚拟仿真实验', '2019-08-21 15:42:02', '2019-09-02 16:21:25', '蒋长兵', 'T14YUFH7', '2019-05-21 15:41:53', '2019-05-22 15:41:55', '2019年5月 05班中期测验');
INSERT INTO `tb_experiment` VALUES (15, '电商小件商品快速拣货决策虚拟仿真实验', '2019-08-21 15:44:27', '2019-09-02 16:21:00', '蒋长兵', 'YWJPKNIU', '2019-04-02 00:00:00', '2019-04-03 00:00:00', '2019年4月 05班中期测验');
INSERT INTO `tb_experiment` VALUES (17, '电商小件商品快速拣货决策虚拟仿真实验', '2019-08-21 16:08:48', '2019-09-02 16:20:33', '蒋长兵', 'MDAOIU9N', '2019-03-15 00:00:00', '2019-03-16 00:00:00', '2019年3月 05班中期测验');
INSERT INTO `tb_experiment` VALUES (18, '电商小件商品快速拣货决策虚拟仿真实验', '2019-08-21 16:12:21', '2019-09-02 16:19:53', '蒋长兵', 'S38T5YUF', '2018-03-10 00:00:00', '2018-03-11 00:00:00', '2018年3月 05班中期测验');
INSERT INTO `tb_experiment` VALUES (19, '电商小件商品快速拣货决策虚拟仿真实验', '2019-08-21 16:13:04', '2019-09-02 16:19:50', '蒋长兵', 'S3X0JOD8', '2018-04-12 00:00:04', '2018-04-13 00:00:00', '2018年4月 05班中期测验');
INSERT INTO `tb_experiment` VALUES (20, '电商小件商品快速拣货决策虚拟仿真实验', '2019-08-21 16:30:26', '2019-09-02 16:19:22', '蒋长兵', '1S24E6N0', '2018-05-09 12:00:00', '2018-05-10 17:20:50', '2018年5月 05班中期测验');
INSERT INTO `tb_experiment` VALUES (23, '电商小件商品快速拣货决策虚拟仿真实验', '2019-08-23 12:58:02', '2019-09-02 16:19:33', '蒋长兵', 'B0C1TA4H', '2018-06-24 12:57:58', '2018-06-25 13:58:55', '2018年6月 05班中期测验');
INSERT INTO `tb_experiment` VALUES (24, '电商小件商品快速拣货决策虚拟仿真实验', '2019-08-23 12:58:22', '2019-09-02 16:19:39', '蒋长兵', 'B0C1TA4H', '2018-07-23 12:57:53', '2018-07-24 12:59:59', '2018年7月 05班中期测验');
INSERT INTO `tb_experiment` VALUES (25, '电商小件商品快速拣货决策虚拟仿真实验', '2019-08-30 09:47:49', '2019-09-02 16:19:42', '蒋长兵', '409JFOL0', '2018-08-30 09:47:26', '2018-08-31 13:02:00', '2018年8月 05班中期测验');
INSERT INTO `tb_experiment` VALUES (26, '电商小件商品快速拣货决策虚拟仿真实验', '2019-09-05 10:48:55', '2019-09-05 10:48:55', '周杰', '6M9BKM7G', '2019-09-05 10:48:46', '2019-09-14 00:00:00', '2019年10月 05班中期测验');
INSERT INTO `tb_experiment` VALUES (27, '电商小件商品快速拣货决策虚拟仿真实验', '2019-09-05 19:53:33', '2019-09-05 19:53:33', '蒋长兵', '2BDF3P9E', '2019-09-01 00:00:00', '2019-09-30 00:00:00', '《实验室探索与研究》A班');
INSERT INTO `tb_experiment` VALUES (28, '电商小件商品快速拣货决策虚拟仿真实验', '2019-09-06 11:04:31', '2019-09-06 11:04:31', '周杰', '69GNPHVD', '2019-09-06 11:04:19', '2019-10-02 00:00:00', '2019年10月电商仿真实验');

-- ----------------------------
-- Table structure for tb_experiment_method_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_experiment_method_type`;
CREATE TABLE `tb_experiment_method_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `method_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '三大实验方法 摘取式 播种式 摘播式',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_experiment_method_type
-- ----------------------------
INSERT INTO `tb_experiment_method_type` VALUES (1, '摘取式', '2019-08-13 13:38:45', '2019-08-13 13:38:47');
INSERT INTO `tb_experiment_method_type` VALUES (2, '播种式', '2019-08-13 13:39:02', '2019-08-13 13:39:06');
INSERT INTO `tb_experiment_method_type` VALUES (3, '摘播式', '2019-08-13 13:39:17', '2019-08-13 13:39:19');

-- ----------------------------
-- Table structure for tb_experiment_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_experiment_record`;
CREATE TABLE `tb_experiment_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '实验记录id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校',
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `experiment_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验名称',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次更新时间',
  `experiment_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验类型：集中实验/分散实验',
  `organization` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织形式：班级/个人',
  `experiment_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验编码',
  `total_score` int(255) NULL DEFAULT NULL COMMENT '得分',
  `time` int(11) NULL DEFAULT NULL COMMENT '实验时长',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_experiment_record
-- ----------------------------
INSERT INTO `tb_experiment_record` VALUES (1, '张华', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-05-29 17:51:31', '2019-08-23 20:47:57', '集中实验', '班级', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (2, '王秀兰', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-06-28 16:14:39', '2019-08-23 20:47:57', '集中实验', '班级', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (3, '李霞', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-06-24 05:09:22', '2019-08-23 20:47:57', '集中实验', '班级', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (4, '王勇', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-08-02 15:24:56', '2019-08-23 21:14:59', '集中实验', '班级', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (5, '刘敏', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-08 05:19:15', '2019-08-30 20:42:28', '集中实验', '班级', 'HN0MNMSU', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (6, '李丽', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-06-29 06:54:57', '2019-08-30 22:00:15', '集中实验', '班级', 'HN0MNMSU', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (7, '张强', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-07-18 11:39:55', '2019-08-31 09:47:02', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (8, '王平', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-07-06 13:16:46', '2019-08-31 09:49:18', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (9, '李亮', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-06-21 10:10:52', '2019-08-31 09:49:19', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (10, '王刚', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-08-10 10:06:04', '2019-09-01 19:19:04', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (11, '王杰', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-08-06 19:09:43', '2019-09-02 09:41:42', '集中实验', '班级', 'HN0MNMSU', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (12, '李桂英', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-31 22:56:17', '2019-09-02 09:41:42', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (13, '王军', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-25 17:32:53', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (14, '赵健', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-08-29 15:10:18', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (15, '李松', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-13 07:23:01', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (16, '张大卫', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-22 08:55:46', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (17, '张国会', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-08-08 20:09:59', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (18, '华芳', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-02 15:02:44', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (19, '立文', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-06 19:47:13', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (20, '周康', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-06-06 14:58:33', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (21, '张代', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-08-20 04:21:56', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (22, '王强', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-08-06 02:53:13', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (23, '张国超', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-02 21:51:38', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (24, '张永华', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-06-27 10:19:32', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (25, '张守', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-06-17 01:00:51', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (26, '周洁', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-29 17:22:39', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (27, '张伟', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-29 09:49:50', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (28, '王伟', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-06-26 08:49:52', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (29, '王芳', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-06-27 13:56:29', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (30, '李伟', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-08-07 04:26:25', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (31, '王秀英', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-08-05 07:37:44', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (32, '李秀英', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-05 11:16:25', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (33, '李娜', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-05-30 12:51:59', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (34, '张秀英', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-08-10 19:03:30', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (35, '刘伟', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-03 15:52:46', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (36, '张敏', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-17 15:45:20', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (37, '李静', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-06-29 02:51:15', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (38, '张丽', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-08-25 02:30:45', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (39, '王静', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-06-14 13:42:28', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (40, '王丽', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-08-02 13:32:31', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (41, '李强', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-06-28 18:35:34', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (42, '张静', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-05-31 06:26:11', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (43, '李敏', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-02 10:48:24', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (44, '王敏', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-06-20 05:44:20', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (45, '王磊', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-05-31 16:41:10', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (46, '李军', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-08-08 00:11:27', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (47, '刘洋', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-03 09:46:33', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (48, '王勇勇', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-05-30 19:23:08', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (49, '张勇', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-08-30 21:13:56', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (50, '王艳', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-08-14 00:14:16', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (51, '李杰', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-05 08:20:28', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (52, '张磊', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-08-21 17:55:29', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (53, '王强强', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-31 19:37:36', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (54, '张杰', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-08-16 01:38:11', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (55, '张军', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-09 23:23:59', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (56, '李娟', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-13 22:38:53', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (57, '张艳', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-06-28 16:03:55', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (58, '张涛', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-06-25 12:27:30', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (59, '王涛', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-20 19:37:49', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (60, '李明', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-27 20:47:17', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (61, '李艳', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-08-07 17:50:40', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (62, '王超', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-07-27 17:33:34', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (63, '李勇', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-08-25 22:36:37', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (64, '王娟', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-08-12 23:28:05', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (65, '刘杰', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-06-21 16:36:46', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (66, '黄芸', '浙江工商大学', '	电商小件商品快速拣货决策虚拟仿真实验', '浙江工商大学-拣货作业虚拟仿真实验', '2019-06-27 15:45:03', '2019-08-23 20:47:57', '集中实验', '班级', 'HN0MNMSA', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (67, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-08-25 21:31:17', '2019-09-02 10:23:14', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (68, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-08-29 07:38:00', '2019-09-02 10:25:09', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (69, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-07-30 09:13:04', '2019-09-02 10:28:39', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (70, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-07-07 18:59:59', '2019-09-02 10:30:05', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (71, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-07-27 05:24:06', '2019-09-02 10:41:37', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (72, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-02 12:37:05', '2019-09-02 12:37:05', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (73, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-02 12:38:21', '2019-09-02 12:38:21', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (74, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-02 12:39:56', '2019-09-02 12:39:56', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (75, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-02 13:36:15', '2019-09-02 13:36:15', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (76, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-02 15:09:03', '2019-09-02 15:09:03', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (77, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-02 15:09:18', '2019-09-02 15:09:18', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (78, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-02 15:09:47', '2019-09-02 15:09:47', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (79, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '2019年6月 05班中期测验', '2019-09-02 16:22:55', '2019-09-02 16:22:55', '集中实验', '班级', 'HN0MNMSU', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (80, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '2019年6月 05班中期测验', '2019-09-02 16:28:36', '2019-09-02 16:28:36', '集中实验', '班级', 'HN0MNMSU', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (81, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-02 19:28:16', '2019-09-02 19:28:16', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (82, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-02 19:30:07', '2019-09-02 19:30:07', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (83, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-02 19:54:10', '2019-09-02 19:54:10', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (84, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-02 21:38:18', '2019-09-02 21:38:18', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (85, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-02 22:18:57', '2019-09-02 22:18:57', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (86, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '2019年6月 05班中期测验', '2019-09-03 14:11:13', '2019-09-03 14:11:13', '集中实验', '班级', 'HN0MNMSU', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (87, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-03 21:43:09', '2019-09-03 21:43:09', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (88, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-03 21:44:34', '2019-09-03 21:44:34', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (89, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-04 08:41:02', '2019-09-04 08:41:02', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (90, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-04 14:16:45', '2019-09-04 14:16:45', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (91, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-04 15:11:43', '2019-09-04 15:11:43', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (92, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-04 15:13:41', '2019-09-04 15:13:41', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (93, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-04 15:47:41', '2019-09-04 15:47:41', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (94, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-05 13:09:38', '2019-09-05 13:09:38', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (95, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '2019年10月 05班中期测验', '2019-09-05 13:39:46', '2019-09-05 13:39:46', '集中实验', '班级', '6M9BKM7G', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (96, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-05 16:21:51', '2019-09-05 16:21:51', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (97, '黄芸', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '2019年6月 05班中期测验', '2019-09-05 17:20:55', '2019-09-05 17:20:55', '集中实验', '班级', 'HN0MNMSU', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (98, '黄芸', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '2019年10月 05班中期测验', '2019-09-05 17:23:46', '2019-09-05 17:23:46', '集中实验', '班级', '6M9BKM7G', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (99, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-05 17:32:36', '2019-09-05 17:32:36', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (100, '黄芸', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '2019年6月 05班中期测验', '2019-09-05 17:37:24', '2019-09-05 17:37:24', '集中实验', '班级', 'HN0MNMSU', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (101, '黄芸', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '2019年10月 05班中期测验', '2019-09-05 17:37:38', '2019-09-05 17:37:38', '集中实验', '班级', '6M9BKM7G', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (102, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-05 17:38:38', '2019-09-05 17:38:38', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (103, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-05 17:42:51', '2019-09-05 17:42:51', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (104, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-05 17:48:19', '2019-09-05 17:48:19', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (105, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-05 17:50:55', '2019-09-05 17:50:55', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (106, '李亮', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '《实验室探索与研究》A班', '2019-09-05 20:08:36', '2019-09-05 20:08:36', '集中实验', '班级', '2BDF3P9E', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (107, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-06 07:14:10', '2019-09-06 07:14:10', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (108, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-06 07:17:14', '2019-09-06 07:17:14', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (109, '评审专家', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '分散实验', '2019-09-06 07:17:40', '2019-09-06 07:17:40', '分散实验', '个人', NULL, NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (110, '刘敏', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '《实验室探索与研究》A班', '2019-09-06 10:02:40', '2019-09-06 10:02:40', '集中实验', '班级', '2BDF3P9E', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (111, '刘敏', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '2019年6月 05班中期测验', '2019-09-06 10:03:29', '2019-09-06 10:03:29', '集中实验', '班级', 'HN0MNMSU', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (112, '刘敏', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '《实验室探索与研究》A班', '2019-09-06 10:04:05', '2019-09-06 10:04:05', '集中实验', '班级', '2BDF3P9E', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (113, '周进', '浙江工商大学', '电商小件商品快速拣货决策虚拟仿真实验', '《实验室探索与研究》A班', '2019-09-06 10:09:49', '2019-09-06 10:09:49', '集中实验', '班级', '2BDF3P9E', NULL, NULL);

-- ----------------------------
-- Table structure for tb_experiment_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_experiment_type`;
CREATE TABLE `tb_experiment_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '实验类别id',
  `experiment_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验分类名称 集中 分散',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建⁮时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_experiment_type
-- ----------------------------
INSERT INTO `tb_experiment_type` VALUES (1, '分散实验', '2019-08-08 11:05:58', '2019-08-08 11:06:01');
INSERT INTO `tb_experiment_type` VALUES (2, '集中实验', '2019-08-08 11:06:11', '2019-08-08 11:06:13');

-- ----------------------------
-- Table structure for tb_question
-- ----------------------------
DROP TABLE IF EXISTS `tb_question`;
CREATE TABLE `tb_question`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '问题主键',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校',
  `question` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '问题',
  `is_answer` int(255) NULL DEFAULT NULL COMMENT '1代表已经答复 0代表未答复',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_question
-- ----------------------------
INSERT INTO `tb_question` VALUES (1, '张华', '浙江工商大学', '这个实验的步骤是什么？', 1, '2017-08-15 14:29:23', '2019-08-15 14:29:26');
INSERT INTO `tb_question` VALUES (2, '王秀兰', '浙江工商大学', '什么是播种式拣货？', 1, '2017-03-25 18:02:26', '2019-08-23 18:02:26');
INSERT INTO `tb_question` VALUES (3, '李霞', '浙江工商大学', 'VR实验好做吗？', 1, '2017-07-27 21:02:29', '2019-08-23 18:02:29');
INSERT INTO `tb_question` VALUES (4, '王勇', '浙江工商大学', '仿真实验是蒋老师讲的吗？', 1, '2017-08-13 13:02:31', '2019-08-23 18:02:31');
INSERT INTO `tb_question` VALUES (5, '刘敏', '浙江工商大学', '什么是虚拟仿真实验？', 1, '2017-05-23 11:02:33', '2019-08-23 18:02:33');
INSERT INTO `tb_question` VALUES (6, '李丽', '浙江工商大学', '这么课以前怎么没听说过呢？是新开的吗？', 1, '2017-06-21 09:02:35', '2019-08-23 18:02:35');
INSERT INTO `tb_question` VALUES (7, '张强', '浙江工商大学', '教学视频在哪里查看？', 1, '2017-10-13 18:02:38', '2019-08-23 18:02:38');
INSERT INTO `tb_question` VALUES (8, '王平', '浙江工商大学', '这个网站开发的不错，是用什么语言写的前端呢？', 1, '2017-07-13 09:02:40', '2019-08-23 18:02:40');
INSERT INTO `tb_question` VALUES (9, '李亮', '浙江工商大学', '网站中的虚拟实验平台是用U3D开发的吗？看着像。', 1, '2017-09-17 13:02:45', '2019-08-23 18:02:45');
INSERT INTO `tb_question` VALUES (10, '王刚', '浙江工商大学', '什么是拣货?', 1, '2017-11-13 12:02:59', '2019-08-23 18:02:59');
INSERT INTO `tb_question` VALUES (11, '王杰', '浙江工商大学', '播种式拣货流程是什么？', 1, '2018-03-15 14:29:23', '2019-08-15 14:29:26');
INSERT INTO `tb_question` VALUES (12, '李桂英', '浙江工商大学', '这门课程是在电脑上操作吗？', 1, '2018-03-15 16:19:28', '2019-08-15 14:29:26');
INSERT INTO `tb_question` VALUES (13, '王军', '浙江工商大学', '这门课程大约上机多长时间？', 1, '2018-04-11 14:29:22', '2019-08-15 14:29:26');
INSERT INTO `tb_question` VALUES (14, '赵健', '浙江工商大学', '拣货流程不太熟悉，怎么办？', 1, '2018-04-15 14:33:53', '2019-08-15 14:29:26');
INSERT INTO `tb_question` VALUES (15, '李松', '浙江工商大学', '今天的教学ppt有吗？', 1, '2018-04-16 16:19:43', '2019-08-15 14:29:26');
INSERT INTO `tb_question` VALUES (16, '张大卫', '浙江工商大学', '这个系统能够自动出报告真的吗？', 1, '2018-05-11 09:44:55', '2019-08-15 14:29:26');
INSERT INTO `tb_question` VALUES (17, '张国会', '浙江工商大学', '能随时去机房操作吗，今天的课程不是很懂？', 1, '2018-05-15 15:49:28', '2019-08-15 14:29:26');
INSERT INTO `tb_question` VALUES (18, '华芳', '浙江工商大学', '这个u3d平台场景做的挺不错的，是我们学校自己做的吗？', 1, '2018-05-16 14:55:35', '2019-08-15 14:29:26');
INSERT INTO `tb_question` VALUES (19, '立文', '浙江工商大学', '今天请假了，明天的实验还正常进行吗？', 1, '2018-05-17 11:35:09', '2019-08-15 14:29:26');
INSERT INTO `tb_question` VALUES (20, '周康', '浙江工商大学', '平台上怎么去访问场景呢？', 1, '2018-07-15 14:29:21', '2019-08-15 14:29:26');

-- ----------------------------
-- Table structure for tb_report
-- ----------------------------
DROP TABLE IF EXISTS `tb_report`;
CREATE TABLE `tb_report`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '报告表头主键id',
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `teacher_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指导教师',
  `organization` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织形式',
  `date` datetime(0) NULL DEFAULT NULL COMMENT '日期',
  `score` int(255) NULL DEFAULT NULL COMMENT '实验得分',
  `experiment_id` int(11) NULL DEFAULT NULL COMMENT '实验id',
  `conclusion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验结论',
  `star` int(255) NULL DEFAULT NULL COMMENT '用户评星',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_report
-- ----------------------------
INSERT INTO `tb_report` VALUES (1, '浙江工商大学', '仿真实验', '张华', '张老师', '班级', '2019-08-23 18:31:48', 73, 1, '经过这次物流仿真实验，我学到了很多VR实验知识，加深了我对物流行业的理解，棒棒哒。', 5);
INSERT INTO `tb_report` VALUES (2, '浙江工商大学', '仿真实验', '王秀兰', '张老师', '班级', '2019-08-23 18:36:44', 83, 2, '实验结论', 5);
INSERT INTO `tb_report` VALUES (3, '浙江工商大学', '仿真实验', '李霞', '张老师', '班级', '2019-08-23 18:36:44', 82, 3, '实验结论', 5);
INSERT INTO `tb_report` VALUES (4, '浙江工商大学', '仿真实验', '王勇', '张老师', '班级', '2019-08-23 18:36:44', 90, 4, '实验结论', 5);
INSERT INTO `tb_report` VALUES (5, '浙江工商大学', '仿真实验', '刘敏', '张老师', '班级', '2019-08-23 18:36:44', 92, 5, '实验结论', 5);
INSERT INTO `tb_report` VALUES (6, '浙江工商大学', '仿真实验', '李丽', '张老师', '班级', '2019-08-23 18:36:44', 94, 6, '实验结论', 4);
INSERT INTO `tb_report` VALUES (7, '浙江工商大学', '仿真实验', '张强', '张老师', '班级', '2019-08-23 18:36:44', 79, 7, '实验结论', 5);
INSERT INTO `tb_report` VALUES (8, '浙江工商大学', '仿真实验', '王平', '张老师', '班级', '2019-08-23 18:36:44', 86, 8, '实验结论', 4);
INSERT INTO `tb_report` VALUES (9, '浙江工商大学', '仿真实验', '李亮', '张老师', '班级', '2019-08-23 18:36:44', 88, 9, '实验结论', 5);
INSERT INTO `tb_report` VALUES (10, '浙江工商大学', '仿真实验', '王刚', '张老师', '班级', '2019-08-23 18:36:44', 72, 10, '实验结论', 5);
INSERT INTO `tb_report` VALUES (11, '浙江工商大学', '拣货决策分析', '王杰', '蒋老师', '个人', '2019-08-26 11:46:27', 79, 11, '实验结论', 5);
INSERT INTO `tb_report` VALUES (12, '浙江工商大学', '拣货决策分析', '李桂英', '蒋老师', '个人', '2019-08-26 12:23:46', 93, 12, '实验结论', 5);
INSERT INTO `tb_report` VALUES (13, '浙江工商大学', '拣货决策分析', '王军', '蒋老师', '个人', '2019-08-26 12:23:46', 86, 13, '实验结论', 5);
INSERT INTO `tb_report` VALUES (14, '浙江工商大学', '拣货决策分析', '赵健', '蒋老师', '个人', '2019-08-26 12:23:46', 95, 14, '实验结论', 5);
INSERT INTO `tb_report` VALUES (15, '浙江工商大学', '拣货决策分析', '李松', '蒋老师', '个人', '2019-08-26 12:23:46', 96, 15, '实验结论', 5);
INSERT INTO `tb_report` VALUES (16, '浙江工商大学', '拣货决策分析', '张大卫', '蒋老师', '个人', '2019-08-26 12:23:46', 90, 16, '实验结论', 5);
INSERT INTO `tb_report` VALUES (17, '浙江工商大学', '拣货决策分析', '张国会', '蒋老师', '个人', '2019-08-26 12:23:46', 90, 17, '实验结论', 5);
INSERT INTO `tb_report` VALUES (18, '浙江工商大学', '拣货决策分析', '华芳', '蒋老师', '个人', '2019-08-26 12:23:46', 87, 18, '实验结论', 5);
INSERT INTO `tb_report` VALUES (19, '浙江工商大学', '拣货决策分析', '立文', '蒋老师', '个人', '2019-08-26 12:23:46', 93, 19, '实验结论', 5);
INSERT INTO `tb_report` VALUES (20, '浙江工商大学', '拣货决策分析', '周康', '蒋老师', '个人', '2019-08-26 12:23:46', 93, 20, '实验结论', 5);
INSERT INTO `tb_report` VALUES (21, '浙江工商大学', '拣货决策分析', '张代', '蒋老师', '个人', '2019-08-26 12:23:46', 85, 21, '实验结论', 5);
INSERT INTO `tb_report` VALUES (22, '浙江工商大学', '拣货决策分析', '王强', '蒋老师', '个人', '2019-08-26 12:23:46', 73, 22, '实验结论', 5);
INSERT INTO `tb_report` VALUES (23, '浙江工商大学', '拣货决策分析', '张国超', '蒋老师', '个人', '2019-08-26 12:23:46', 75, 23, '实验结论', 5);
INSERT INTO `tb_report` VALUES (24, '浙江工商大学', '拣货决策分析', '张永华', '蒋老师', '个人', '2019-08-26 12:23:46', 78, 24, '实验结论', 5);
INSERT INTO `tb_report` VALUES (25, '浙江工商大学', '拣货决策分析', '张守', '蒋老师', '个人', '2019-08-26 12:23:46', 99, 25, '实验结论', 5);
INSERT INTO `tb_report` VALUES (26, '浙江工商大学', '拣货决策分析', '周洁', '蒋老师', '个人', '2019-08-26 12:23:46', 90, 26, '实验结论', 5);
INSERT INTO `tb_report` VALUES (27, '浙江工商大学', '拣货决策分析', '张伟', '蒋老师', '个人', '2019-08-26 12:23:46', 90, 27, '实验结论', 5);
INSERT INTO `tb_report` VALUES (28, '浙江工商大学', '拣货决策分析', '王伟', '蒋老师', '个人', '2019-08-26 12:23:46', 78, 28, '实验结论', 5);
INSERT INTO `tb_report` VALUES (29, '浙江工商大学', '拣货决策分析', '王芳', '蒋老师', '个人', '2019-08-26 12:23:46', 79, 29, '实验结论', 5);
INSERT INTO `tb_report` VALUES (30, '浙江工商大学', '拣货决策分析', '李伟', '蒋老师', '个人', '2019-08-26 12:23:46', 90, 30, '实验结论', 5);
INSERT INTO `tb_report` VALUES (31, '浙江工商大学', '拣货决策分析', '王秀英', '蒋老师', '个人', '2019-08-26 12:23:46', 93, 31, '实验结论', 5);
INSERT INTO `tb_report` VALUES (32, '浙江工商大学', '拣货决策分析', '李秀英', '蒋老师', '个人', '2019-08-26 12:23:46', 94, 32, '实验结论', 5);
INSERT INTO `tb_report` VALUES (33, '浙江工商大学', '拣货决策分析', '李娜', '蒋老师', '个人', '2019-08-26 12:23:46', 95, 33, '实验结论', 5);
INSERT INTO `tb_report` VALUES (34, '浙江工商大学', '拣货决策分析', '张秀英', '蒋老师', '个人', '2019-08-26 12:23:46', 97, 34, '实验结论', 5);
INSERT INTO `tb_report` VALUES (35, '浙江工商大学', '拣货决策分析', '刘伟', '蒋老师', '个人', '2019-08-26 12:23:46', 89, 35, '实验结论', 5);
INSERT INTO `tb_report` VALUES (36, '浙江工商大学', '拣货决策分析', '张敏', '蒋老师', '个人', '2019-08-26 12:23:46', 83, 36, '实验结论', 5);
INSERT INTO `tb_report` VALUES (37, '浙江工商大学', '拣货决策分析', '李静', '蒋老师', '个人', '2019-08-26 12:23:46', 75, 37, '实验结论', 5);
INSERT INTO `tb_report` VALUES (38, '浙江工商大学', '拣货决策分析', '张丽', '蒋老师', '个人', '2019-08-26 12:23:46', 79, 38, '实验结论', 5);
INSERT INTO `tb_report` VALUES (39, '浙江工商大学', '拣货决策分析', '王静', '蒋老师', '个人', '2019-08-26 12:23:46', 79, 39, '实验结论', 5);
INSERT INTO `tb_report` VALUES (40, '浙江工商大学', '拣货决策分析', '王丽', '蒋老师', '个人', '2019-08-26 12:23:46', 92, 40, '实验结论', 5);
INSERT INTO `tb_report` VALUES (41, '浙江工商大学', '拣货决策分析', '李强', '蒋老师', '个人', '2019-08-26 12:23:46', 90, 41, '实验结论', 5);
INSERT INTO `tb_report` VALUES (42, '浙江工商大学', '拣货决策分析', '张静', '蒋老师', '个人', '2019-08-26 12:23:46', 94, 42, '实验结论', 5);
INSERT INTO `tb_report` VALUES (43, '浙江工商大学', '拣货决策分析', '李敏', '蒋老师', '个人', '2019-08-26 12:23:46', 79, 43, '实验结论', 5);
INSERT INTO `tb_report` VALUES (44, '浙江工商大学', '拣货决策分析', '王敏', '蒋老师', '个人', '2019-08-26 12:23:46', 90, 44, '实验结论', 5);
INSERT INTO `tb_report` VALUES (45, '浙江工商大学', '拣货决策分析', '王磊', '蒋老师', '个人', '2019-08-26 12:23:46', 89, 45, '实验结论', 5);
INSERT INTO `tb_report` VALUES (46, '浙江工商大学', '拣货决策分析', '李军', '蒋老师', '个人', '2019-08-26 12:23:46', 75, 46, '实验结论', 5);
INSERT INTO `tb_report` VALUES (47, '浙江工商大学', '拣货决策分析', '刘洋', '蒋老师', '个人', '2019-08-26 12:23:46', 78, 47, '实验结论', 5);
INSERT INTO `tb_report` VALUES (48, '浙江工商大学', '拣货决策分析', '王勇勇', '蒋老师', '个人', '2019-08-26 12:23:46', 84, 48, '实验结论', 5);
INSERT INTO `tb_report` VALUES (49, '浙江工商大学', '拣货决策分析', '张勇', '蒋老师', '个人', '2019-08-26 12:23:46', 87, 49, '实验结论', 5);
INSERT INTO `tb_report` VALUES (50, '浙江工商大学', '拣货决策分析', '王艳', '蒋老师', '个人', '2019-08-26 12:23:46', 85, 50, '实验结论', 5);
INSERT INTO `tb_report` VALUES (51, '浙江工商大学', '拣货决策分析', '李杰', '蒋老师', '个人', '2019-08-26 12:23:46', 86, 51, '实验结论', 5);
INSERT INTO `tb_report` VALUES (52, '浙江工商大学', '拣货决策分析', '张磊', '蒋老师', '个人', '2019-08-26 12:23:46', 95, 52, '实验结论', 5);
INSERT INTO `tb_report` VALUES (53, '浙江工商大学', '拣货决策分析', '王强强', '蒋老师', '个人', '2019-08-26 12:23:46', 64, 53, '实验结论', 5);
INSERT INTO `tb_report` VALUES (54, '浙江工商大学', '拣货决策分析', '张杰', '蒋老师', '个人', '2019-08-26 12:23:46', 67, 54, '实验结论', 5);
INSERT INTO `tb_report` VALUES (55, '浙江工商大学', '仿真实验', '张军', '张老师', '班级', '2019-08-23 18:31:48', 76, 55, '经过这次物流仿真实验，我学到了很多VR实验知识，加深了我对物流行业的理解，棒棒哒。', 5);
INSERT INTO `tb_report` VALUES (56, '浙江工商大学', '仿真实验', '李娟', '张老师', '班级', '2019-08-23 18:31:48', 93, 56, '经过这次物流仿真实验，我学到了很多VR实验知识，加深了我对物流行业的理解，棒棒哒。', 5);
INSERT INTO `tb_report` VALUES (57, '浙江工商大学', '仿真实验', '张艳', '张老师', '班级', '2019-08-23 18:31:48', 75, 57, '经过这次物流仿真实验，我学到了很多VR实验知识，加深了我对物流行业的理解，棒棒哒。', 5);
INSERT INTO `tb_report` VALUES (58, '浙江工商大学', '仿真实验', '张涛', '张老师', '班级', '2019-08-23 18:31:48', 75, 58, '经过这次物流仿真实验，我学到了很多VR实验知识，加深了我对物流行业的理解，棒棒哒。', 5);
INSERT INTO `tb_report` VALUES (59, '浙江工商大学', '仿真实验', '王涛', '张老师', '班级', '2019-08-23 18:31:48', 73, 59, '经过这次物流仿真实验，我学到了很多VR实验知识，加深了我对物流行业的理解，棒棒哒。', 5);
INSERT INTO `tb_report` VALUES (60, '浙江工商大学', '仿真实验', '李明', '张老师', '班级', '2019-08-23 18:31:48', 75, 60, '经过这次物流仿真实验，我学到了很多VR实验知识，加深了我对物流行业的理解，棒棒哒。', 5);
INSERT INTO `tb_report` VALUES (61, '浙江工商大学', '仿真实验', '李艳', '张老师', '班级', '2019-08-23 18:31:48', 90, 61, '经过这次物流仿真实验，我学到了很多VR实验知识，加深了我对物流行业的理解，棒棒哒。', 5);
INSERT INTO `tb_report` VALUES (62, '浙江工商大学', '仿真实验', '王超', '张老师', '班级', '2019-08-23 18:31:48', 94, 62, '经过这次物流仿真实验，我学到了很多VR实验知识，加深了我对物流行业的理解，棒棒哒。', 5);
INSERT INTO `tb_report` VALUES (63, '浙江工商大学', '仿真实验', '李勇', '张老师', '班级', '2019-08-23 18:31:48', 92, 63, '经过这次物流仿真实验，我学到了很多VR实验知识，加深了我对物流行业的理解，棒棒哒。', 5);
INSERT INTO `tb_report` VALUES (64, '浙江工商大学', '仿真实验', '王娟', '张老师', '班级', '2019-08-23 18:31:48', 91, 64, '经过这次物流仿真实验，我学到了很多VR实验知识，加深了我对物流行业的理解，棒棒哒。', 5);
INSERT INTO `tb_report` VALUES (65, '浙江工商大学', '仿真实验', '刘杰', '张老师', '班级', '2019-08-23 18:31:48', 90, 65, '经过这次物流仿真实验，我学到了很多VR实验知识，加深了我对物流行业的理解，棒棒哒。', 5);
INSERT INTO `tb_report` VALUES (66, '浙江工商大学', '仿真实验', '黄芸', '张老师', '班级', '2019-08-23 18:31:48', 92, 66, '经过这次物流仿真实验，我学到了很多VR实验知识，加深了我对物流行业的理解，棒棒哒。', 5);
INSERT INTO `tb_report` VALUES (67, '浙江工商大学', '仿真实验', '评审专家', '张老师', '班级', '2019-08-23 18:31:48', 88, 67, '经过这次物流仿真实验，我学到了很多VR实验知识，加深了我对物流行业的理解，棒棒哒。', 5);
INSERT INTO `tb_report` VALUES (68, '浙江工商大学', '仿真实验', '评审专家', '张老师', '班级', '2019-08-23 18:31:48', 89, 68, '经过这次物流仿真实验，我学到了很多VR实验知识，加深了我对物流行业的理解，棒棒哒。', 5);

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 角色id',
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES (1, '管理员', NULL, NULL);
INSERT INTO `tb_role` VALUES (2, '教师', NULL, NULL);
INSERT INTO `tb_role` VALUES (3, '评审专家', NULL, NULL);
INSERT INTO `tb_role` VALUES (4, '高校学生', NULL, NULL);
INSERT INTO `tb_role` VALUES (5, '高职学生', NULL, NULL);
INSERT INTO `tb_role` VALUES (6, '中小学学生', NULL, NULL);
INSERT INTO `tb_role` VALUES (7, '企业培训用户', NULL, NULL);

-- ----------------------------
-- Table structure for tb_teacher
-- ----------------------------
DROP TABLE IF EXISTS `tb_teacher`;
CREATE TABLE `tb_teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '老师id',
  `teacher_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '老师名字',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT 'tb',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_teacher
-- ----------------------------
INSERT INTO `tb_teacher` VALUES (1, '王老师', '2019-08-08 11:06:41', '2019-08-08 11:06:43');
INSERT INTO `tb_teacher` VALUES (2, '张老师', '2019-08-08 11:06:51', '2019-08-08 11:06:54');

-- ----------------------------
-- Table structure for tb_u3d_web_exp_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_u3d_web_exp_record`;
CREATE TABLE `tb_u3d_web_exp_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据库主键',
  `experiment_id` int(11) NULL DEFAULT NULL COMMENT '实验记录id关联实验记录表',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `park_360_browsing` int(11) NULL DEFAULT NULL COMMENT '360度浏览得分',
  `park_top_browsing` int(11) NULL DEFAULT NULL COMMENT '鸟瞰浏览得分',
  `park_first_person_browsing` int(11) NULL DEFAULT NULL COMMENT '自主漫游得分',
  `park_auto_browsing` int(11) NULL DEFAULT NULL COMMENT '自动漫游得分',
  `storage_360_browsing` int(11) NULL DEFAULT NULL COMMENT '360度浏览得分',
  `storage_top_browsing` int(11) NULL DEFAULT NULL COMMENT '鸟瞰浏览得分',
  `device_awareness` int(11) NULL DEFAULT NULL COMMENT '设备认知得分',
  `order_processing` int(11) NULL DEFAULT NULL COMMENT '订单处理得分',
  `replenishment` int(11) NULL DEFAULT NULL COMMENT '补货作业得分',
  `pick_by_order` int(11) NULL DEFAULT NULL COMMENT '摘取式拣货得分',
  `pick_by_batch_order` int(11) NULL DEFAULT NULL COMMENT '播种式拣货得分',
  `pick_by_disperse` int(11) NULL DEFAULT NULL COMMENT '摘播式拣货得分',
  `shipping_sweep_code` int(11) NULL DEFAULT NULL COMMENT '扫码复核得分',
  `shipping_intimidate` int(11) NULL DEFAULT NULL COMMENT '打贴面单得分',
  `shipping_sealing` int(11) NULL DEFAULT NULL COMMENT '包装封箱得分',
  `sorting_operation` int(11) NULL DEFAULT NULL COMMENT '全自动分拣作业得分',
  `mode_comparison` int(11) NULL DEFAULT NULL COMMENT '模式对比分析得分',
  `ata_comparison` int(11) NULL DEFAULT NULL COMMENT '数据对比分析得分',
  `experimental_correct` int(11) NULL DEFAULT NULL COMMENT '实验修正得分',
  `experimental_report` int(11) NULL DEFAULT NULL COMMENT '完成实验报告得分',
  `experimental_evaluation` int(11) NULL DEFAULT NULL COMMENT '实验评价得分',
  `total_score` int(11) NULL DEFAULT NULL COMMENT '总分',
  `time` int(11) NULL DEFAULT NULL COMMENT '实验时长',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_u3d_web_exp_record
-- ----------------------------
INSERT INTO `tb_u3d_web_exp_record` VALUES (1, 1, 16, 2, 2, 2, 2, 2, 2, 5, 5, 5, 8, 7, 6, 2, 2, 2, 2, 9, 5, 4, 3, 4, 81, 2169, '2019-08-01 10:53:45', '2019-08-01 10:53:45');
INSERT INTO `tb_u3d_web_exp_record` VALUES (2, 2, 16, 2, 2, 2, 2, 2, 2, 5, 5, 5, 7, 7, 6, 2, 2, 2, 2, 6, 6, 3, 4, 4, 78, 1107, '2019-06-23 19:55:54', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (3, 3, 16, 2, 2, 2, 2, 2, 2, 5, 5, 5, 5, 8, 9, 2, 2, 2, 2, 7, 6, 3, 4, 4, 81, 1268, '2019-07-26 11:24:54', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (4, 4, 16, 2, 2, 2, 2, 2, 2, 5, 5, 5, 8, 6, 8, 2, 2, 2, 2, 6, 9, 4, 4, 3, 83, 1588, '2019-07-11 22:13:49', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (5, 5, 16, 2, 2, 2, 2, 2, 2, 5, 5, 4, 8, 5, 7, 2, 2, 2, 2, 7, 5, 3, 4, 4, 77, 2012, '2019-07-20 19:10:24', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (6, 6, 16, 2, 2, 2, 2, 2, 2, 5, 5, 3, 8, 6, 6, 2, 2, 2, 2, 6, 6, 4, 3, 4, 76, 1188, '2019-06-25 05:14:19', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (7, 7, 16, 2, 2, 2, 2, 2, 2, 5, 5, 5, 5, 9, 5, 2, 2, 2, 2, 7, 5, 4, 3, 4, 77, 2184, '2019-07-24 12:53:58', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (8, 8, 16, 2, 2, 2, 2, 2, 2, 5, 5, 1, 9, 5, 8, 2, 2, 2, 2, 5, 8, 4, 3, 3, 76, 969, '2019-07-24 02:30:51', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (9, 9, 16, 2, 2, 2, 2, 2, 2, 5, 5, 1, 9, 5, 6, 2, 2, 2, 2, 5, 8, 4, 4, 3, 75, 2260, '2019-07-31 22:14:17', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (10, 10, 16, 2, 2, 2, 2, 2, 2, 5, 5, 4, 7, 5, 5, 2, 2, 2, 2, 5, 7, 3, 3, 3, 72, 1715, '2019-08-17 06:27:51', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (11, 11, 16, 2, 2, 2, 2, 2, 2, 5, 5, 5, 9, 6, 9, 2, 2, 2, 2, 6, 6, 3, 4, 4, 82, 1793, '2019-07-01 08:50:45', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (12, 12, 16, 2, 2, 2, 2, 2, 2, 5, 5, 4, 6, 8, 5, 2, 2, 2, 2, 6, 8, 3, 3, 4, 77, 1128, '2019-08-02 14:22:25', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (13, 13, 16, 2, 2, 2, 2, 2, 2, 5, 5, 4, 6, 5, 5, 2, 2, 2, 2, 8, 6, 4, 4, 4, 76, 2030, '2019-07-13 10:56:03', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (14, 14, 16, 2, 2, 2, 2, 2, 2, 5, 5, 2, 7, 6, 5, 2, 2, 2, 2, 5, 8, 4, 3, 4, 74, 1247, '2019-08-01 07:10:49', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (15, 15, 16, 2, 2, 2, 2, 2, 2, 5, 5, 4, 7, 5, 6, 2, 2, 2, 2, 8, 9, 4, 3, 4, 80, 1542, '2019-08-10 11:19:09', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (16, 16, 16, 2, 2, 2, 2, 2, 2, 5, 5, 2, 7, 9, 7, 2, 2, 2, 2, 5, 7, 3, 4, 3, 77, 791, '2019-07-23 20:59:23', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (17, 17, 16, 2, 2, 2, 2, 2, 2, 5, 5, 4, 5, 5, 9, 2, 2, 2, 2, 6, 7, 4, 4, 4, 78, 1710, '2019-06-29 04:48:08', '2019-08-23 16:58:15');
INSERT INTO `tb_u3d_web_exp_record` VALUES (18, 18, 16, 2, 2, 2, 2, 2, 2, 5, 5, 3, 8, 9, 6, 2, 2, 2, 2, 5, 7, 4, 4, 4, 80, 1228, '2019-08-03 15:03:18', '2019-08-23 16:58:15');
INSERT INTO `tb_u3d_web_exp_record` VALUES (19, 19, 16, 2, 2, 2, 2, 2, 2, 5, 5, 3, 6, 8, 7, 2, 2, 2, 2, 5, 6, 4, 3, 4, 76, 1551, '2019-06-21 20:37:30', '2019-08-23 16:58:12');
INSERT INTO `tb_u3d_web_exp_record` VALUES (20, 20, 16, 2, 2, 2, 2, 2, 2, 5, 5, 3, 5, 5, 5, 2, 2, 2, 2, 9, 8, 4, 4, 4, 77, 909, '2019-07-30 00:36:37', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (21, 21, 16, 2, 2, 2, 2, 2, 2, 5, 5, 2, 7, 8, 6, 2, 2, 2, 2, 6, 7, 3, 3, 3, 75, 2083, '2019-07-31 03:54:45', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (22, 22, 16, 2, 2, 2, 2, 2, 2, 5, 5, 5, 7, 6, 9, 2, 2, 2, 2, 9, 5, 3, 3, 4, 81, 855, '2019-06-02 00:15:10', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (23, 23, 16, 2, 2, 2, 2, 2, 2, 5, 5, 2, 8, 6, 5, 2, 2, 2, 2, 8, 6, 3, 3, 3, 74, 1648, '2019-06-11 01:51:09', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (24, 24, 16, 2, 2, 2, 2, 2, 2, 5, 5, 5, 5, 6, 6, 2, 2, 2, 2, 7, 7, 4, 3, 4, 77, 1325, '2019-08-20 23:48:04', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (25, 25, 16, 2, 2, 2, 2, 2, 2, 5, 5, 3, 8, 9, 8, 2, 2, 2, 2, 6, 6, 4, 3, 3, 80, 1734, '2019-06-30 00:36:48', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (26, 26, 16, 2, 2, 2, 2, 2, 2, 5, 5, 3, 6, 7, 7, 2, 2, 2, 2, 7, 5, 3, 4, 3, 75, 1421, '2019-06-09 06:01:23', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (27, 27, 16, 2, 2, 2, 2, 2, 2, 5, 5, 3, 7, 7, 9, 2, 2, 2, 2, 8, 7, 3, 3, 3, 80, 2278, '2019-07-27 05:41:59', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (28, 28, 16, 2, 2, 2, 2, 2, 2, 5, 5, 1, 7, 7, 9, 2, 2, 2, 2, 7, 5, 4, 4, 4, 78, 1540, '2019-08-11 02:30:55', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (29, 29, 16, 2, 2, 2, 2, 2, 2, 5, 5, 1, 8, 6, 5, 2, 2, 2, 2, 7, 6, 3, 3, 3, 72, 2151, '2019-07-15 18:51:38', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (30, 30, 16, 2, 2, 2, 2, 2, 2, 5, 5, 2, 9, 8, 6, 2, 2, 2, 2, 7, 9, 4, 4, 4, 83, 2113, '2019-07-10 15:09:20', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (31, 31, 16, 2, 2, 2, 2, 2, 2, 5, 5, 1, 5, 5, 9, 2, 2, 2, 2, 7, 8, 3, 3, 4, 75, 856, '2019-06-05 01:42:36', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (32, 32, 16, 2, 2, 2, 2, 2, 2, 5, 5, 3, 7, 8, 5, 2, 2, 2, 2, 5, 6, 3, 3, 4, 74, 2035, '2019-07-10 02:40:23', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (33, 33, 16, 2, 2, 2, 2, 2, 2, 5, 5, 1, 9, 7, 8, 2, 2, 2, 2, 7, 5, 3, 4, 4, 78, 2392, '2019-06-16 16:27:32', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (34, 34, 16, 2, 2, 2, 2, 2, 2, 5, 5, 4, 9, 5, 6, 2, 2, 2, 2, 9, 6, 4, 4, 3, 80, 762, '2019-08-17 14:12:46', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (35, 35, 16, 2, 2, 2, 2, 2, 2, 5, 5, 4, 7, 8, 9, 2, 2, 2, 2, 5, 7, 3, 3, 3, 79, 1860, '2019-08-18 18:24:12', '2019-08-23 16:58:15');
INSERT INTO `tb_u3d_web_exp_record` VALUES (36, 36, 16, 2, 2, 2, 2, 2, 2, 5, 5, 5, 9, 6, 5, 2, 2, 2, 2, 8, 7, 3, 4, 3, 80, 1703, '2019-08-29 00:44:11', '2019-08-23 16:58:15');
INSERT INTO `tb_u3d_web_exp_record` VALUES (37, 37, 16, 2, 2, 2, 2, 2, 2, 5, 5, 5, 6, 8, 5, 2, 2, 2, 2, 6, 7, 4, 4, 4, 79, 815, '2019-06-02 05:12:25', '2019-08-23 16:58:12');
INSERT INTO `tb_u3d_web_exp_record` VALUES (38, 38, 16, 2, 2, 2, 2, 2, 2, 5, 5, 2, 8, 5, 8, 2, 2, 2, 2, 9, 8, 4, 4, 4, 82, 2217, '2019-08-02 19:23:54', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (39, 39, 16, 2, 2, 2, 2, 2, 2, 5, 5, 1, 6, 7, 8, 2, 2, 2, 2, 8, 8, 3, 4, 4, 79, 2292, '2019-07-15 18:06:55', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (40, 40, 16, 2, 2, 2, 2, 2, 2, 5, 5, 4, 7, 7, 6, 2, 2, 2, 2, 5, 8, 3, 4, 4, 78, 2009, '2019-06-24 01:37:15', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (41, 41, 16, 2, 2, 2, 2, 2, 2, 5, 5, 5, 7, 8, 7, 2, 2, 2, 2, 9, 6, 3, 4, 3, 82, 2310, '2019-06-21 01:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (42, 42, 16, 2, 2, 2, 2, 2, 2, 5, 5, 4, 9, 9, 9, 2, 2, 2, 2, 9, 8, 4, 4, 4, 90, 1454, '2019-06-29 12:47:07', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (43, 43, 16, 2, 2, 2, 2, 2, 2, 5, 5, 4, 5, 6, 8, 2, 2, 2, 2, 6, 6, 3, 4, 3, 75, 964, '2019-06-18 07:10:19', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (44, 44, 16, 2, 2, 2, 2, 2, 2, 5, 5, 1, 8, 9, 7, 2, 2, 2, 2, 5, 8, 4, 3, 4, 79, 2156, '2019-06-04 17:10:15', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (45, 45, 16, 2, 2, 2, 2, 2, 2, 5, 5, 3, 6, 5, 6, 2, 2, 2, 2, 8, 5, 3, 3, 4, 73, 624, '2019-06-30 08:32:44', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (46, 46, 16, 2, 2, 2, 2, 2, 2, 5, 5, 2, 7, 6, 7, 2, 2, 2, 2, 5, 7, 4, 4, 4, 76, 1196, '2019-09-05 04:02:50', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (47, 47, 16, 2, 2, 2, 2, 2, 2, 5, 5, 4, 9, 6, 9, 2, 2, 2, 2, 9, 8, 4, 3, 4, 86, 814, '2019-08-05 11:36:04', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (48, 48, 16, 2, 2, 2, 2, 2, 2, 5, 5, 5, 6, 6, 8, 2, 2, 2, 2, 9, 6, 3, 3, 3, 79, 2395, '2019-06-11 20:23:11', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (49, 49, 16, 2, 2, 2, 2, 2, 2, 5, 5, 5, 6, 5, 8, 2, 2, 2, 2, 6, 9, 4, 3, 4, 80, 627, '2019-07-09 23:37:28', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (50, 50, 16, 2, 2, 2, 2, 2, 2, 5, 5, 2, 5, 6, 7, 2, 2, 2, 2, 9, 5, 3, 3, 3, 73, 2078, '2019-06-17 05:01:56', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (51, 51, 16, 2, 2, 2, 2, 2, 2, 5, 5, 3, 8, 7, 5, 2, 2, 2, 2, 7, 9, 3, 3, 4, 79, 1727, '2019-07-09 05:33:10', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (52, 52, 16, 2, 2, 2, 2, 2, 2, 5, 5, 3, 9, 6, 5, 2, 2, 2, 2, 9, 6, 4, 4, 3, 79, 2037, '2019-06-01 19:30:31', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (53, 53, 16, 2, 2, 2, 2, 2, 2, 5, 5, 5, 5, 6, 5, 2, 2, 2, 2, 8, 9, 3, 4, 4, 79, 1560, '2019-06-16 05:00:22', '2019-08-23 16:58:15');
INSERT INTO `tb_u3d_web_exp_record` VALUES (54, 54, 16, 2, 2, 2, 2, 2, 2, 5, 5, 5, 6, 5, 6, 2, 2, 2, 2, 6, 6, 4, 3, 3, 74, 2277, '2019-07-12 09:47:38', '2019-08-23 16:58:15');
INSERT INTO `tb_u3d_web_exp_record` VALUES (55, 55, 16, 2, 2, 2, 2, 2, 2, 5, 5, 5, 7, 5, 7, 2, 2, 2, 2, 7, 6, 3, 3, 3, 76, 1617, '2019-08-01 22:35:26', '2019-08-23 16:58:12');
INSERT INTO `tb_u3d_web_exp_record` VALUES (56, 56, 16, 2, 2, 2, 2, 2, 2, 5, 5, 4, 5, 6, 9, 2, 2, 2, 2, 7, 7, 4, 3, 3, 78, 1462, '2019-08-22 19:21:17', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (57, 57, 16, 2, 2, 2, 2, 2, 2, 5, 5, 4, 7, 5, 8, 2, 2, 2, 2, 8, 6, 3, 3, 3, 77, 2281, '2019-07-07 18:30:30', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (58, 58, 16, 2, 2, 2, 2, 2, 2, 5, 5, 2, 7, 7, 5, 2, 2, 2, 2, 7, 6, 4, 3, 4, 75, 918, '2019-07-16 14:32:16', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (59, 59, 16, 2, 2, 2, 2, 2, 2, 5, 5, 4, 7, 9, 5, 2, 2, 2, 2, 6, 7, 3, 3, 4, 78, 2240, '2019-09-01 08:35:51', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (60, 60, 16, 2, 2, 2, 2, 2, 2, 5, 5, 3, 6, 7, 8, 2, 2, 2, 2, 8, 6, 3, 4, 3, 78, 2370, '2019-07-28 16:44:04', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (61, 61, 16, 2, 2, 2, 2, 2, 2, 5, 5, 1, 9, 6, 7, 2, 2, 2, 2, 9, 7, 4, 3, 4, 80, 1755, '2019-07-16 01:07:37', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (62, 62, 16, 2, 2, 2, 2, 2, 2, 5, 5, 3, 5, 9, 5, 2, 2, 2, 2, 6, 7, 3, 4, 3, 75, 1575, '2019-07-18 23:23:57', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (63, 63, 16, 2, 2, 2, 2, 2, 2, 5, 5, 1, 7, 5, 7, 2, 2, 2, 2, 9, 5, 3, 3, 3, 73, 788, '2019-08-30 23:01:39', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_record` VALUES (64, 64, 16, 2, 2, 2, 2, 2, 2, 5, 5, 5, 7, 9, 7, 2, 2, 2, 2, 8, 5, 3, 3, 4, 81, 1256, '2019-06-10 14:52:09', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (65, 65, 16, 2, 2, 2, 2, 2, 2, 5, 5, 5, 8, 7, 8, 2, 2, 2, 2, 8, 8, 3, 4, 3, 84, 974, '2019-07-27 11:45:57', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (66, 66, 16, 2, 2, 2, 2, 2, 2, 5, 5, 1, 6, 7, 8, 2, 2, 2, 2, 9, 7, 3, 3, 4, 78, 1164, '2019-06-17 15:53:12', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (67, 67, 16, 2, 2, 2, 2, 2, 2, 5, 5, 1, 8, 7, 6, 2, 2, 2, 2, 5, 9, 4, 4, 3, 77, 1103, '2019-06-06 19:48:15', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_record` VALUES (68, 68, 16, 2, 2, 2, 2, 2, 2, 5, 5, 1, 9, 7, 8, 2, 2, 2, 2, 8, 7, 4, 4, 4, 82, 1068, '2019-07-19 22:39:45', '2019-08-23 16:58:14');

-- ----------------------------
-- Table structure for tb_u3d_web_exp_result
-- ----------------------------
DROP TABLE IF EXISTS `tb_u3d_web_exp_result`;
CREATE TABLE `tb_u3d_web_exp_result`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `experiment_id` int(11) NULL DEFAULT NULL COMMENT '实验记录id',
  `worker` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业人员',
  `experiment_times` int(11) NULL DEFAULT NULL COMMENT '实验次数',
  `zbs_effective_time` int(11) NULL DEFAULT NULL COMMENT '摘播式有效作业时长',
  `zbs_total_pick_time` int(11) NULL DEFAULT NULL COMMENT '摘播式总的作业时长',
  `zbs_efficiency` double(255, 0) NULL DEFAULT NULL COMMENT '摘播式效率',
  `zbs_walk_step` int(255) NULL DEFAULT NULL COMMENT '摘播式行走步数',
  `zqs_effective_time` int(11) NULL DEFAULT NULL COMMENT '摘取式有效作业时长',
  `zqs_total_pick_time` int(11) NULL DEFAULT NULL COMMENT '摘取式总的作业时长',
  `zqs_efficiency` double(255, 0) NULL DEFAULT NULL COMMENT '摘取式效率\r\n',
  `zqs_walk_step` int(255) NULL DEFAULT NULL COMMENT '摘取式行走步数',
  `bzs_effective_time` int(11) NULL DEFAULT NULL COMMENT '播种式有效作业时长',
  `bzs_total_pick_time` int(11) NULL DEFAULT NULL COMMENT '播种式总的作业时长',
  `bzs_efficiency` double(255, 0) NULL DEFAULT NULL COMMENT '播种式效率',
  `bzs_walk_step` int(255) NULL DEFAULT NULL COMMENT '播种式行走步数',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '新增订单量',
  `goods_item` int(255) NULL DEFAULT NULL COMMENT '货物品项',
  `goods_total_num` int(255) NULL DEFAULT NULL COMMENT '货物总量',
  `user_summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验结论',
  `user_comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户评价',
  `star` int(11) NULL DEFAULT NULL COMMENT '用户评星',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '记录创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1225 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_u3d_web_exp_result
-- ----------------------------
INSERT INTO `tb_u3d_web_exp_result` VALUES (1, 16, 1, '拣货人员A', 1, 2000, 4000, 0, 1900, 3000, 6000, 0, 1900, 3500, 5000, 1, 3500, 90, 90, 1000, '报告总结', '评价建议', 5, '2019-08-23 16:58:12', '2019-08-23 16:58:12');
INSERT INTO `tb_u3d_web_exp_result` VALUES (2, 16, 1, '拣货人员B', 1, 2800, 4000, 1, 3500, 3000, 6000, 0, 1900, 2500, 5000, 0, 1900, 90, 90, 1000, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (3, 16, 1, '拣货人员C', 1, 3600, 4000, 1, 4000, 4200, 6000, 1, 3500, 4500, 5000, 1, 4000, 90, 90, 1000, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (4, 16, 1, '拣货人员D', 1, 1200, 4000, 0, 2500, 3000, 6000, 0, 1900, 2500, 5000, 0, 1900, 90, 90, 1000, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (5, 16, 1, '拣货人员E', 1, 2800, 4000, 1, 3500, 4200, 6000, 1, 3500, 3500, 5000, 1, 3500, 90, 90, 1000, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (6, 16, 1, '拣货人员F', 1, 2000, 4000, 0, 1900, 4200, 6000, 1, 3500, 3000, 5000, 1, 2873, 90, 90, 1000, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (7, 16, 1, '拣货人员A', 2, 2800, 4000, 1, 3500, 3000, 6000, 0, 1900, 4500, 5000, 1, 4000, 75, 66, 766, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (8, 16, 1, '拣货人员B', 2, 1600, 4000, 0, 3458, 3600, 6000, 1, 2873, 1500, 5000, 0, 2500, 75, 66, 766, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (9, 16, 1, '拣货人员C', 2, 3600, 4000, 1, 4000, 3000, 6000, 0, 1900, 4500, 5000, 1, 4000, 75, 66, 766, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (10, 16, 1, '拣货人员D', 2, 1200, 4000, 0, 2500, 1800, 6000, 0, 2500, 1500, 5000, 0, 2500, 75, 66, 766, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (11, 16, 1, '拣货人员E', 2, 1600, 4000, 0, 3458, 5400, 6000, 1, 4000, 3500, 5000, 1, 3500, 75, 66, 766, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (12, 16, 1, '拣货人员F', 2, 3600, 4000, 1, 4000, 2400, 6000, 0, 3458, 2500, 5000, 0, 1900, 75, 66, 766, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (13, 16, 1, '拣货人员A', 3, 2800, 4000, 1, 3500, 1800, 6000, 0, 2500, 3000, 5000, 1, 2873, 88, 98, 556, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (14, 16, 1, '拣货人员B', 3, 1600, 4000, 0, 3458, 5400, 6000, 1, 4000, 2500, 5000, 0, 1900, 88, 98, 556, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (15, 16, 1, '拣货人员C', 3, 2400, 4000, 1, 2873, 2400, 6000, 0, 3458, 3500, 5000, 1, 3500, 88, 98, 556, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (16, 16, 1, '拣货人员D', 3, 2400, 4000, 1, 2873, 5400, 6000, 1, 4000, 3000, 5000, 1, 2873, 88, 98, 556, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (17, 16, 1, '拣货人员E', 3, 3600, 4000, 1, 4000, 5400, 6000, 1, 4000, 2000, 5000, 0, 3458, 88, 98, 556, '报告总结', '评价建议', 5, '2019-08-23 16:58:15', '2019-08-23 16:58:15');
INSERT INTO `tb_u3d_web_exp_result` VALUES (18, 16, 1, '拣货人员F', 3, 3600, 4000, 1, 4000, 3000, 6000, 0, 1900, 2500, 5000, 0, 1900, 88, 98, 556, '报告总结', '评价建议', 5, '2019-08-23 16:58:15', '2019-08-23 16:58:15');
INSERT INTO `tb_u3d_web_exp_result` VALUES (19, 16, 2, '拣货人员A', 1, 2000, 4000, 0, 1900, 3000, 6000, 0, 1900, 3500, 5000, 1, 3500, 113, 123, 765, '报告总结', '评价建议', 5, '2019-08-23 16:58:12', '2019-08-23 16:58:12');
INSERT INTO `tb_u3d_web_exp_result` VALUES (20, 16, 2, '拣货人员B', 1, 2800, 4000, 1, 3500, 3000, 6000, 0, 1900, 2500, 5000, 0, 1900, 113, 123, 765, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (21, 16, 2, '拣货人员C', 1, 3600, 4000, 1, 4000, 4200, 6000, 1, 3500, 4500, 5000, 1, 4000, 113, 123, 765, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (22, 16, 2, '拣货人员D', 1, 1200, 4000, 0, 2500, 3000, 6000, 0, 1900, 2500, 5000, 0, 1900, 113, 123, 765, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (23, 16, 2, '拣货人员E', 1, 2800, 4000, 1, 3500, 4200, 6000, 1, 3500, 3500, 5000, 1, 3500, 113, 123, 765, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (24, 16, 2, '拣货人员F', 1, 2000, 4000, 0, 1900, 4200, 6000, 1, 3500, 3000, 5000, 1, 2873, 113, 123, 765, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (25, 16, 2, '拣货人员A', 2, 2800, 4000, 1, 3500, 3000, 6000, 0, 1900, 4500, 5000, 1, 4000, 91, 90, 555, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (26, 16, 2, '拣货人员B', 2, 1600, 4000, 0, 3458, 3600, 6000, 1, 2873, 1500, 5000, 0, 2500, 91, 90, 555, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (27, 16, 2, '拣货人员C', 2, 3600, 4000, 1, 4000, 3000, 6000, 0, 1900, 4500, 5000, 1, 4000, 91, 90, 555, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (28, 16, 2, '拣货人员D', 2, 1200, 4000, 0, 2500, 1800, 6000, 0, 2500, 1500, 5000, 0, 2500, 91, 90, 555, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (29, 16, 2, '拣货人员E', 2, 1600, 4000, 0, 3458, 5400, 6000, 1, 4000, 3500, 5000, 1, 3500, 91, 90, 555, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (30, 16, 2, '拣货人员F', 2, 3600, 4000, 1, 4000, 2400, 6000, 0, 3458, 2500, 5000, 0, 1900, 91, 90, 555, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (31, 16, 2, '拣货人员A', 3, 2800, 4000, 1, 3500, 1800, 6000, 0, 2500, 3000, 5000, 1, 2873, 93, 90, 1000, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (32, 16, 2, '拣货人员B', 3, 1600, 4000, 0, 3458, 5400, 6000, 1, 4000, 2500, 5000, 0, 1900, 93, 90, 1000, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (33, 16, 2, '拣货人员C', 3, 2400, 4000, 1, 2873, 2400, 6000, 0, 3458, 3500, 5000, 1, 3500, 93, 90, 1000, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (34, 16, 2, '拣货人员D', 3, 2400, 4000, 1, 2873, 5400, 6000, 1, 4000, 3000, 5000, 1, 2873, 93, 90, 1000, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (35, 16, 2, '拣货人员E', 3, 3600, 4000, 1, 4000, 5400, 6000, 1, 4000, 2000, 5000, 0, 3458, 93, 90, 1000, '报告总结', '评价建议', 5, '2019-08-23 16:58:15', '2019-08-23 16:58:15');
INSERT INTO `tb_u3d_web_exp_result` VALUES (36, 16, 2, '拣货人员F', 3, 3600, 4000, 1, 4000, 3000, 6000, 0, 1900, 2500, 5000, 0, 1900, 93, 90, 1000, '报告总结', '评价建议', 5, '2019-08-23 16:58:15', '2019-08-23 16:58:15');
INSERT INTO `tb_u3d_web_exp_result` VALUES (37, 16, 3, '拣货人员A', 1, 2000, 4000, 0, 1900, 3000, 6000, 0, 1900, 3500, 5000, 1, 3500, 145, 90, 666, '报告总结', '评价建议', 5, '2019-08-23 16:58:12', '2019-08-23 16:58:12');
INSERT INTO `tb_u3d_web_exp_result` VALUES (38, 16, 3, '拣货人员B', 1, 2800, 4000, 1, 3500, 3000, 6000, 0, 1900, 2500, 5000, 0, 1900, 145, 90, 666, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (39, 16, 3, '拣货人员C', 1, 3600, 4000, 1, 4000, 4200, 6000, 1, 3500, 4500, 5000, 1, 4000, 145, 90, 666, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (40, 16, 3, '拣货人员D', 1, 1200, 4000, 0, 2500, 3000, 6000, 0, 1900, 2500, 5000, 0, 1900, 145, 90, 666, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (41, 16, 3, '拣货人员E', 1, 2800, 4000, 1, 3500, 4200, 6000, 1, 3500, 3500, 5000, 1, 3500, 145, 90, 666, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (42, 16, 3, '拣货人员F', 1, 2000, 4000, 0, 1900, 4200, 6000, 1, 3500, 3000, 5000, 1, 2873, 145, 90, 666, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (43, 16, 3, '拣货人员A', 2, 2800, 4000, 1, 3500, 3000, 6000, 0, 1900, 4500, 5000, 1, 4000, 67, 142, 888, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (44, 16, 3, '拣货人员B', 2, 1600, 4000, 0, 3458, 3600, 6000, 1, 2873, 1500, 5000, 0, 2500, 67, 142, 888, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (45, 16, 3, '拣货人员C', 2, 3600, 4000, 1, 4000, 3000, 6000, 0, 1900, 4500, 5000, 1, 4000, 67, 142, 888, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (46, 16, 3, '拣货人员D', 2, 1200, 4000, 0, 2500, 1800, 6000, 0, 2500, 1500, 5000, 0, 2500, 67, 142, 888, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (47, 16, 3, '拣货人员E', 2, 1600, 4000, 0, 3458, 5400, 6000, 1, 4000, 3500, 5000, 1, 3500, 67, 142, 888, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (48, 16, 3, '拣货人员F', 2, 3600, 4000, 1, 4000, 2400, 6000, 0, 3458, 2500, 5000, 0, 1900, 67, 142, 888, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (49, 16, 3, '拣货人员A', 3, 2800, 4000, 1, 3500, 1800, 6000, 0, 2500, 3000, 5000, 1, 2873, 90, 111, 578, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (50, 16, 3, '拣货人员B', 3, 1600, 4000, 0, 3458, 5400, 6000, 1, 4000, 2500, 5000, 0, 1900, 90, 111, 578, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (51, 16, 3, '拣货人员C', 3, 2400, 4000, 1, 2873, 2400, 6000, 0, 3458, 3500, 5000, 1, 3500, 90, 111, 578, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (52, 16, 3, '拣货人员D', 3, 2400, 4000, 1, 2873, 5400, 6000, 1, 4000, 3000, 5000, 1, 2873, 90, 111, 578, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (53, 16, 3, '拣货人员E', 3, 3600, 4000, 1, 4000, 5400, 6000, 1, 4000, 2000, 5000, 0, 3458, 90, 111, 578, '报告总结', '评价建议', 5, '2019-08-23 16:58:15', '2019-08-23 16:58:15');
INSERT INTO `tb_u3d_web_exp_result` VALUES (54, 16, 3, '拣货人员F', 3, 3600, 4000, 1, 4000, 3000, 6000, 0, 1900, 2500, 5000, 0, 1900, 90, 111, 578, '报告总结', '评价建议', 5, '2019-08-23 16:58:15', '2019-08-23 16:58:15');
INSERT INTO `tb_u3d_web_exp_result` VALUES (55, 16, 4, '拣货人员A', 1, 2000, 4000, 0, 1900, 3000, 6000, 0, 1900, 3500, 5000, 1, 3500, 241, 257, 789, '报告总结', '评价建议', 5, '2019-08-23 16:58:12', '2019-08-23 16:58:12');
INSERT INTO `tb_u3d_web_exp_result` VALUES (56, 16, 4, '拣货人员B', 1, 2800, 4000, 1, 3500, 3000, 6000, 0, 1900, 2500, 5000, 0, 1900, 241, 257, 789, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (57, 16, 4, '拣货人员C', 1, 3600, 4000, 1, 4000, 4200, 6000, 1, 3500, 4500, 5000, 1, 4000, 241, 257, 789, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (58, 16, 4, '拣货人员D', 1, 1200, 4000, 0, 2500, 3000, 6000, 0, 1900, 2500, 5000, 0, 1900, 241, 257, 789, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (59, 16, 4, '拣货人员E', 1, 2800, 4000, 1, 3500, 4200, 6000, 1, 3500, 3500, 5000, 1, 3500, 241, 257, 789, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (60, 16, 4, '拣货人员F', 1, 2000, 4000, 0, 1900, 4200, 6000, 1, 3500, 3000, 5000, 1, 2873, 241, 257, 789, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (61, 16, 4, '拣货人员A', 2, 2800, 4000, 1, 3500, 3000, 6000, 0, 1900, 4500, 5000, 1, 4000, 90, 122, 888, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (62, 16, 4, '拣货人员B', 2, 1600, 4000, 0, 3458, 3600, 6000, 1, 2873, 1500, 5000, 0, 2500, 90, 122, 888, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (63, 16, 4, '拣货人员C', 2, 3600, 4000, 1, 4000, 3000, 6000, 0, 1900, 4500, 5000, 1, 4000, 90, 122, 888, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (64, 16, 4, '拣货人员D', 2, 1200, 4000, 0, 2500, 1800, 6000, 0, 2500, 1500, 5000, 0, 2500, 90, 122, 888, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (65, 16, 4, '拣货人员E', 2, 1600, 4000, 0, 3458, 5400, 6000, 1, 4000, 3500, 5000, 1, 3500, 90, 122, 888, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (66, 16, 4, '拣货人员F', 2, 3600, 4000, 1, 4000, 2400, 6000, 0, 3458, 2500, 5000, 0, 1900, 90, 122, 888, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (67, 16, 4, '拣货人员A', 3, 2800, 4000, 1, 3500, 1800, 6000, 0, 2500, 3000, 5000, 1, 2873, 90, 255, 923, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (68, 16, 4, '拣货人员B', 3, 1600, 4000, 0, 3458, 5400, 6000, 1, 4000, 2500, 5000, 0, 1900, 90, 255, 923, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (69, 16, 4, '拣货人员C', 3, 2400, 4000, 1, 2873, 2400, 6000, 0, 3458, 3500, 5000, 1, 3500, 90, 255, 923, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (70, 16, 4, '拣货人员D', 3, 2400, 4000, 1, 2873, 5400, 6000, 1, 4000, 3000, 5000, 1, 2873, 90, 255, 923, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (71, 16, 4, '拣货人员E', 3, 3600, 4000, 1, 4000, 5400, 6000, 1, 4000, 2000, 5000, 0, 3458, 90, 255, 923, '报告总结', '评价建议', 5, '2019-08-23 16:58:15', '2019-08-23 16:58:15');
INSERT INTO `tb_u3d_web_exp_result` VALUES (72, 16, 4, '拣货人员F', 3, 3600, 4000, 1, 4000, 3000, 6000, 0, 1900, 2500, 5000, 0, 1900, 90, 255, 923, '报告总结', '评价建议', 5, '2019-08-23 16:58:15', '2019-08-23 16:58:15');
INSERT INTO `tb_u3d_web_exp_result` VALUES (73, 16, 5, '拣货人员A', 1, 2000, 4000, 0, 1900, 3000, 6000, 0, 1900, 3500, 5000, 1, 3500, 90, 79, 679, '报告总结', '评价建议', 5, '2019-08-23 16:58:12', '2019-08-23 16:58:12');
INSERT INTO `tb_u3d_web_exp_result` VALUES (74, 16, 5, '拣货人员B', 1, 2800, 4000, 1, 3500, 3000, 6000, 0, 1900, 2500, 5000, 0, 1900, 90, 79, 679, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (75, 16, 5, '拣货人员C', 1, 3600, 4000, 1, 4000, 4200, 6000, 1, 3500, 4500, 5000, 1, 4000, 90, 79, 679, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (76, 16, 5, '拣货人员D', 1, 1200, 4000, 0, 2500, 3000, 6000, 0, 1900, 2500, 5000, 0, 1900, 90, 79, 679, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (77, 16, 5, '拣货人员E', 1, 2800, 4000, 1, 3500, 4200, 6000, 1, 3500, 3500, 5000, 1, 3500, 90, 79, 679, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (78, 16, 5, '拣货人员F', 1, 2000, 4000, 0, 1900, 4200, 6000, 1, 3500, 3000, 5000, 1, 2873, 90, 79, 679, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (79, 16, 5, '拣货人员A', 2, 2800, 4000, 1, 3500, 3000, 6000, 0, 1900, 4500, 5000, 1, 4000, 90, 90, 790, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (80, 16, 5, '拣货人员B', 2, 1600, 4000, 0, 3458, 3600, 6000, 1, 2873, 1500, 5000, 0, 2500, 90, 90, 790, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (81, 16, 5, '拣货人员C', 2, 3600, 4000, 1, 4000, 3000, 6000, 0, 1900, 4500, 5000, 1, 4000, 90, 90, 790, '报告总结', '评价建议', 5, '2019-08-23 16:58:13', '2019-08-23 16:58:13');
INSERT INTO `tb_u3d_web_exp_result` VALUES (82, 16, 5, '拣货人员D', 2, 1200, 4000, 0, 2500, 1800, 6000, 0, 2500, 1500, 5000, 0, 2500, 90, 90, 790, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (83, 16, 5, '拣货人员E', 2, 1600, 4000, 0, 3458, 5400, 6000, 1, 4000, 3500, 5000, 1, 3500, 90, 90, 790, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (84, 16, 5, '拣货人员F', 2, 3600, 4000, 1, 4000, 2400, 6000, 0, 3458, 2500, 5000, 0, 1900, 90, 90, 790, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (85, 16, 5, '拣货人员A', 3, 2800, 4000, 1, 3500, 1800, 6000, 0, 2500, 3000, 5000, 1, 2873, 321, 98, 789, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (86, 16, 5, '拣货人员B', 3, 1600, 4000, 0, 3458, 5400, 6000, 1, 4000, 2500, 5000, 0, 1900, 321, 98, 789, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (87, 16, 5, '拣货人员C', 3, 2400, 4000, 1, 2873, 2400, 6000, 0, 3458, 3500, 5000, 1, 3500, 321, 98, 789, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (88, 16, 5, '拣货人员D', 3, 2400, 4000, 1, 2873, 5400, 6000, 1, 4000, 3000, 5000, 1, 2873, 321, 98, 789, '报告总结', '评价建议', 5, '2019-08-23 16:58:14', '2019-08-23 16:58:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (89, 16, 5, '拣货人员E', 3, 3600, 4000, 1, 4000, 5400, 6000, 1, 4000, 2000, 5000, 0, 3458, 321, 98, 789, '报告总结', '评价建议', 5, '2019-08-23 16:58:15', '2019-08-23 16:58:15');
INSERT INTO `tb_u3d_web_exp_result` VALUES (90, 16, 5, '拣货人员F', 3, 3600, 4000, 1, 4000, 3000, 6000, 0, 1900, 2500, 5000, 0, 1900, 321, 98, 789, '报告总结', '评价建议', 5, '2019-08-23 16:58:15', '2019-08-23 16:58:15');
INSERT INTO `tb_u3d_web_exp_result` VALUES (91, 23, 6, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, NULL, NULL, 5, '2019-08-24 15:16:06', '2019-08-24 15:16:06');
INSERT INTO `tb_u3d_web_exp_result` VALUES (92, 23, 6, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, NULL, NULL, 5, '2019-08-24 15:16:07', '2019-08-24 15:16:07');
INSERT INTO `tb_u3d_web_exp_result` VALUES (93, 23, 6, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, NULL, NULL, 5, '2019-08-24 15:16:07', '2019-08-24 15:16:07');
INSERT INTO `tb_u3d_web_exp_result` VALUES (94, 23, 6, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, NULL, NULL, 5, '2019-08-24 15:16:07', '2019-08-24 15:16:07');
INSERT INTO `tb_u3d_web_exp_result` VALUES (95, 23, 6, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, NULL, NULL, 5, '2019-08-24 15:16:07', '2019-08-24 15:16:07');
INSERT INTO `tb_u3d_web_exp_result` VALUES (96, 23, 6, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, NULL, NULL, 5, '2019-08-24 15:16:07', '2019-08-24 15:16:07');
INSERT INTO `tb_u3d_web_exp_result` VALUES (97, 23, 6, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, NULL, NULL, 5, '2019-08-24 15:16:08', '2019-08-24 15:16:08');
INSERT INTO `tb_u3d_web_exp_result` VALUES (98, 23, 6, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, NULL, NULL, 5, '2019-08-24 15:16:08', '2019-08-24 15:16:08');
INSERT INTO `tb_u3d_web_exp_result` VALUES (99, 23, 6, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, NULL, NULL, 5, '2019-08-24 15:16:08', '2019-08-24 15:16:08');
INSERT INTO `tb_u3d_web_exp_result` VALUES (100, 23, 6, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, NULL, NULL, 5, '2019-08-24 15:16:08', '2019-08-24 15:16:08');
INSERT INTO `tb_u3d_web_exp_result` VALUES (101, 23, 6, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, NULL, NULL, 5, '2019-08-24 15:16:08', '2019-08-24 15:16:08');
INSERT INTO `tb_u3d_web_exp_result` VALUES (102, 23, 6, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, NULL, NULL, 5, '2019-08-24 15:16:09', '2019-08-24 15:16:09');
INSERT INTO `tb_u3d_web_exp_result` VALUES (103, 23, 6, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, NULL, NULL, 5, '2019-08-24 15:16:09', '2019-08-24 15:16:09');
INSERT INTO `tb_u3d_web_exp_result` VALUES (104, 23, 6, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, NULL, NULL, 5, '2019-08-24 15:16:09', '2019-08-24 15:16:09');
INSERT INTO `tb_u3d_web_exp_result` VALUES (105, 23, 6, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, NULL, NULL, 5, '2019-08-24 15:16:09', '2019-08-24 15:16:09');
INSERT INTO `tb_u3d_web_exp_result` VALUES (106, 23, 6, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, NULL, NULL, 5, '2019-08-24 15:16:09', '2019-08-24 15:16:09');
INSERT INTO `tb_u3d_web_exp_result` VALUES (107, 23, 6, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, NULL, NULL, 5, '2019-08-24 15:16:09', '2019-08-24 15:16:09');
INSERT INTO `tb_u3d_web_exp_result` VALUES (108, 23, 6, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, NULL, NULL, 5, '2019-08-24 15:16:10', '2019-08-24 15:16:10');
INSERT INTO `tb_u3d_web_exp_result` VALUES (109, 23, 7, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, NULL, NULL, 5, '2019-08-24 15:16:18', '2019-08-24 15:16:18');
INSERT INTO `tb_u3d_web_exp_result` VALUES (110, 23, 7, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, NULL, NULL, 5, '2019-08-24 15:16:18', '2019-08-24 15:16:18');
INSERT INTO `tb_u3d_web_exp_result` VALUES (111, 23, 7, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, NULL, NULL, 5, '2019-08-24 15:16:18', '2019-08-24 15:16:18');
INSERT INTO `tb_u3d_web_exp_result` VALUES (112, 23, 7, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, NULL, NULL, 5, '2019-08-24 15:16:19', '2019-08-24 15:16:19');
INSERT INTO `tb_u3d_web_exp_result` VALUES (113, 23, 7, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, NULL, NULL, 5, '2019-08-24 15:16:19', '2019-08-24 15:16:19');
INSERT INTO `tb_u3d_web_exp_result` VALUES (114, 23, 7, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, NULL, NULL, 5, '2019-08-24 15:16:19', '2019-08-24 15:16:19');
INSERT INTO `tb_u3d_web_exp_result` VALUES (115, 23, 7, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, NULL, NULL, 5, '2019-08-24 15:16:19', '2019-08-24 15:16:19');
INSERT INTO `tb_u3d_web_exp_result` VALUES (116, 23, 7, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, NULL, NULL, 5, '2019-08-24 15:16:19', '2019-08-24 15:16:19');
INSERT INTO `tb_u3d_web_exp_result` VALUES (117, 23, 7, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, NULL, NULL, 5, '2019-08-24 15:16:20', '2019-08-24 15:16:20');
INSERT INTO `tb_u3d_web_exp_result` VALUES (118, 23, 7, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, NULL, NULL, 5, '2019-08-24 15:16:20', '2019-08-24 15:16:20');
INSERT INTO `tb_u3d_web_exp_result` VALUES (119, 23, 7, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, NULL, NULL, 5, '2019-08-24 15:16:20', '2019-08-24 15:16:20');
INSERT INTO `tb_u3d_web_exp_result` VALUES (120, 23, 7, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, NULL, NULL, 5, '2019-08-24 15:16:20', '2019-08-24 15:16:20');
INSERT INTO `tb_u3d_web_exp_result` VALUES (121, 23, 7, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, NULL, NULL, 5, '2019-08-24 15:16:20', '2019-08-24 15:16:20');
INSERT INTO `tb_u3d_web_exp_result` VALUES (122, 23, 7, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, NULL, NULL, 5, '2019-08-24 15:16:21', '2019-08-24 15:16:21');
INSERT INTO `tb_u3d_web_exp_result` VALUES (123, 23, 7, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, NULL, NULL, 5, '2019-08-24 15:16:21', '2019-08-24 15:16:21');
INSERT INTO `tb_u3d_web_exp_result` VALUES (124, 23, 7, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, NULL, NULL, 5, '2019-08-24 15:16:21', '2019-08-24 15:16:21');
INSERT INTO `tb_u3d_web_exp_result` VALUES (125, 23, 7, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, NULL, NULL, 5, '2019-08-24 15:16:21', '2019-08-24 15:16:21');
INSERT INTO `tb_u3d_web_exp_result` VALUES (126, 23, 7, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, NULL, NULL, 5, '2019-08-24 15:16:22', '2019-08-24 15:16:22');
INSERT INTO `tb_u3d_web_exp_result` VALUES (127, 23, 8, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (128, 23, 8, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (129, 23, 8, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (130, 23, 8, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (131, 23, 8, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (132, 23, 8, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (133, 23, 8, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (134, 23, 8, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (135, 23, 8, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (136, 23, 8, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (137, 23, 8, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (138, 23, 8, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (139, 23, 8, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (140, 23, 8, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (141, 23, 8, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (142, 23, 8, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (143, 23, 8, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (144, 23, 8, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (145, 23, 9, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (146, 23, 9, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (147, 23, 9, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (148, 23, 9, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (149, 23, 9, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (150, 23, 9, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (151, 23, 9, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (152, 23, 9, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (153, 23, 9, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (154, 23, 9, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (155, 23, 9, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (156, 23, 9, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (157, 23, 9, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (158, 23, 9, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (159, 23, 9, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (160, 23, 9, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (161, 23, 9, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (162, 23, 9, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (163, 23, 10, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (164, 23, 10, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (165, 23, 10, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (166, 23, 10, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (167, 23, 10, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (168, 23, 10, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (169, 23, 10, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (170, 23, 10, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (171, 23, 10, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (172, 23, 10, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (173, 23, 10, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (174, 23, 10, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (175, 23, 10, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (176, 23, 10, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (177, 23, 10, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (178, 23, 10, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (179, 23, 10, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (180, 23, 10, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (181, 23, 11, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (182, 23, 11, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (183, 23, 11, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (184, 23, 11, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (185, 23, 11, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (186, 23, 11, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (187, 23, 11, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (188, 23, 11, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (189, 23, 11, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (190, 23, 11, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (191, 23, 11, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (192, 23, 11, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (193, 23, 11, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (194, 23, 11, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (195, 23, 11, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (196, 23, 11, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (197, 23, 11, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (198, 23, 11, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (199, 23, 12, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (200, 23, 12, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (201, 23, 12, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (202, 23, 12, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (203, 23, 12, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (204, 23, 12, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (205, 23, 12, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (206, 23, 12, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (207, 23, 12, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (208, 23, 12, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (209, 23, 12, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (210, 23, 12, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (211, 23, 12, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (212, 23, 12, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (213, 23, 12, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (214, 23, 12, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (215, 23, 12, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (216, 23, 12, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (217, 23, 13, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (218, 23, 13, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (219, 23, 13, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (220, 23, 13, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (221, 23, 13, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (222, 23, 13, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (223, 23, 13, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (224, 23, 13, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (225, 23, 13, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (226, 23, 13, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (227, 23, 13, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (228, 23, 13, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (229, 23, 13, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (230, 23, 13, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (231, 23, 13, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (232, 23, 13, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (233, 23, 13, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (234, 23, 13, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (235, 23, 14, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (236, 23, 14, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (237, 23, 14, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (238, 23, 14, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (239, 23, 14, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (240, 23, 14, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (241, 23, 14, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (242, 23, 14, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (243, 23, 14, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (244, 23, 14, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (245, 23, 14, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (246, 23, 14, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (247, 23, 14, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (248, 23, 14, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (249, 23, 14, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (250, 23, 14, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (251, 23, 14, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (252, 23, 14, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (253, 23, 15, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (254, 23, 15, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (255, 23, 15, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (256, 23, 15, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (257, 23, 15, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (258, 23, 15, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (259, 23, 15, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (260, 23, 15, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (261, 23, 15, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (262, 23, 15, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (263, 23, 15, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (264, 23, 15, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (265, 23, 15, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (266, 23, 15, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (267, 23, 15, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (268, 23, 15, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (269, 23, 15, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (270, 23, 15, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (271, 23, 16, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (272, 23, 16, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (273, 23, 16, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (274, 23, 16, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (275, 23, 16, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (276, 23, 16, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (277, 23, 16, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (278, 23, 16, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (279, 23, 16, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (280, 23, 16, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (281, 23, 16, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (282, 23, 16, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (283, 23, 16, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (284, 23, 16, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (285, 23, 16, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (286, 23, 16, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (287, 23, 16, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (288, 23, 16, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (289, 23, 17, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (290, 23, 17, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (291, 23, 17, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (292, 23, 17, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (293, 23, 17, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (294, 23, 17, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (295, 23, 17, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (296, 23, 17, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (297, 23, 17, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (298, 23, 17, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (299, 23, 17, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (300, 23, 17, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (301, 23, 17, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (302, 23, 17, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (303, 23, 17, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (304, 23, 17, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (305, 23, 17, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (306, 23, 17, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (307, 23, 18, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (308, 23, 18, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (309, 23, 18, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (310, 23, 18, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (311, 23, 18, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (312, 23, 18, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (313, 23, 18, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (314, 23, 18, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (315, 23, 18, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (316, 23, 18, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (317, 23, 18, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (318, 23, 18, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (319, 23, 18, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (320, 23, 18, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (321, 23, 18, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (322, 23, 18, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (323, 23, 18, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (324, 23, 18, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (325, 23, 19, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (326, 23, 19, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (327, 23, 19, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (328, 23, 19, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (329, 23, 19, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (330, 23, 19, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (331, 23, 19, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (332, 23, 19, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (333, 23, 19, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (334, 23, 19, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (335, 23, 19, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (336, 23, 19, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (337, 23, 19, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (338, 23, 19, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (339, 23, 19, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (340, 23, 19, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (341, 23, 19, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (342, 23, 19, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (343, 23, 20, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (344, 23, 20, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (345, 23, 20, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (346, 23, 20, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (347, 23, 20, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (348, 23, 20, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (349, 23, 20, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (350, 23, 20, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (351, 23, 20, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (352, 23, 20, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (353, 23, 20, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (354, 23, 20, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (355, 23, 20, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (356, 23, 20, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (357, 23, 20, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (358, 23, 20, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (359, 23, 20, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (360, 23, 20, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (361, 23, 21, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (362, 23, 21, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (363, 23, 21, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (364, 23, 21, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (365, 23, 21, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (366, 23, 21, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (367, 23, 21, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (368, 23, 21, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (369, 23, 21, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (370, 23, 21, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (371, 23, 21, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (372, 23, 21, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (373, 23, 21, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (374, 23, 21, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (375, 23, 21, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (376, 23, 21, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (377, 23, 21, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (378, 23, 21, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (379, 23, 22, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (380, 23, 22, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (381, 23, 22, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (382, 23, 22, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (383, 23, 22, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (384, 23, 22, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (385, 23, 22, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (386, 23, 22, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (387, 23, 22, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (388, 23, 22, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (389, 23, 22, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (390, 23, 22, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (391, 23, 22, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (392, 23, 22, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (393, 23, 22, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (394, 23, 22, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (395, 23, 22, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (396, 23, 22, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (397, 23, 23, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (398, 23, 23, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (399, 23, 23, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (400, 23, 23, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (401, 23, 23, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (402, 23, 23, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (403, 23, 23, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (404, 23, 23, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (405, 23, 23, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (406, 23, 23, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (407, 23, 23, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (408, 23, 23, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (409, 23, 23, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (410, 23, 23, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (411, 23, 23, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (412, 23, 23, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (413, 23, 23, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (414, 23, 23, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (415, 23, 24, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (416, 23, 24, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (417, 23, 24, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (418, 23, 24, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (419, 23, 24, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (420, 23, 24, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (421, 23, 24, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (422, 23, 24, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (423, 23, 24, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (424, 23, 24, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (425, 23, 24, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (426, 23, 24, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (427, 23, 24, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (428, 23, 24, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (429, 23, 24, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (430, 23, 24, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (431, 23, 24, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (432, 23, 24, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (433, 23, 25, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (434, 23, 25, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (435, 23, 25, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (436, 23, 25, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (437, 23, 25, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (438, 23, 25, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (439, 23, 25, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (440, 23, 25, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (441, 23, 25, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (442, 23, 25, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (443, 23, 25, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (444, 23, 25, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (445, 23, 25, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (446, 23, 25, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (447, 23, 25, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (448, 23, 25, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (449, 23, 25, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (450, 23, 25, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (451, 23, 26, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (452, 23, 26, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (453, 23, 26, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (454, 23, 26, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (455, 23, 26, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (456, 23, 26, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (457, 23, 26, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (458, 23, 26, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (459, 23, 26, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (460, 23, 26, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (461, 23, 26, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (462, 23, 26, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (463, 23, 26, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (464, 23, 26, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (465, 23, 26, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (466, 23, 26, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (467, 23, 26, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (468, 23, 26, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (469, 23, 27, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (470, 23, 27, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (471, 23, 27, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (472, 23, 27, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (473, 23, 27, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (474, 23, 27, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (475, 23, 27, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (476, 23, 27, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (477, 23, 27, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (478, 23, 27, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (479, 23, 27, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (480, 23, 27, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (481, 23, 27, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (482, 23, 27, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (483, 23, 27, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (484, 23, 27, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (485, 23, 27, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (486, 23, 27, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (487, 23, 28, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (488, 23, 28, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (489, 23, 28, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (490, 23, 28, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (491, 23, 28, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (492, 23, 28, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (493, 23, 28, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (494, 23, 28, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (495, 23, 28, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (496, 23, 28, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (497, 23, 28, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (498, 23, 28, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (499, 23, 28, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (500, 23, 28, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (501, 23, 28, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (502, 23, 28, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (503, 23, 28, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (504, 23, 28, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (505, 23, 29, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (506, 23, 29, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (507, 23, 29, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (508, 23, 29, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (509, 23, 29, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (510, 23, 29, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (511, 23, 29, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (512, 23, 29, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (513, 23, 29, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (514, 23, 29, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (515, 23, 29, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (516, 23, 29, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (517, 23, 29, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (518, 23, 29, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (519, 23, 29, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (520, 23, 29, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (521, 23, 29, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (522, 23, 29, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (523, 23, 30, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (524, 23, 30, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (525, 23, 30, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (526, 23, 30, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (527, 23, 30, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (528, 23, 30, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (529, 23, 30, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (530, 23, 30, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (531, 23, 30, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (532, 23, 30, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (533, 23, 30, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (534, 23, 30, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (535, 23, 30, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (536, 23, 30, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (537, 23, 30, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (538, 23, 30, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (539, 23, 30, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (540, 23, 30, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (541, 23, 31, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (542, 23, 31, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (543, 23, 31, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (544, 23, 31, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (545, 23, 31, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (546, 23, 31, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (547, 23, 31, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (548, 23, 31, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (549, 23, 31, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (550, 23, 31, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (551, 23, 31, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (552, 23, 31, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (553, 23, 31, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (554, 23, 31, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (555, 23, 31, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (556, 23, 31, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (557, 23, 31, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (558, 23, 31, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (559, 23, 32, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (560, 23, 32, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (561, 23, 32, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (562, 23, 32, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (563, 23, 32, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (564, 23, 32, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (565, 23, 32, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (566, 23, 32, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (567, 23, 32, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (568, 23, 32, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (569, 23, 32, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (570, 23, 32, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (571, 23, 32, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (572, 23, 32, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (573, 23, 32, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (574, 23, 32, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (575, 23, 32, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (576, 23, 32, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (577, 23, 33, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (578, 23, 33, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (579, 23, 33, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (580, 23, 33, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (581, 23, 33, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (582, 23, 33, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (583, 23, 33, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (584, 23, 33, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (585, 23, 33, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (586, 23, 33, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (587, 23, 33, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (588, 23, 33, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (589, 23, 33, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (590, 23, 33, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (591, 23, 33, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (592, 23, 33, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (593, 23, 33, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (594, 23, 33, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (595, 23, 34, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (596, 23, 34, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (597, 23, 34, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (598, 23, 34, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (599, 23, 34, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (600, 23, 34, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (601, 23, 34, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (602, 23, 34, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (603, 23, 34, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (604, 23, 34, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (605, 23, 34, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (606, 23, 34, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (607, 23, 34, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (608, 23, 34, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (609, 23, 34, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (610, 23, 34, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (611, 23, 34, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (612, 23, 34, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (613, 23, 35, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (614, 23, 35, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (615, 23, 35, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (616, 23, 35, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (617, 23, 35, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (618, 23, 35, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (619, 23, 35, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (620, 23, 35, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (621, 23, 35, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (622, 23, 35, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (623, 23, 35, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (624, 23, 35, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (625, 23, 35, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (626, 23, 35, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (627, 23, 35, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (628, 23, 35, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (629, 23, 35, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (630, 23, 35, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (631, 23, 36, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (632, 23, 36, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (633, 23, 36, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (634, 23, 36, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (635, 23, 36, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (636, 23, 36, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (637, 23, 36, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (638, 23, 36, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (639, 23, 36, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (640, 23, 36, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (641, 23, 36, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (642, 23, 36, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (643, 23, 36, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (644, 23, 36, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (645, 23, 36, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (646, 23, 36, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (647, 23, 36, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (648, 23, 36, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (649, 23, 37, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (650, 23, 37, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (651, 23, 37, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (652, 23, 37, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (653, 23, 37, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (654, 23, 37, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (655, 23, 37, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (656, 23, 37, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (657, 23, 37, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (658, 23, 37, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (659, 23, 37, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (660, 23, 37, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (661, 23, 37, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (662, 23, 37, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (663, 23, 37, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (664, 23, 37, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (665, 23, 37, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (666, 23, 37, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (667, 23, 38, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (668, 23, 38, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (669, 23, 38, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (670, 23, 38, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (671, 23, 38, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (672, 23, 38, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (673, 23, 38, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (674, 23, 38, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (675, 23, 38, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (676, 23, 38, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (677, 23, 38, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (678, 23, 38, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (679, 23, 38, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (680, 23, 38, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (681, 23, 38, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (682, 23, 38, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (683, 23, 38, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (684, 23, 38, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (685, 23, 39, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (686, 23, 39, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (687, 23, 39, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (688, 23, 39, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (689, 23, 39, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (690, 23, 39, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (691, 23, 39, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (692, 23, 39, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (693, 23, 39, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (694, 23, 39, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (695, 23, 39, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (696, 23, 39, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (697, 23, 39, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (698, 23, 39, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (699, 23, 39, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (700, 23, 39, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (701, 23, 39, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (702, 23, 39, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (703, 23, 40, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (704, 23, 40, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (705, 23, 40, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (706, 23, 40, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (707, 23, 40, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (708, 23, 40, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (709, 23, 40, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (710, 23, 40, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (711, 23, 40, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (712, 23, 40, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (713, 23, 40, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (714, 23, 40, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (715, 23, 40, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (716, 23, 40, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (717, 23, 40, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (718, 23, 40, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (719, 23, 40, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (720, 23, 40, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (721, 23, 41, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (722, 23, 41, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (723, 23, 41, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (724, 23, 41, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (725, 23, 41, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (726, 23, 41, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (727, 23, 41, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (728, 23, 41, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (729, 23, 41, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (730, 23, 41, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (731, 23, 41, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (732, 23, 41, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (733, 23, 41, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (734, 23, 41, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (735, 23, 41, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (736, 23, 41, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (737, 23, 41, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (738, 23, 41, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (739, 23, 42, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (740, 23, 42, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (741, 23, 42, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (742, 23, 42, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (743, 23, 42, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (744, 23, 42, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (745, 23, 42, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (746, 23, 42, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (747, 23, 42, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (748, 23, 42, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (749, 23, 42, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (750, 23, 42, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (751, 23, 42, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (752, 23, 42, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (753, 23, 42, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (754, 23, 42, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (755, 23, 42, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (756, 23, 42, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (757, 23, 43, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (758, 23, 43, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (759, 23, 43, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (760, 23, 43, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (761, 23, 43, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (762, 23, 43, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (763, 23, 43, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (764, 23, 43, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (765, 23, 43, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (766, 23, 43, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (767, 23, 43, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (768, 23, 43, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (769, 23, 43, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (770, 23, 43, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (771, 23, 43, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (772, 23, 43, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (773, 23, 43, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (774, 23, 43, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (775, 23, 44, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (776, 23, 44, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (777, 23, 44, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (778, 23, 44, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (779, 23, 44, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (780, 23, 44, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (781, 23, 44, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (782, 23, 44, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (783, 23, 44, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (784, 23, 44, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (785, 23, 44, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (786, 23, 44, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (787, 23, 44, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (788, 23, 44, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (789, 23, 44, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (790, 23, 44, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (791, 23, 44, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (792, 23, 44, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (793, 23, 45, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (794, 23, 45, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (795, 23, 45, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (796, 23, 45, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (797, 23, 45, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (798, 23, 45, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (799, 23, 45, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (800, 23, 45, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (801, 23, 45, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (802, 23, 45, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (803, 23, 45, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (804, 23, 45, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (805, 23, 45, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (806, 23, 45, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (807, 23, 45, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (808, 23, 45, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (809, 23, 45, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (810, 23, 45, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (811, 23, 46, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (812, 23, 46, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (813, 23, 46, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (814, 23, 46, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (815, 23, 46, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (816, 23, 46, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (817, 23, 46, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (818, 23, 46, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (819, 23, 46, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (820, 23, 46, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (821, 23, 46, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (822, 23, 46, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (823, 23, 46, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (824, 23, 46, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (825, 23, 46, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (826, 23, 46, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (827, 23, 46, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (828, 23, 46, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (829, 23, 47, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (830, 23, 47, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (831, 23, 47, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (832, 23, 47, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (833, 23, 47, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (834, 23, 47, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (835, 23, 47, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (836, 23, 47, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (837, 23, 47, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (838, 23, 47, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (839, 23, 47, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (840, 23, 47, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (841, 23, 47, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (842, 23, 47, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (843, 23, 47, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (844, 23, 47, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (845, 23, 47, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (846, 23, 47, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (847, 23, 48, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (848, 23, 48, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (849, 23, 48, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (850, 23, 48, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (851, 23, 48, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (852, 23, 48, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (853, 23, 48, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (854, 23, 48, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (855, 23, 48, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (856, 23, 48, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (857, 23, 48, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (858, 23, 48, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (859, 23, 48, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (860, 23, 48, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (861, 23, 48, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (862, 23, 48, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (863, 23, 48, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (864, 23, 48, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (865, 23, 49, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (866, 23, 49, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (867, 23, 49, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (868, 23, 49, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (869, 23, 49, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (870, 23, 49, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (871, 23, 49, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (872, 23, 49, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (873, 23, 49, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (874, 23, 49, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (875, 23, 49, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (876, 23, 49, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (877, 23, 49, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (878, 23, 49, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (879, 23, 49, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (880, 23, 49, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (881, 23, 49, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (882, 23, 49, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (883, 23, 50, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (884, 23, 50, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (885, 23, 50, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (886, 23, 50, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (887, 23, 50, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (888, 23, 50, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (889, 23, 50, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (890, 23, 50, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (891, 23, 50, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (892, 23, 50, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (893, 23, 50, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (894, 23, 50, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (895, 23, 50, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (896, 23, 50, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (897, 23, 50, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (898, 23, 50, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (899, 23, 50, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (900, 23, 50, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (901, 23, 51, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (902, 23, 51, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (903, 23, 51, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (904, 23, 51, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (905, 23, 51, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (906, 23, 51, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (907, 23, 51, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (908, 23, 51, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (909, 23, 51, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (910, 23, 51, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (911, 23, 51, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (912, 23, 51, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (913, 23, 51, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (914, 23, 51, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (915, 23, 51, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (916, 23, 51, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (917, 23, 51, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (918, 23, 51, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (919, 23, 52, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (920, 23, 52, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (921, 23, 52, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (922, 23, 52, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (923, 23, 52, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (924, 23, 52, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (925, 23, 52, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (926, 23, 52, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (927, 23, 52, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (928, 23, 52, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (929, 23, 52, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (930, 23, 52, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (931, 23, 52, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (932, 23, 52, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (933, 23, 52, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (934, 23, 52, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (935, 23, 52, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (936, 23, 52, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (937, 23, 53, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (938, 23, 53, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (939, 23, 53, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (940, 23, 53, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (941, 23, 53, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (942, 23, 53, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (943, 23, 53, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (944, 23, 53, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (945, 23, 53, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (946, 23, 53, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (947, 23, 53, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (948, 23, 53, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (949, 23, 53, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (950, 23, 53, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (951, 23, 53, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (952, 23, 53, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (953, 23, 53, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (954, 23, 53, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (955, 23, 54, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (956, 23, 54, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (957, 23, 54, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (958, 23, 54, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (959, 23, 54, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (960, 23, 54, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (961, 23, 54, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (962, 23, 54, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (963, 23, 54, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (964, 23, 54, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (965, 23, 54, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (966, 23, 54, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (967, 23, 54, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (968, 23, 54, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (969, 23, 54, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (970, 23, 54, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (971, 23, 54, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (972, 23, 54, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (973, 23, 55, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (974, 23, 55, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (975, 23, 55, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (976, 23, 55, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (977, 23, 55, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (978, 23, 55, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (979, 23, 55, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (980, 23, 55, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (981, 23, 55, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (982, 23, 55, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (983, 23, 55, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (984, 23, 55, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (985, 23, 55, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (986, 23, 55, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (987, 23, 55, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (988, 23, 55, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (989, 23, 55, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (990, 23, 55, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (991, 23, 56, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (992, 23, 56, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (993, 23, 56, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (994, 23, 56, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (995, 23, 56, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (996, 23, 56, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (997, 23, 56, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (998, 23, 56, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (999, 23, 56, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1000, 23, 56, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1001, 23, 56, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1002, 23, 56, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1003, 23, 56, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1004, 23, 56, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1005, 23, 56, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1006, 23, 56, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1007, 23, 56, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1008, 23, 56, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1009, 23, 57, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1010, 23, 57, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1011, 23, 57, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1012, 23, 57, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1013, 23, 57, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1014, 23, 57, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1015, 23, 57, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1016, 23, 57, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1017, 23, 57, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1018, 23, 57, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1019, 23, 57, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1020, 23, 57, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1021, 23, 57, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1022, 23, 57, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1023, 23, 57, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1024, 23, 57, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1025, 23, 57, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1026, 23, 57, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1027, 23, 58, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1028, 23, 58, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1029, 23, 58, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1030, 23, 58, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1031, 23, 58, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1032, 23, 58, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1033, 23, 58, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1034, 23, 58, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1035, 23, 58, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1036, 23, 58, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1037, 23, 58, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1038, 23, 58, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1039, 23, 58, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1040, 23, 58, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1041, 23, 58, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1042, 23, 58, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1043, 23, 58, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1044, 23, 58, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1045, 23, 59, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1046, 23, 59, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1047, 23, 59, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1048, 23, 59, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1049, 23, 59, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1050, 23, 59, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1051, 23, 59, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1052, 23, 59, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1053, 23, 59, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1054, 23, 59, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1055, 23, 59, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1056, 23, 59, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1057, 23, 59, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1058, 23, 59, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1059, 23, 59, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1060, 23, 59, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1061, 23, 59, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1062, 23, 59, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1063, 23, 60, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1064, 23, 60, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1065, 23, 60, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1066, 23, 60, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1067, 23, 60, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1068, 23, 60, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1069, 23, 60, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1070, 23, 60, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1071, 23, 60, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1072, 23, 60, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1073, 23, 60, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1074, 23, 60, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1075, 23, 60, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1076, 23, 60, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1077, 23, 60, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1078, 23, 60, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1079, 23, 60, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1080, 23, 60, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1081, 23, 61, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1082, 23, 61, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1083, 23, 61, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1084, 23, 61, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1085, 23, 61, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1086, 23, 61, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1087, 23, 61, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1088, 23, 61, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1089, 23, 61, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1090, 23, 61, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1091, 23, 61, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1092, 23, 61, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1093, 23, 61, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1094, 23, 61, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1095, 23, 61, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1096, 23, 61, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1097, 23, 61, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1098, 23, 61, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1099, 23, 62, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1100, 23, 62, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1101, 23, 62, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1102, 23, 62, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1103, 23, 62, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1104, 23, 62, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1105, 23, 62, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1106, 23, 62, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1107, 23, 62, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1108, 23, 62, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1109, 23, 62, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1110, 23, 62, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1111, 23, 62, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1112, 23, 62, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1113, 23, 62, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1114, 23, 62, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1115, 23, 62, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1116, 23, 62, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1117, 23, 63, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1118, 23, 63, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1119, 23, 63, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1120, 23, 63, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1121, 23, 63, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1122, 23, 63, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1123, 23, 63, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1124, 23, 63, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1125, 23, 63, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1126, 23, 63, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1127, 23, 63, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1128, 23, 63, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1129, 23, 63, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1130, 23, 63, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1131, 23, 63, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1132, 23, 63, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1133, 23, 63, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1134, 23, 63, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1135, 23, 64, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1136, 23, 64, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1137, 23, 64, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1138, 23, 64, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1139, 23, 64, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1140, 23, 64, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1141, 23, 64, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1142, 23, 64, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1143, 23, 64, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1144, 23, 64, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1145, 23, 64, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1146, 23, 64, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1147, 23, 64, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1148, 23, 64, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1149, 23, 64, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1150, 23, 64, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1151, 23, 64, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1152, 23, 64, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1153, 23, 65, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1154, 23, 65, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1155, 23, 65, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1156, 23, 65, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1157, 23, 65, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1158, 23, 65, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1159, 23, 65, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1160, 23, 65, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1161, 23, 65, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1162, 23, 65, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1163, 23, 65, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1164, 23, 65, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1165, 23, 65, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1166, 23, 65, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1167, 23, 65, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1168, 23, 65, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1169, 23, 65, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1170, 23, 65, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1171, 23, 66, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1172, 23, 66, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1173, 23, 66, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1174, 23, 66, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1175, 23, 66, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1176, 23, 66, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1177, 23, 66, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1178, 23, 66, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1179, 23, 66, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1180, 23, 66, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1181, 23, 66, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1182, 23, 66, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1183, 23, 66, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1184, 23, 66, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1185, 23, 66, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1186, 23, 66, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1187, 23, 66, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1188, 23, 66, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1189, 23, 67, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1190, 23, 67, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1191, 23, 67, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1192, 23, 67, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1193, 23, 67, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1194, 23, 67, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1195, 23, 67, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1196, 23, 67, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1197, 23, 67, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1198, 23, 67, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1199, 23, 67, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1200, 23, 67, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1201, 23, 67, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1202, 23, 67, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1203, 23, 67, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1204, 23, 67, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1205, 23, 67, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1206, 23, 67, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1207, 23, 68, '拣货人员A', 1, 1910, 2372, 1, 1109, 13, 60, 0, 26, 1865, 4032, 0, 892, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1208, 23, 68, '拣货人员B', 1, 2188, 2372, 1, 1497, 49, 60, 1, 69, 1906, 4032, 0, 948, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:28', '2019-08-24 15:18:28');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1209, 23, 68, '拣货人员C', 1, 1625, 2372, 1, 1208, 11, 60, 0, 25, 1887, 4032, 0, 936, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1210, 23, 68, '拣货人员D', 1, 1449, 2372, 1, 1069, 21, 60, 0, 40, 1810, 4032, 0, 893, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1211, 23, 68, '拣货人员E', 1, 962, 2372, 0, 611, 0, 60, 0, 24, 1871, 4032, 0, 918, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1212, 23, 68, '拣货人员F', 1, 951, 2372, 0, 576, 0, 60, 0, 0, 1865, 4032, 0, 886, 90, 90, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1213, 23, 68, '拣货人员A', 2, 1291, 2102, 1, 873, 849, 1815, 0, 715, 334, 684, 0, 229, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:29', '2019-08-24 15:18:29');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1214, 23, 68, '拣货人员B', 2, 1166, 2102, 1, 805, 791, 1815, 0, 716, 322, 684, 0, 220, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1215, 23, 68, '拣货人员C', 2, 1302, 2102, 1, 1094, 839, 1815, 0, 726, 302, 684, 0, 187, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1216, 23, 68, '拣货人员D', 2, 1335, 2102, 1, 977, 1076, 1815, 1, 914, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1217, 23, 68, '拣货人员E', 2, 993, 2102, 0, 589, 954, 1815, 1, 832, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:30', '2019-08-24 15:18:30');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1218, 23, 68, '拣货人员F', 2, 659, 2102, 0, 407, 626, 1815, 0, 516, 0, 684, 0, 0, 40, 40, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1219, 23, 68, '拣货人员A', 3, 3663, 4395, 1, 2683, 447, 1084, 0, 357, 1457, 1898, 1, 712, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1220, 23, 68, '拣货人员B', 3, 817, 4395, 0, 344, 631, 1084, 1, 472, 642, 1898, 0, 335, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1221, 23, 68, '拣货人员C', 3, 1471, 4395, 0, 1760, 416, 1084, 0, 289, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1222, 23, 68, '拣货人员D', 3, 437, 4395, 0, 253, 545, 1084, 1, 383, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1223, 23, 68, '拣货人员E', 3, 442, 4395, 0, 268, 551, 1084, 1, 411, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:31', '2019-08-24 15:18:31');
INSERT INTO `tb_u3d_web_exp_result` VALUES (1224, 23, 68, '拣货人员F', 3, 375, 4395, 0, 249, 457, 1084, 0, 331, 0, 1898, 0, 0, 20, 22, 1000, '在大规模拣货作业下，采用摘播式（多对多）拣货作业，效率非常高。', NULL, 5, '2019-08-24 15:18:32', '2019-08-24 15:18:32');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `login_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登陆用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登陆密码',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色id 对应Role表id字段',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次更新时间',
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校',
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, '评审专家', 'zhuanjia', '123', 'zhuanjia@qq.com', 3, '2019-08-30 17:06:19', '2019-08-30 17:06:32', '浙江工商大学', '福建省', '福州市');
INSERT INTO `tb_user` VALUES (2, '管理员', 'admin', '123', 'admin@qq.com', 1, '2019-08-30 17:06:19', '2019-08-30 17:06:32', '浙江工商大学', '江西省', '鹰潭市');
INSERT INTO `tb_user` VALUES (3, '张华', 'zhanghua', '123', 'zhanghua@qq.com', 4, '2019-08-30 17:06:19', '2019-08-30 17:06:32', '浙江工商大学', '福建省', '南平市');
INSERT INTO `tb_user` VALUES (4, '王秀兰', 'wangxiulan', '123', 'wangxiulan@qq.com', 4, '2019-08-30 17:06:19', '2019-08-30 17:06:32', '浙江工商大学', '山东省', '济南市');
INSERT INTO `tb_user` VALUES (5, '李霞', 'lixia', '123', 'lixia@qq.com', 5, '2019-08-30 17:06:19', '2019-08-30 17:06:32', '浙江工商大学', '黑龙江省', '哈尔滨市');
INSERT INTO `tb_user` VALUES (6, '王勇', 'wangyong', '123', 'wangyong@qq.com', 6, '2019-08-30 17:06:19', '2019-08-30 17:06:32', '浙江工商大学', '北京市', '东城区');
INSERT INTO `tb_user` VALUES (7, '刘敏', 'liumin', '123', 'liumin@qq.com', 5, '2019-08-30 17:06:19', '2019-08-30 17:06:32', '浙江工商大学', '安徽', '淮南');
INSERT INTO `tb_user` VALUES (8, '李丽', 'lili', '123', 'lili@qq.com', 4, '2019-08-30 17:06:19', '2019-08-30 17:06:32', '浙江工商大学', '黑龙江省', '哈尔滨市');
INSERT INTO `tb_user` VALUES (9, '张强', 'zhangqiang', '123', 'zhangqiang@qq.com', 5, '2019-08-30 17:06:19', '2019-08-30 17:06:32', '浙江工商大学', '江苏省', '盐城市');
INSERT INTO `tb_user` VALUES (10, '王平', 'wangping', '123', 'wangping@qq.com', 6, '2019-08-30 17:06:19', '2019-08-30 17:06:32', '浙江工商大学', '天津市', '和平区');
INSERT INTO `tb_user` VALUES (11, '李亮', 'liliang', '123', 'liliang@qq.com', 5, '2019-08-30 20:28:50', '2019-08-30 20:28:50', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (12, '王刚', 'wanggang', '123', 'wanggang@qq.com', 5, '2019-08-30 20:32:59', '2019-08-30 20:32:59', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (13, '王杰', 'wangjie', '123', 'wangjie@qq.com', 5, '2019-08-31 08:29:20', '2019-08-31 08:29:20', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (14, '李桂英', 'liguiying', '123', 'liguiying@qq.com', 6, '2019-08-31 08:29:49', '2019-08-31 08:29:49', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (15, '王军', 'wangjun', '123', 'wangjun@qq.com', 5, '2019-08-31 08:31:21', '2019-08-31 08:31:21', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (16, '赵健', 'zhaojian', '123', 'zhaojian@qq.com', 6, '2019-08-31 08:31:50', '2019-08-31 08:31:50', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (17, '李松', 'lisong', '123', 'lisong@qq.com', 6, '2019-08-31 08:32:14', '2019-08-31 08:32:14', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (18, '张大卫', 'zhangdawei', '123', 'zhangdawei@qq.com', 6, '2019-08-31 08:32:25', '2019-08-31 08:32:25', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (19, '张国会', 'zhangguohui', '123', 'zhangguohui@qq.com', 6, '2019-08-31 08:32:33', '2019-08-31 08:32:33', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (20, '华芳', 'huafang', '123', 'huafang@qq.com', 4, '2019-08-31 08:32:43', '2019-08-31 08:32:43', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (21, '立文', 'liwen', '123', 'liwen@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (22, '周康', 'zhoukang', '123', 'zhoukang@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (23, '张代', 'zhangdai', '123', 'zhangdai@qq.com', 6, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (24, '王强', 'wangqiang', '123', 'wangqiang@qq.com', 5, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (25, '张国超', 'zhangguochao', '123', 'zhangguochao@qq.com', 6, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (26, '张永华', 'zhangyonghua', '123', 'zhangyonghua@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (27, '张守', 'zhangshou', '123', 'zhangshou@qq.com', 7, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (28, '周进', 'zhoujin', '123', 'zhoujie@qq.com', 5, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (29, '张伟', 'zhangwei', '123', 'zhangwei@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (30, '王伟', 'wangwei', '123', 'wangwei@qq.com', 5, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (31, '王芳', 'wangfang', '123', 'wangfang@qq.com', 7, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (32, '李伟', 'liwei', '123', 'liwei@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (33, '王秀英', 'wangxiuying', '123', 'wangxiuying@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (34, '李秀英', 'lixiuying', '123', 'lixiuying@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (35, '李娜', 'lina', '123', 'lina@qq.com', 7, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (36, '张秀英', 'zhangxiuying', '123', 'zhangxiuying@qq.com', 6, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (37, '刘伟', 'liuwei', '123', 'liuwei@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (38, '张敏', 'zhangmin', '123', 'zhangmin@qq.com', 5, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (39, '李静', 'lijing', '123', 'lijing@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (40, '张丽', 'zhangli', '123', 'zhangli@qq.com', 5, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (41, '王静', 'wangjing', '123', 'wangjing@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (42, '王丽', 'wangli', '123', 'wangli@qq.com', 7, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (43, '李强', 'liqiang', '123', 'liqiang@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (44, '张静', 'zhangjing', '123', 'zhangjing@qq.com', 6, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (45, '李敏', 'limin', '123', 'limin@qq.com', 6, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (46, '王敏', 'wangmin', '123', 'wangmin@qq.com', 5, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (47, '王磊', 'wanglei', '123', 'wanglei@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (48, '李军', 'lijun', '123', 'lijun@qq.com', 5, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (49, '刘洋', 'liuyang', '123', 'liuyang@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (50, '王勇勇', 'wangyongyong', '123', 'wangyongyong@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (51, '张勇', 'zhangyong', '123', 'zhangyong@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (52, '王艳', 'wangyan', '123', 'wangyan@qq.com', 6, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (53, '李杰', 'lijie', '123', 'lijie@qq.com', 5, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (54, '张磊', 'zhanglei', '123', 'zhanglei@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (55, '王强强', 'wangqiangqiang', '123', 'wangqiangqiang@qq.com', 6, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (56, '张杰', 'zhangjie', '123', 'zhangjie@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (57, '张军', 'zhangjun', '123', 'zhangjun@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (58, '李娟', 'lijuan', '123', 'lijuan@qq.com', 5, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (59, '张艳', 'zhangyan', '123', 'zhangyan@qq.com', 7, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (60, '张涛', 'zhangtao', '123', 'zhangtao@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (61, '王涛', 'wangtao', '123', 'wangtao@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (62, '李明', 'liming', '123', 'liming@qq.com', 6, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (63, '李艳', 'liyan', '123', 'liyan@qq.com', 7, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (64, '王超', 'wangchao', '123', 'wangchao@qq.com', 5, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (65, '李勇', 'liyong', '123', 'liyong@qq.com', 5, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (66, '王娟', 'wangjuan', '123', 'wangjuan@qq.com', 5, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (67, '刘杰', 'liujie', '123', 'liujie@qq.com', 6, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (68, '黄芸', 'huangyun', '123', 'huangyun@qq.com', 4, '2019-08-31 08:32:54', '2019-08-31 08:32:54', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (69, '周杰', 'zhoujie', '123', 'zhoujie@qq.com', 2, '2019-09-05 10:44:57', '2019-09-05 10:45:00', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (70, '蒋长兵', 'jiangchangbing', '123', 'jiangchangbing@qq.com', 2, '2019-09-05 10:46:48', '2019-09-05 10:46:51', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (72, '蒋长兵', 'johncabin', '010101001', 'johncabin@zjgsu.edu.cn', 2, '2019-09-05 17:07:59', '2019-09-05 17:07:59', '浙江工商大学', '浙江省', '杭州市');
INSERT INTO `tb_user` VALUES (73, '李亮', 'student_1', '010101001', 'johncabin@zjgsu.edu.cn', 4, '2019-09-05 19:57:46', '2019-09-05 19:57:46', '浙江工商大学', '浙江省', '杭州市');

-- ----------------------------
-- Table structure for tb_website
-- ----------------------------
DROP TABLE IF EXISTS `tb_website`;
CREATE TABLE `tb_website`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '网站访问id',
  `count` int(11) NULL DEFAULT 0 COMMENT '统计次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_website
-- ----------------------------
INSERT INTO `tb_website` VALUES (1, 409);

SET FOREIGN_KEY_CHECKS = 1;
