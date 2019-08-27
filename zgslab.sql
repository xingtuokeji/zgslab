/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : zgslab

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 27/08/2019 15:55:26
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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
INSERT INTO `tb_comment` VALUES (1, 2, '周杰', '分拣实验都不知道啊', '2019-08-13 17:10:53', '2019-08-13 17:10:53');
INSERT INTO `tb_comment` VALUES (3, 2, '李四', '去好好看看实验介绍吧，大哥', '2019-08-13 17:11:25', '2019-08-13 17:11:25');
INSERT INTO `tb_comment` VALUES (4, 2, '李四', '去好好看看实验介绍吧，大哥', '2019-08-22 18:51:59', '2019-08-22 18:51:59');
INSERT INTO `tb_comment` VALUES (6, 3, '周杰', '答案', '2019-08-22 18:59:41', '2019-08-22 18:59:41');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_evaluate_suggest
-- ----------------------------
INSERT INTO `tb_evaluate_suggest` VALUES (11, '小黄', '中南大学', '周老师讲课不错', '4', '2019-08-23 15:27:54', '2019-08-23 15:27:54', 16);
INSERT INTO `tb_evaluate_suggest` VALUES (12, '小黄', '中南大学', '周老师讲课不错', '5', '2019-08-23 15:38:57', '2019-08-23 15:38:57', 12);
INSERT INTO `tb_evaluate_suggest` VALUES (13, 'sa', 's', 's', '4', NULL, NULL, 1);

-- ----------------------------
-- Table structure for tb_experiment
-- ----------------------------
DROP TABLE IF EXISTS `tb_experiment`;
CREATE TABLE `tb_experiment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '实验id',
  `course_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程id 关联course表',
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `experiment_type_id` int(11) NULL DEFAULT NULL COMMENT '实验分类id 关联实验类别表',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次更新时间',
  `user_id` int(255) NULL DEFAULT NULL COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名字',
  `experiment_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验编码',
  `experiment_start_time` datetime(0) NULL DEFAULT NULL COMMENT '实验开始时间',
  `experiment_end_time` datetime(0) NULL DEFAULT NULL COMMENT '实验结束时间',
  `experiment_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_experiment
