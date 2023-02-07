-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.17-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 wx_blog 的数据库结构
CREATE DATABASE IF NOT EXISTS `wx_blog` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `wx_blog`;


-- 导出  表 wx_blog.wx_article 结构
CREATE TABLE IF NOT EXISTS `wx_article` (
  `id` bigint(200) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) DEFAULT NULL COMMENT '标题',
  `content` longtext COMMENT '文章内容',
  `summary` varchar(1024) DEFAULT NULL COMMENT '文章摘要',
  `category_id` bigint(20) DEFAULT NULL COMMENT '所属分类id',
  `thumbnail` varchar(1024) DEFAULT NULL COMMENT '缩略图',
  `is_top` char(1) DEFAULT '0' COMMENT '是否置顶（0否，1是）',
  `status` char(1) DEFAULT '1' COMMENT '状态（0已发布，1草稿）',
  `view_count` bigint(200) DEFAULT '0' COMMENT '访问量',
  `is_comment` char(1) DEFAULT '1' COMMENT '是否允许评论 1是，0否',
  `create_by` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='文章表';

-- 正在导出表  wx_blog.wx_article 的数据：~13 rows (大约)
DELETE FROM `wx_article`;
/*!40000 ALTER TABLE `wx_article` DISABLE KEYS */;
INSERT INTO `wx_article` (`id`, `title`, `content`, `summary`, `category_id`, `thumbnail`, `is_top`, `status`, `view_count`, `is_comment`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES
	(1, 'Java从起飞到删库跑路', '# Java介绍\r\n\r\nJava是一门面向对象的编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、指针等概念，因此Java语言具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程 \r\n\r\nJava具有简单性、面向对象、分布式、健壮性、安全性、平台独立与可移植性、多线程、动态性等特点，Java可以编写桌面应用程序、Web应用程序、分布式系统和嵌入式系统应用程序等 ', '讲解java的真谛', 1, 'https://img0.baidu.com/it/u=4028970719,2237241639&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=288', '1', '0', 105, '0', NULL, '2022-04-25 23:20:11', NULL, NULL, 0),
	(2, 'weq', 'adadaeqe', 'adad', 2, '', '1', '0', 22, '0', NULL, '2022-04-25 14:58:30', NULL, NULL, 1),
	(3, 'dad', 'asdasda', 'sadad', 1, '', '1', '0', 33, '0', NULL, '2022-04-25 14:58:34', NULL, NULL, 1),
	(5, '青年大学习', '# 大学习发起目的\r\n\r\n共青团中央紧密围绕用习近平新时代中国特色社会主义思想武装全团、教育青年, 把深入学习宣传贯彻党的十九大精神作为首要政治任务和核心业务, 在全团部署实施“ 青年大学习”行动, 突出理论武装和思想引导, 通过构建“ 导学、讲学、研学、比学、践学、督学“六位一体的学习体系, 着力提升学习的制度化和实效性, 推动党的创新理论深入人心, 引导广大青年“不忘初心、牢记使命”, 切实增强“四个意识”、树立“四个自信”, 坚定不移听党话、跟党走', '我爱青年大学习', 2, 'https://img2.baidu.com/it/u=2097088856,2418980049&fm=253&fmt=auto&app=120&f=JPEG?w=720&h=426', '1', '0', 104, '0', NULL, '2022-04-25 14:58:37', NULL, NULL, 0),
	(6, 'javaee', NULL, '讲解java的真谛', 1, NULL, '0', '0', 33, '1', NULL, '2022-04-29 15:50:38', NULL, NULL, 0),
	(9, 'javase', NULL, '讲解框架的真谛', 1, NULL, '0', '0', 22, '1', NULL, '2022-04-29 15:55:14', NULL, NULL, 0),
	(10, 'spring', NULL, '讲解spring的真谛', 1, NULL, '0', '0', 12, '1', NULL, '2022-04-29 15:55:51', NULL, NULL, 0),
	(11, 'mybatis', NULL, '讲解mybatis的真谛', 1, NULL, '0', '0', 11, '1', NULL, '2022-04-29 15:56:27', NULL, NULL, 0),
	(12, 'springboot', NULL, '讲解springboot的真谛', 1, NULL, '0', '0', 10, '1', NULL, '2022-04-29 15:56:56', NULL, NULL, 0),
	(13, 'mybatis-plus', NULL, '讲解mybatis-plus的真谛', 1, NULL, '0', '0', 9, '1', NULL, '2022-04-29 15:57:53', NULL, NULL, 0),
	(14, 'springmvc', NULL, '讲解springmvc的真谛', 1, NULL, '0', '0', 8, '1', NULL, '2022-04-29 15:58:01', NULL, NULL, 0),
	(15, 'springsecurity', NULL, '讲解springsecurity的真谛', 1, NULL, '0', '0', 7, '1', NULL, '2022-04-29 15:59:42', NULL, NULL, 0),
	(16, '第十一个', NULL, '啊这', 1, NULL, '0', '0', 6, '1', NULL, '2022-04-29 16:00:00', NULL, NULL, 0);
/*!40000 ALTER TABLE `wx_article` ENABLE KEYS */;


-- 导出  表 wx_blog.wx_category 结构
CREATE TABLE IF NOT EXISTS `wx_category` (
  `id` bigint(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL COMMENT '分类名',
  `pid` bigint(200) DEFAULT '-1' COMMENT '父分类id，如果没有父分类为-1',
  `description` varchar(512) DEFAULT NULL COMMENT '描述',
  `status` char(1) DEFAULT '0' COMMENT '状态0:正常,1禁用',
  `create_by` bigint(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint(200) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='分类表';

-- 正在导出表  wx_blog.wx_category 的数据：~2 rows (大约)
DELETE FROM `wx_category`;
/*!40000 ALTER TABLE `wx_category` DISABLE KEYS */;
INSERT INTO `wx_category` (`id`, `name`, `pid`, `description`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES
	(1, 'java', -1, 'wsd', '0', NULL, NULL, NULL, NULL, 0),
	(2, '大学习', -1, 'wsd', '0', NULL, NULL, NULL, NULL, 0);
/*!40000 ALTER TABLE `wx_category` ENABLE KEYS */;


-- 导出  表 wx_blog.wx_comment 结构
CREATE TABLE IF NOT EXISTS `wx_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` char(1) DEFAULT '0' COMMENT '评论类型（0代表文章评论，1代表友链评论）',
  `article_id` bigint(20) DEFAULT NULL COMMENT '文章id',
  `root_id` bigint(20) DEFAULT '-1' COMMENT '根评论id',
  `content` varchar(512) DEFAULT NULL COMMENT '评论内容',
  `to_comment_user_id` bigint(20) DEFAULT '-1' COMMENT '所回复的目标评论的userid',
  `to_comment_id` bigint(20) DEFAULT '-1' COMMENT '回复目标评论id',
  `create_by` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COMMENT='评论表';

-- 正在导出表  wx_blog.wx_comment 的数据：~29 rows (大约)
DELETE FROM `wx_comment`;
/*!40000 ALTER TABLE `wx_comment` DISABLE KEYS */;
INSERT INTO `wx_comment` (`id`, `type`, `article_id`, `root_id`, `content`, `to_comment_user_id`, `to_comment_id`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES
	(1, '0', 1, -1, 'asS', -1, -1, 1, '2022-04-29 07:59:22', 1, '2022-04-29 07:59:22', 0),
	(2, '0', 1, -1, '[哈哈]SDAS', -1, -1, 1, '2022-04-29 08:01:24', 1, '2022-04-29 08:01:24', 0),
	(48, '0', 1, -1, '啊啊啊啊啊', -1, -1, 1, '2022-04-28 23:39:13', 1, '2022-04-28 23:39:13', 0),
	(50, '0', 1, -1, 'aaaa', -1, -1, 1, '2022-04-29 12:36:18', 1, '2022-04-29 12:36:18', 0),
	(52, '0', 5, -1, '啊啊啊啊', -1, -1, 1, '2022-04-29 13:39:40', 1, '2022-04-29 13:39:40', 0),
	(53, '0', 1, -1, '你以为？', -1, -1, 1, '2022-04-29 15:40:55', 1, '2022-04-29 15:40:55', 0),
	(54, '0', 1, -1, '大胆', -1, -1, 1, '2022-04-29 15:41:03', 1, '2022-04-29 15:41:03', 0),
	(55, '0', 1, -1, '我爱学习', -1, -1, 1, '2022-04-29 15:41:10', 1, '2022-04-29 15:41:10', 0),
	(56, '0', 1, -1, '加油', -1, -1, 1, '2022-04-29 15:41:22', 1, '2022-04-29 15:41:22', 0),
	(57, '0', 1, -1, 'yyds', -1, -1, 1, '2022-04-29 15:41:50', 1, '2022-04-29 15:41:50', 0),
	(58, '0', 1, -1, '啊啊啊啊啊啊', -1, -1, 1, '2022-04-29 15:41:56', 1, '2022-04-29 15:41:56', 0),
	(59, '0', 1, -1, '冲冲冲', -1, -1, 1, '2022-04-29 15:42:05', 1, '2022-04-29 15:42:05', 0),
	(60, '0', 1, -1, '啦啦啦啦', -1, -1, 1, '2022-04-29 15:42:16', 1, '2022-04-29 15:42:16', 0),
	(61, '0', 5, -1, '你以为', -1, -1, 1, '2022-04-29 15:42:35', 1, '2022-04-29 15:42:35', 0),
	(62, '0', 1, -1, '奥奥', -1, -1, 1, '2022-04-29 15:48:25', 1, '2022-04-29 15:48:25', 0),
	(63, '0', 7, -1, '啊啊啊', -1, -1, 1, '2022-04-29 15:48:39', 1, '2022-04-29 15:48:39', 0),
	(64, '0', 6, -1, '啊啊啊', -1, -1, 1, '2022-04-29 15:51:12', 1, '2022-04-29 15:51:12', 0),
	(65, '0', 1, -1, '去去去', -1, -1, 1, '2022-04-29 15:51:19', 1, '2022-04-29 15:51:19', 0),
	(66, '0', 1, -1, 'aaAA', -1, -1, 1, '2022-04-29 16:40:25', 1, '2022-04-29 16:40:25', 0),
	(69, '1', 1, -1, '友链评论测试', -1, -1, 1, '2022-04-29 23:18:45', 1, '2022-04-29 23:18:45', 0),
	(71, '1', 1, -1, '测试', -1, -1, 1, '2022-05-06 16:19:37', 1, '2022-05-06 16:19:37', 0),
	(77, '0', 1, -1, '1', -1, -1, 1, '2022-05-08 14:03:14', 1, '2022-05-08 14:03:14', 0),
	(78, '0', 1, -1, '2', -1, -1, 1, '2022-05-08 14:05:20', 1, '2022-05-08 14:05:20', 0),
	(79, '0', 1, -1, '3', -1, -1, 1, '2022-05-08 14:07:17', 1, '2022-05-08 14:07:17', 0),
	(80, '0', 1, -1, '4', -1, -1, 1, '2022-05-08 14:08:45', 1, '2022-05-08 14:08:45', 0),
	(81, '0', 1, 1, 'asS1', 1, 1, 1, '2022-05-10 16:21:55', 1, '2022-05-10 16:21:55', 0),
	(82, '0', 1, 2, 'SDAS1', 1, 2, 1, '2022-05-10 16:22:28', 1, '2022-05-10 16:22:28', 0),
	(83, '0', 1, -1, '评论了文章', -1, -1, 1, '2022-05-10 17:10:12', 1, '2022-05-10 17:10:12', 0),
	(84, '0', 5, -1, '3', -1, -1, 1, '2022-05-10 17:18:40', 1, '2022-05-10 17:18:40', 0);
/*!40000 ALTER TABLE `wx_comment` ENABLE KEYS */;


-- 导出  表 wx_blog.wx_link 结构
CREATE TABLE IF NOT EXISTS `wx_link` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `logo` varchar(1024) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL COMMENT '网站地址',
  `status` char(1) DEFAULT '2' COMMENT '审核状态 (0代表审核通过，1代表审核未通过，2代表未审核)',
  `create_by` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='友链';

-- 正在导出表  wx_blog.wx_link 的数据：~3 rows (大约)
DELETE FROM `wx_link`;
/*!40000 ALTER TABLE `wx_link` DISABLE KEYS */;
INSERT INTO `wx_link` (`id`, `name`, `logo`, `description`, `address`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES
	(1, '百度', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fn1.itc.cn%2Fimg8%2Fwb%2Frecom%2F2016%2F05%2F10%2F146286696706220328.PNG&refer=http%3A%2F%2Fn1.itc.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1646205529&t=f942665181eb9b0685db7a6f59d59975', '不懂就问度娘！', 'https://www.baidu.com', '0', NULL, '2022-01-13 08:25:47', NULL, '2022-01-13 08:36:14', 0),
	(2, '腾讯网', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.investorscn.com%2Fwp-content%2Fuploads%2F2017%2F02%2F20140211151148-154858037.png&refer=http%3A%2F%2Fwww.investorscn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653804576&t=59e263d5143a6de09b4392af9b58dcfd', '蒸的c', 'https://www.qq.com', '0', NULL, '2022-01-13 09:06:10', NULL, '2022-01-13 09:07:09', 0),
	(3, 'sa', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fn1.itc.cn%2Fimg8%2Fwb%2Frecom%2F2016%2F05%2F10%2F146286696706220328.PNG&refer=http%3A%2F%2Fn1.itc.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1646205529&t=f942665181eb9b0685db7a6f59d59975', 'da', 'https://www.taobao.com', '1', NULL, '2022-01-13 09:23:01', NULL, '2022-01-13 09:23:01', 0);
/*!40000 ALTER TABLE `wx_link` ENABLE KEYS */;


-- 导出  表 wx_blog.wx_user 结构
CREATE TABLE IF NOT EXISTS `wx_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(64) NOT NULL DEFAULT 'NULL' COMMENT '用户名',
  `nick_name` varchar(64) NOT NULL DEFAULT 'NULL' COMMENT '昵称',
  `password` varchar(64) NOT NULL DEFAULT 'NULL' COMMENT '密码',
  `type` char(1) DEFAULT '0' COMMENT '用户类型：0代表普通用户，1代表管理员',
  `status` char(1) DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `phonenumber` varchar(32) DEFAULT NULL COMMENT '手机号',
  `sex` char(1) DEFAULT NULL COMMENT '用户性别（0男，1女，2未知）',
  `avatar` varchar(128) DEFAULT NULL COMMENT '头像',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人的用户id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14787164048665 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- 正在导出表  wx_blog.wx_user 的数据：~3 rows (大约)
DELETE FROM `wx_user`;
/*!40000 ALTER TABLE `wx_user` DISABLE KEYS */;
INSERT INTO `wx_user` (`id`, `user_name`, `nick_name`, `password`, `type`, `status`, `email`, `phonenumber`, `sex`, `avatar`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`) VALUES
	(1, 'wx', '一个即将在哈理工放飞梦想的有志青年', '$2a$10$Jnq31rRkNV3RNzXe0REsEOSKaYK8UgVZZqlNlNXqn.JeVcj2NdeZy', '1', '0', '123456@qq.com', '18888888888', '0', 'http://rb58o9aq2.hd-bkt.clouddn.com/2022/04/30/ee18c0d41763420c9b2e5cb69883ef38.png', NULL, '2022-04-25 09:01:56', 1, '2022-04-25 15:37:03', 0),
	(14787164048663, 'wx1', '继续放飞梦想', '$2a$10$/ndSBwj./irwFCoaFvX/NOu/4EAmrIR18kyjJJAdeznwyWbq71a4y', '0', '0', '45667@qq.com', NULL, NULL, NULL, NULL, '2022-04-30 21:40:01', NULL, '2022-04-30 21:40:03', 0),
	(14787164048664, 'wx2', '测试', '$2a$10$eZvH0MUhyqB2xD/cCSvklOMaxnYdKgxwC5F9Vt3R8j6mevjL1fEh2', '0', '0', '12334@qq.com', NULL, NULL, NULL, NULL, '2022-05-08 13:50:31', NULL, '2022-05-08 13:50:32', 0);
/*!40000 ALTER TABLE `wx_user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