-- ----------------------------
INSERT INTO `tb_experiment` VALUES (1, '1', '1', 1, '2019-08-09 17:18:37', '2019-08-09 17:18:40', 1, '1', '1', '2019-08-09 17:18:43', '2019-08-09 17:18:46', '1');
INSERT INTO `tb_experiment` VALUES (8, NULL, '修改后的实验名称1212', NULL, '2019-08-12 10:58:41', '2019-08-15 14:11:52', 8, '张老师', 'NT82TPTK', '1995-12-16 12:22:00', '1995-12-01 12:11:21', '8/2日 05班中期测验');
INSERT INTO `tb_experiment` VALUES (11, NULL, '电商小件商品快速拣货决策虚拟仿真实验', NULL, '2019-08-12 10:30:45', '2019-08-12 10:30:45', NULL, '张老师', 'H4H9RY2Z', '1995-12-16 12:22:00', '1995-12-01 12:11:00', '8/2日 05班中期测验');
INSERT INTO `tb_experiment` VALUES (15, NULL, '修改后的数据', NULL, '2019-08-21 10:16:11', '2019-08-21 14:25:52', NULL, '张老师', '5967VVTZ', '2019-12-17 03:24:00', '1995-12-18 03:24:00', '实验名称修改');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
  `time` int(11) NULL DEFAULT NULL COMMENT '时长 存入秒',
  `total_score` double(255, 0) NULL DEFAULT NULL COMMENT '得分',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次更新时间',
  `experiment_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验类型',
  `organization` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织形式：个人/班级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_experiment_record
-- ----------------------------
INSERT INTO `tb_experiment_record` VALUES (2, '张三', '浙江大学', '电商仿真实验', '分散实验', '2019-08-14 14:45:07', 6000, 99, '2019-08-14 14:45:19', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (3, '张三', '北京大学', '实验', '分散实验', '2019-08-14 15:38:52', 100, 87, '2019-08-14 15:38:52', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (4, '蒋老师', '浙工商', '分散实验', '电商仿真实验', '2019-08-21 13:11:39', NULL, NULL, '2019-08-21 13:11:39', NULL, NULL);
INSERT INTO `tb_experiment_record` VALUES (5, '蒋老师', '浙工商', '分散实验', '电商仿真实验', '2019-08-23 10:35:40', NULL, NULL, '2019-08-23 10:35:40', '分散实验', '个人');
INSERT INTO `tb_experiment_record` VALUES (6, '蒋老师', '浙工商', '分散实验', '电商仿真实验', '2019-08-23 10:36:04', NULL, NULL, '2019-08-23 10:36:04', '集中实验', '班级');
INSERT INTO `tb_experiment_record` VALUES (7, '蒋老师', '浙工商', '分散实验', '电商仿真实验', '2019-08-23 10:37:45', NULL, NULL, '2019-08-23 10:37:45', '集中实验', '班级');
INSERT INTO `tb_experiment_record` VALUES (8, '蒋老师', '浙工商', '分散实验', '电商仿真实验', '2019-08-23 13:58:40', NULL, NULL, '2019-08-23 13:58:40', '集中实验', '班级');
INSERT INTO `tb_experiment_record` VALUES (9, '蒋老师', '浙工商', '集中实验', '电商仿真实验', '2019-08-23 14:43:44', NULL, NULL, '2019-08-23 14:43:44', '集中实验', '班级');
INSERT INTO `tb_experiment_record` VALUES (10, '蒋老师', '浙工商', NULL, NULL, '2019-08-23 14:43:51', NULL, NULL, '2019-08-23 14:43:51', '分散实验', '个人');
INSERT INTO `tb_experiment_record` VALUES (11, '蒋老师', '浙工商', '集中实验', '电商仿真实验', '2019-08-23 14:46:46', NULL, NULL, '2019-08-23 14:46:46', '集中实验', '班级');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_question
-- ----------------------------
INSERT INTO `tb_question` VALUES (3, '张三', '南大', '修改后的问题213123', 1, '2019-08-14 09:46:44', '2019-08-22 19:09:00');
INSERT INTO `tb_question` VALUES (4, '李四', '清华', '实验2怎么做？', 1, '2019-08-14 09:46:57', '2019-08-14 09:46:57');
INSERT INTO `tb_question` VALUES (6, '张磊', '江南大学', '12313', 1, '2019-08-22 17:52:33', '2019-08-22 19:12:29');

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
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_report
-- ----------------------------
INSERT INTO `tb_report` VALUES (1, '浙工商', '仿真实验', '张三', '张老师', '班级', '2019-08-23 18:31:48', 98, 1, '这是实验结论', 3);
INSERT INTO `tb_report` VALUES (2, '浙工商', '仿真实验', '张三', '张老师', '班级', '2019-08-23 18:36:44', 96, 2, '这是实验结论', 3);
INSERT INTO `tb_report` VALUES (3, '浙工商', '仿真实验', '张三', '张老师', '班级', '2019-08-23 18:36:44', 96, 3, '这是实验结论', 5);

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
  `user_id` int(255) NULL DEFAULT NULL COMMENT '用户id',
  `park_browsing` double(11, 2) NULL DEFAULT NULL COMMENT '园区浏览得分',
  `smart_storage_browsing` double(11, 2) NULL DEFAULT NULL COMMENT '库区浏览得分',
  `device_awareness` double(11, 2) NULL DEFAULT NULL COMMENT '设备认知得分',
  `order_processing` double(11, 2) NULL DEFAULT NULL COMMENT '订单处理得分',
  `pick_by_order` double(11, 2) NULL DEFAULT NULL COMMENT '摘取式拣货得分',
  `pick_by_batch_order` double(11, 2) NULL DEFAULT NULL COMMENT '播种式拣货得分',
  `pick_by_disperse` double(11, 2) NULL DEFAULT NULL COMMENT '摘播式拣货得分',
  `shipping_operation` double(11, 2) NULL DEFAULT NULL COMMENT '发货作业得分',
  `sorting_operation` double(11, 2) NULL DEFAULT NULL COMMENT '分拣作业得分',
  `total_score` double(11, 2) NULL DEFAULT NULL COMMENT '总得分',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `time` int(11) NULL DEFAULT NULL COMMENT '实验时长',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_u3d_web_exp_record
-- ----------------------------
INSERT INTO `tb_u3d_web_exp_record` VALUES (4, 2, 4, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 19.00, 99.00, '2019-08-12 18:15:14', '2019-08-12 18:15:14', 100);
INSERT INTO `tb_u3d_web_exp_record` VALUES (5, 3, 4, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 19.00, 99.00, '2019-08-13 14:42:18', '2019-08-13 14:42:18', 100);
INSERT INTO `tb_u3d_web_exp_record` VALUES (6, 20, 4, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 10.00, 19.00, 99.00, '2019-08-13 15:06:58', '2019-08-13 15:06:58', 100);
INSERT INTO `tb_u3d_web_exp_record` VALUES (7, 1, 4, 1.00, 1.00, 2.00, 3.00, 12.00, 13.00, 5.00, 3.00, 5.00, 90.00, '2019-08-20 16:37:38', '2019-08-20 16:37:38', NULL);
INSERT INTO `tb_u3d_web_exp_record` VALUES (8, 10, 4, 1.00, 1.00, 2.00, 3.00, 12.00, 13.00, 5.00, 3.00, 5.00, 90.00, '2019-08-21 13:17:44', '2019-08-21 13:17:44', 100);

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
  `order_num` int(11) NULL DEFAULT NULL COMMENT '新增订单量E',
  `goods_item` int(255) NULL DEFAULT NULL COMMENT '货物品项Q',
  `goods_total_num` int(255) NULL DEFAULT NULL COMMENT '货物总量I',
  `user_summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验结论',
  `user_comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户评价',
  `star` int(11) NULL DEFAULT NULL COMMENT '用户评星',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '记录创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_u3d_web_exp_result
-- ----------------------------
INSERT INTO `tb_u3d_web_exp_result` VALUES (20, 1, 1, '拣货人员A', 1, 70, 100, 1, 1000, 60, 100, 1, 2000, 80, 100, 1, 3000, 100, 200, 300, '用户总结', '课程不错', 5, '2019-08-22 15:05:27', '2019-08-22 15:05:27');
INSERT INTO `tb_u3d_web_exp_result` VALUES (21, 1, 1, '拣货人员B', 1, 70, 100, 1, 1000, 60, 100, 1, 2000, 80, 100, 1, 3000, 100, 200, 300, '用户总结', '课程不错', 5, '2019-08-22 15:18:43', '2019-08-22 15:18:43');
INSERT INTO `tb_u3d_web_exp_result` VALUES (22, 1, 1, '拣货人员C', 1, 70, 100, 1, 1000, 60, 100, 1, 2000, 80, 100, 1, 3000, 100, 200, 300, '用户总结', '课程不错', 5, '2019-08-22 15:19:09', '2019-08-22 15:19:09');
INSERT INTO `tb_u3d_web_exp_result` VALUES (23, 1, 1, '拣货人员D', 1, 70, 100, 1, 1000, 60, 100, 1, 2000, 80, 100, 1, 3000, 100, 200, 300, '用户总结', '课程不错', 5, '2019-08-22 15:19:14', '2019-08-22 15:19:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (24, 1, 1, '拣货人员E', 1, 70, 100, 1, 1000, 60, 100, 1, 2000, 80, 100, 1, 3000, 100, 200, 300, '用户总结', '课程不错', 5, '2019-08-22 15:19:19', '2019-08-22 15:19:19');
INSERT INTO `tb_u3d_web_exp_result` VALUES (25, 1, 1, '拣货人员F', 1, 70, 100, 1, 1000, 60, 100, 1, 2000, 80, 100, 1, 3000, 100, 200, 300, '用户总结', '课程不错', 5, '2019-08-22 15:19:22', '2019-08-22 15:19:22');
INSERT INTO `tb_u3d_web_exp_result` VALUES (26, 1, 2, '拣货人员A', 2, 70, 100, 1, 1000, 60, 100, 1, 2000, 80, 100, 1, 3000, 100, 200, 300, '用户总结', '课程不错', 5, '2019-08-22 15:05:27', '2019-08-22 15:05:27');
INSERT INTO `tb_u3d_web_exp_result` VALUES (27, 1, 2, '拣货人员B', 2, 70, 100, 1, 1000, 60, 100, 1, 2000, 80, 100, 1, 3000, 100, 200, 300, '用户总结', '课程不错', 5, '2019-08-22 15:18:43', '2019-08-22 15:18:43');
INSERT INTO `tb_u3d_web_exp_result` VALUES (28, 1, 2, '拣货人员C', 2, 70, 100, 1, 1000, 60, 100, 1, 2000, 80, 100, 1, 3000, 100, 200, 300, '用户总结', '课程不错', 5, '2019-08-22 15:19:09', '2019-08-22 15:19:09');
INSERT INTO `tb_u3d_web_exp_result` VALUES (29, 1, 2, '拣货人员D', 2, 70, 100, 1, 1000, 60, 100, 1, 2000, 80, 100, 1, 3000, 100, 200, 300, '用户总结', '课程不错', 5, '2019-08-22 15:19:14', '2019-08-22 15:19:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (30, 1, 2, '拣货人员E', 2, 70, 100, 1, 1000, 60, 100, 1, 2000, 80, 100, 1, 3000, 100, 200, 300, '用户总结', '课程不错', 5, '2019-08-22 15:19:19', '2019-08-22 15:19:19');
INSERT INTO `tb_u3d_web_exp_result` VALUES (31, 1, 2, '拣货人员F', 2, 70, 100, 1, 1000, 60, 100, 1, 2000, 80, 100, 1, 3000, 100, 200, 300, '用户总结', '课程不错', 5, '2019-08-22 15:19:22', '2019-08-22 15:19:22');
INSERT INTO `tb_u3d_web_exp_result` VALUES (32, 1, 3, '拣货人员A', 3, 70, 100, 1, 1000, 60, 100, 1, 2000, 80, 100, 1, 3000, 100, 200, 300, '用户总结', '课程不错', 5, '2019-08-22 15:05:27', '2019-08-22 15:05:27');
INSERT INTO `tb_u3d_web_exp_result` VALUES (33, 1, 3, '拣货人员B', 3, 70, 100, 1, 1000, 60, 100, 1, 2000, 80, 100, 1, 3000, 100, 200, 300, '用户总结', '课程不错', 5, '2019-08-22 15:18:43', '2019-08-22 15:18:43');
INSERT INTO `tb_u3d_web_exp_result` VALUES (34, 1, 3, '拣货人员C', 3, 70, 100, 1, 1000, 60, 100, 1, 2000, 80, 100, 1, 3000, 100, 200, 300, '用户总结', '课程不错', 5, '2019-08-22 15:19:09', '2019-08-22 15:19:09');
INSERT INTO `tb_u3d_web_exp_result` VALUES (35, 1, 3, '拣货人员D', 3, 70, 100, 1, 1000, 60, 100, 1, 2000, 80, 100, 1, 3000, 100, 200, 300, '用户总结', '课程不错', 5, '2019-08-22 15:19:14', '2019-08-22 15:19:14');
INSERT INTO `tb_u3d_web_exp_result` VALUES (36, 1, 3, '拣货人员E', 3, 70, 100, 1, 1000, 60, 100, 1, 2000, 80, 100, 1, 3000, 100, 200, 300, '用户总结', '课程不错', 5, '2019-08-22 15:19:19', '2019-08-22 15:19:19');
INSERT INTO `tb_u3d_web_exp_result` VALUES (37, 1, 3, '拣货人员F', 3, 70, 100, 1, 1000, 60, 100, 1, 2000, 80, 100, 1, 3000, 100, 200, 300, '用户总结', '课程不错', 5, '2019-08-22 15:19:22', '2019-08-22 15:19:22');

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
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在地（省份+城市）',
  `test` int(255) NULL DEFAULT NULL COMMENT '成绩测试',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (8, '1', '222', '1', '11', 1, '2019-08-06 14:18:06', '2019-08-06 14:18:06', '中科院', '吉林', '盐城', '1', 50);
INSERT INTO `tb_user` VALUES (9, '11', '2221', '11', '111', 2, '2019-08-06 14:29:52', '2019-08-06 14:29:52', '中科院', '江苏', '盐城', '1', 60);
INSERT INTO `tb_user` VALUES (11, '111', '222111', '111', '11111', 2, '2019-08-06 18:25:26', '2019-08-06 18:25:26', '中科院', '江苏', '盐城', '1', 70);
INSERT INTO `tb_user` VALUES (12, '张飞', 'test', '12345', '1880617212@163.com', 2, '2019-08-07 14:40:05', '2019-08-07 14:40:05', '中科院', '山东', '盐城', '1', 80);
INSERT INTO `tb_user` VALUES (13, 'test1', 'test1', 'test1', '18806172172@163.com1', 1, '2019-08-08 15:22:18', '2019-08-08 15:22:18', '中科院', '江苏', '盐城', '1', 90);
INSERT INTO `tb_user` VALUES (14, '周杰', 'zhoujie', '123456', '172313123@qq.com', 2, '2019-08-08 16:05:02', '2019-08-08 16:05:02', '中科院', '山东', '盐城', '江苏东台', 100);
INSERT INTO `tb_user` VALUES (16, '张华', 'zhanghua', '123', '188061721722@163.com', 4, '2019-08-13 13:12:24', '2019-08-13 13:12:24', '中科院', '福建', '盐城', NULL, 55);
INSERT INTO `tb_user` VALUES (17, '张华老师', '18806172172@163.com', '0000', '18806172172@163.com', 3, '2019-08-14 14:14:15', '2019-08-14 14:14:15', '中科院', '河北', '盐城', NULL, 55);
INSERT INTO `tb_user` VALUES (18, '张华老师', '18806172172@163.com33889', '123456', '18806172172@163.com33889', 3, '2019-08-19 12:58:27', '2019-08-19 12:58:27', '中科院', '江苏1', '盐城', NULL, NULL);
INSERT INTO `tb_user` VALUES (19, '张华老师', '18806172172@163.com338890', '123456', '18806172172@163.com338890', 3, '2019-08-19 13:35:53', '2019-08-19 13:35:53', '中科院', '江苏1', '盐城', NULL, NULL);
INSERT INTO `tb_user` VALUES (20, 'zhoujie', '12345', '12345', '18806172172@163.com12', 1, '2019-08-19 13:38:24', '2019-08-19 13:38:24', '中科院', '河南', '盐城', NULL, NULL);
INSERT INTO `tb_user` VALUES (21, 'zhoujie', '123453', '12345', '18806172172@163.com123', 1, '2019-08-19 13:41:20', '2019-08-19 13:41:20', '中科院', '河北', '盐城', NULL, NULL);
INSERT INTO `tb_user` VALUES (22, 'zhoujie', '1234533', '12345', '18806172172@163.com1233', 1, '2019-08-19 13:43:56', '2019-08-19 13:43:56', '中科院', '山西', '盐城', NULL, NULL);
INSERT INTO `tb_user` VALUES (23, 'zhoujie', '12345338', '12345', '18806172172@163.com12338', 1, '2019-08-19 13:53:15', '2019-08-19 13:53:15', '中科院', '厦门', '盐城', NULL, NULL);
INSERT INTO `tb_user` VALUES (24, 'zhoujie', '1234533899', '12345', '18806172172@163.com1233899', 1, '2019-08-19 14:02:57', '2019-08-19 14:02:57', '中科院', '河北', '盐城', NULL, NULL);
INSERT INTO `tb_user` VALUES (25, 'zhoujie', '12345338993', '123', '18806172172@163.com123389933', 4, '2019-08-19 14:06:53', '2019-08-19 14:06:53', '中科院', '河北', '盐城', NULL, NULL);
INSERT INTO `tb_user` VALUES (26, 'zhoujie', '123453389932', '12345', '18806172172@163.com12338993322', 1, '2019-08-19 14:13:46', '2019-08-19 14:13:46', '中科院', '河北', '盐城', NULL, NULL);
INSERT INTO `tb_user` VALUES (27, 'zhoujie', '1234533899322', '12345', '18806172172@163.com123389933222', 1, '2019-08-19 15:58:50', '2019-08-19 15:58:50', '中科院', '河南', '盐城', NULL, NULL);
INSERT INTO `tb_user` VALUES (28, 'zhoujie', '123488', '12345', '18806172172@163.com188', 1, '2019-08-19 16:27:38', '2019-08-19 16:27:38', '中科院', '山西', '盐城', NULL, NULL);
INSERT INTO `tb_user` VALUES (29, 'zhoujie', '1234388', '12345', '18806172172@163.com1838', 1, '2019-08-19 16:33:31', '2019-08-19 16:33:31', '中科院', '安徽', '盐城', NULL, NULL);
INSERT INTO `tb_user` VALUES (30, 'zhoujie', '12342388', '12345', '18806172172@163.c3om1838', 5, '2019-08-19 16:38:01', '2019-08-19 16:38:01', '中科院', '山西', '盐城', NULL, NULL);
INSERT INTO `tb_user` VALUES (31, 'zhoujie', '123423881', '12345', '18806172172@163.c3om18382', 1, '2019-08-19 16:38:47', '2019-08-19 16:38:47', '中科院', '安徽', '盐城', NULL, NULL);
INSERT INTO `tb_user` VALUES (32, 'zhoujie', '1234283881', '12345', '18806172172@163.c3om1889382', 1, '2019-08-19 16:46:26', '2019-08-19 16:46:26', '中科院', '山东', '盐城', NULL, NULL);
INSERT INTO `tb_user` VALUES (33, 'zhoujie', '12342823881', '12345', '18806172172@163.c3om31889382', 1, '2019-08-19 16:55:32', '2019-08-19 16:55:32', '中科院', '吉林', '盐城', NULL, NULL);
INSERT INTO `tb_user` VALUES (34, 'zhoujie', '123422823881', '12345', '188061272172@163.c3om31889382', 1, '2019-08-19 17:16:51', '2019-08-19 17:16:51', '中科院', '陕西', '盐城', NULL, NULL);
INSERT INTO `tb_user` VALUES (35, '888', '22', '123', '123', 1, '2019-08-19 17:24:42', '2019-08-19 17:24:42', '123', '江苏', '盐城', '23', NULL);
INSERT INTO `tb_user` VALUES (37, '测试', '885', '123', '123@123.com', 1, '2019-08-27 15:07:59', '2019-08-27 15:07:59', '123', '安徽', '淮南', NULL, NULL);

-- ----------------------------
-- Table structure for tb_website
-- ----------------------------
DROP TABLE IF EXISTS `tb_website`;
CREATE TABLE `tb_website`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '网站访问id',
  `count` int(11) NULL DEFAULT 0 COMMENT '统计次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_website
-- ----------------------------
INSERT INTO `tb_website` VALUES (1, 33);

SET FOREIGN_KEY_CHECKS = 1;
