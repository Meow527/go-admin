/*
 Navicat Premium Data Transfer

 Source Server         : mysql_master
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : 127.0.0.1:13306
 Source Schema         : dbname

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 02/08/2023 09:56:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_api
-- ----------------------------
DROP TABLE IF EXISTS `sys_api`;
CREATE TABLE `sys_api` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `handle` varchar(128) DEFAULT NULL COMMENT 'handle',
  `title` varchar(128) DEFAULT NULL COMMENT '标题',
  `path` varchar(128) DEFAULT NULL COMMENT '地址',
  `type` varchar(16) DEFAULT NULL COMMENT '接口类型',
  `action` varchar(16) DEFAULT NULL COMMENT '请求类型',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`),
  KEY `idx_sys_api_deleted_at` (`deleted_at`),
  KEY `idx_sys_api_create_by` (`create_by`),
  KEY `idx_sys_api_update_by` (`update_by`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_api
-- ----------------------------
BEGIN;
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (5, 'go-admin/app/admin/apis.SysLoginLog.Get-fm', '登录日志通过id获取', '/api/v1/sys-login-log/:id', 'BUS', 'GET', '2021-05-13 19:59:00.728', '2021-06-17 11:37:12.331', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (6, 'go-admin/app/admin/apis.SysOperaLog.GetPage-fm', '操作日志列表', '/api/v1/sys-opera-log', 'BUS', 'GET', '2021-05-13 19:59:00.778', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (7, 'go-admin/app/admin/apis.SysOperaLog.Get-fm', '操作日志通过id获取', '/api/v1/sys-opera-log/:id', 'BUS', 'GET', '2021-05-13 19:59:00.821', '2021-06-16 21:49:48.598', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (8, 'go-admin/common/actions.IndexAction.func1', '分类列表', '/api/v1/syscategory', 'BUS', 'GET', '2021-05-13 19:59:00.870', '2021-06-13 20:53:47.883', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (9, 'go-admin/common/actions.ViewAction.func1', '分类通过id获取', '/api/v1/syscategory/:id', 'BUS', 'GET', '2021-05-13 19:59:00.945', '2021-06-13 20:53:47.926', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (10, 'go-admin/common/actions.IndexAction.func1', '内容列表', '/api/v1/syscontent', 'BUS', 'GET', '2021-05-13 19:59:01.005', '2021-06-13 20:53:47.966', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (11, 'go-admin/common/actions.ViewAction.func1', '内容通过id获取', '/api/v1/syscontent/:id', 'BUS', 'GET', '2021-05-13 19:59:01.056', '2021-06-13 20:53:48.005', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (15, 'go-admin/common/actions.IndexAction.func1', 'job列表', '/api/v1/sysjob', 'BUS', 'GET', '2021-05-13 19:59:01.248', '2021-06-13 20:53:48.169', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (16, 'go-admin/common/actions.ViewAction.func1', 'job通过id获取', '/api/v1/sysjob/:id', 'BUS', 'GET', '2021-05-13 19:59:01.298', '2021-06-13 20:53:48.214', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (21, 'go-admin/app/admin/apis.SysDictType.GetPage-fm', '字典类型列表', '/api/v1/dict/type', 'BUS', 'GET', '2021-05-13 19:59:01.525', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (22, 'go-admin/app/admin/apis.SysDictType.GetAll-fm', '字典类型查询【代码生成】', '/api/v1/dict/type-option-select', 'SYS', 'GET', '2021-05-13 19:59:01.582', '2021-06-13 20:53:48.388', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (23, 'go-admin/app/admin/apis.SysDictType.Get-fm', '字典类型通过id获取', '/api/v1/dict/type/:id', 'BUS', 'GET', '2021-05-13 19:59:01.632', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (24, 'go-admin/app/admin/apis.SysDictData.GetPage-fm', '字典数据列表', '/api/v1/dict/data', 'BUS', 'GET', '2021-05-13 19:59:01.684', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (25, 'go-admin/app/admin/apis.SysDictData.Get-fm', '字典数据通过code获取', '/api/v1/dict/data/:dictCode', 'BUS', 'GET', '2021-05-13 19:59:01.732', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (26, 'go-admin/app/admin/apis.SysDictData.GetSysDictDataAll-fm', '数据字典根据key获取', '/api/v1/dict-data/option-select', 'SYS', 'GET', '2021-05-13 19:59:01.832', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (27, 'go-admin/app/admin/apis.SysDept.GetPage-fm', '部门列表', '/api/v1/dept', 'BUS', 'GET', '2021-05-13 19:59:01.940', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (28, 'go-admin/app/admin/apis.SysDept.Get-fm', '部门通过id获取', '/api/v1/dept/:id', 'BUS', 'GET', '2021-05-13 19:59:02.009', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (29, 'go-admin/app/admin/apis.SysDept.Get2Tree-fm', '查询部门下拉树【角色权限-自定权限】', '/api/v1/deptTree', 'SYS', 'GET', '2021-05-13 19:59:02.050', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (30, 'go-admin/app/admin/apis/tools.(*Gen).GetDBTableList-fm', '数据库表列表', '/api/v1/db/tables/page', 'SYS', 'GET', '2021-05-13 19:59:02.098', '2021-06-13 20:53:48.730', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (31, 'go-admin/app/admin/apis/tools.(*Gen).GetDBColumnList-fm', '数据表列列表', '/api/v1/db/columns/page', 'SYS', 'GET', '2021-05-13 19:59:02.140', '2021-06-13 20:53:48.771', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (32, 'go-admin/app/admin/apis/tools.Gen.GenCode-fm', '数据库表生成到项目', '/api/v1/gen/toproject/:tableId', 'SYS', 'GET', '2021-05-13 19:59:02.183', '2021-06-13 20:53:48.812', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (33, 'go-admin/app/admin/apis/tools.Gen.GenMenuAndApi-fm', '数据库表生成到DB', '/api/v1/gen/todb/:tableId', 'SYS', 'GET', '2021-05-13 19:59:02.227', '2021-06-13 20:53:48.853', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (34, 'go-admin/app/admin/apis/tools.(*SysTable).GetSysTablesTree-fm', '关系表数据【代码生成】', '/api/v1/gen/tabletree', 'SYS', 'GET', '2021-05-13 19:59:02.271', '2021-06-13 20:53:48.893', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (35, 'go-admin/app/admin/apis/tools.Gen.Preview-fm', '生成预览通过id获取', '/api/v1/gen/preview/:tableId', 'SYS', 'GET', '2021-05-13 19:59:02.315', '2021-06-13 20:53:48.935', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (36, 'go-admin/app/admin/apis/tools.Gen.GenApiToFile-fm', '生成api带文件', '/api/v1/gen/apitofile/:tableId', 'SYS', 'GET', '2021-05-13 19:59:02.357', '2021-06-13 20:53:48.977', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (37, 'go-admin/app/admin/apis.System.GenerateCaptchaHandler-fm', '验证码获取', '/api/v1/getCaptcha', 'SYS', 'GET', '2021-05-13 19:59:02.405', '2021-06-13 20:53:49.020', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (38, 'go-admin/app/admin/apis.SysUser.GetInfo-fm', '用户信息获取', '/api/v1/getinfo', 'SYS', 'GET', '2021-05-13 19:59:02.447', '2021-06-13 20:53:49.065', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (39, 'go-admin/app/admin/apis.SysMenu.GetPage-fm', '菜单列表', '/api/v1/menu', 'BUS', 'GET', '2021-05-13 19:59:02.497', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (40, 'go-admin/app/admin/apis.SysMenu.GetMenuTreeSelect-fm', '查询菜单下拉树结构【废弃】', '/api/v1/menuTreeselect', 'SYS', 'GET', '2021-05-13 19:59:02.542', '2021-06-03 22:37:21.857', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (41, 'go-admin/app/admin/apis.SysMenu.Get-fm', '菜单通过id获取', '/api/v1/menu/:id', 'BUS', 'GET', '2021-05-13 19:59:02.584', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (42, 'go-admin/app/admin/apis.SysMenu.GetMenuRole-fm', '角色菜单【顶部左侧菜单】', '/api/v1/menurole', 'SYS', 'GET', '2021-05-13 19:59:02.630', '2021-06-13 20:53:49.574', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (43, 'go-admin/app/admin/apis.SysMenu.GetMenuIDS-fm', '获取角色对应的菜单id数组【废弃】', '/api/v1/menuids', 'SYS', 'GET', '2021-05-13 19:59:02.675', '2021-06-03 22:39:52.500', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (44, 'go-admin/app/admin/apis.SysRole.GetPage-fm', '角色列表', '/api/v1/role', 'BUS', 'GET', '2021-05-13 19:59:02.720', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (45, 'go-admin/app/admin/apis.SysMenu.GetMenuTreeSelect-fm', '菜单权限列表【角色配菜单使用】', '/api/v1/roleMenuTreeselect/:roleId', 'SYS', 'GET', '2021-05-13 19:59:02.762', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (46, 'go-admin/app/admin/apis.SysDept.GetDeptTreeRoleSelect-fm', '角色部门结构树【自定义数据权限】', '/api/v1/roleDeptTreeselect/:roleId', 'SYS', 'GET', '2021-05-13 19:59:02.809', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (47, 'go-admin/app/admin/apis.SysRole.Get-fm', '角色通过id获取', '/api/v1/role/:id', 'BUS', 'GET', '2021-05-13 19:59:02.850', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (48, 'github.com/go-admin-team/go-admin-core/sdk/pkg/jwtauth.(*GinJWTMiddleware).RefreshHandler-fm', '刷新token', '/api/v1/refresh_token', 'SYS', 'GET', '2021-05-13 19:59:02.892', '2021-06-13 20:53:49.278', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (53, 'go-admin/app/admin/apis.SysConfig.GetPage-fm', '参数列表', '/api/v1/config', 'BUS', 'GET', '2021-05-13 19:59:03.116', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (54, 'go-admin/app/admin/apis.SysConfig.Get-fm', '参数通过id获取', '/api/v1/config/:id', 'BUS', 'GET', '2021-05-13 19:59:03.157', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (55, 'go-admin/app/admin/apis.SysConfig.GetSysConfigByKEYForService-fm', '参数通过键名搜索【基础默认配置】', '/api/v1/configKey/:configKey', 'SYS', 'GET', '2021-05-13 19:59:03.198', '2021-06-13 20:53:49.745', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (57, 'go-admin/app/jobs/apis.SysJob.RemoveJobForService-fm', 'job移除', '/api/v1/job/remove/:id', 'BUS', 'GET', '2021-05-13 19:59:03.295', '2021-06-13 20:53:49.786', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (58, 'go-admin/app/jobs/apis.SysJob.StartJobForService-fm', 'job启动', '/api/v1/job/start/:id', 'BUS', 'GET', '2021-05-13 19:59:03.339', '2021-06-13 20:53:49.829', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (59, 'go-admin/app/admin/apis.SysPost.GetPage-fm', '岗位列表', '/api/v1/post', 'BUS', 'GET', '2021-05-13 19:59:03.381', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (60, 'go-admin/app/admin/apis.SysPost.Get-fm', '岗位通过id获取', '/api/v1/post/:id', 'BUS', 'GET', '2021-05-13 19:59:03.433', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (62, 'go-admin/app/admin/apis.SysConfig.GetSysConfigBySysApp-fm', '系统前端参数', '/api/v1/app-config', 'SYS', 'GET', '2021-05-13 19:59:03.526', '2021-06-13 20:53:49.994', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (63, 'go-admin/app/admin/apis.SysUser.GetProfile-fm', '*用户信息获取', '/api/v1/user/profile', 'SYS', 'GET', '2021-05-13 19:59:03.567', '2021-06-13 20:53:50.038', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (66, 'github.com/go-admin-team/go-admin-core/sdk/pkg/ws.(*Manager).WsClient-fm', '链接ws【定时任务log】', '/ws/:id/:channel', 'BUS', 'GET', '2021-05-13 19:59:03.705', '2021-06-13 20:53:50.167', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (67, 'github.com/go-admin-team/go-admin-core/sdk/pkg/ws.(*Manager).UnWsClient-fm', '退出ws【定时任务log】', '/wslogout/:id/:channel', 'BUS', 'GET', '2021-05-13 19:59:03.756', '2021-06-13 20:53:50.209', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (68, 'go-admin/common/middleware/handler.Ping', '*用户基本信息', '/info', 'SYS', 'GET', '2021-05-13 19:59:03.800', '2021-06-13 20:53:50.251', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (72, 'go-admin/common/actions.CreateAction.func1', '分类创建', '/api/v1/syscategory', 'BUS', 'POST', '2021-05-13 19:59:03.982', '2021-06-13 20:53:50.336', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (73, 'go-admin/common/actions.CreateAction.func1', '内容创建', '/api/v1/syscontent', 'BUS', 'POST', '2021-05-13 19:59:04.027', '2021-06-13 20:53:50.375', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (76, 'go-admin/common/actions.CreateAction.func1', 'job创建', '/api/v1/sysjob', 'BUS', 'POST', '2021-05-13 19:59:04.164', '2021-06-13 20:53:50.500', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (80, 'go-admin/app/admin/apis.SysDictData.Insert-fm', '字典数据创建', '/api/v1/dict/data', 'BUS', 'POST', '2021-05-13 19:59:04.347', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (81, 'go-admin/app/admin/apis.SysDictType.Insert-fm', '字典类型创建', '/api/v1/dict/type', 'BUS', 'POST', '2021-05-13 19:59:04.391', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (82, 'go-admin/app/admin/apis.SysDept.Insert-fm', '部门创建', '/api/v1/dept', 'BUS', 'POST', '2021-05-13 19:59:04.435', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (85, 'github.com/go-admin-team/go-admin-core/sdk/pkg/jwtauth.(*GinJWTMiddleware).LoginHandler-fm', '*登录', '/api/v1/login', 'SYS', 'POST', '2021-05-13 19:59:04.597', '2021-06-13 20:53:50.784', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (86, 'go-admin/common/middleware/handler.LogOut', '*退出', '/api/v1/logout', 'SYS', 'POST', '2021-05-13 19:59:04.642', '2021-06-13 20:53:50.824', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (87, 'go-admin/app/admin/apis.SysConfig.Insert-fm', '参数创建', '/api/v1/config', 'BUS', 'POST', '2021-05-13 19:59:04.685', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (88, 'go-admin/app/admin/apis.SysMenu.Insert-fm', '菜单创建', '/api/v1/menu', 'BUS', 'POST', '2021-05-13 19:59:04.777', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (89, 'go-admin/app/admin/apis.SysPost.Insert-fm', '岗位创建', '/api/v1/post', 'BUS', 'POST', '2021-05-13 19:59:04.886', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (90, 'go-admin/app/admin/apis.SysRole.Insert-fm', '角色创建', '/api/v1/role', 'BUS', 'POST', '2021-05-13 19:59:04.975', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (91, 'go-admin/app/admin/apis.SysUser.InsetAvatar-fm', '*用户头像编辑', '/api/v1/user/avatar', 'SYS', 'POST', '2021-05-13 19:59:05.058', '2021-06-13 20:53:51.079', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (92, 'go-admin/app/admin/apis.SysApi.Update-fm', '接口编辑', '/api/v1/sys-api/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.122', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (95, 'go-admin/common/actions.UpdateAction.func1', '分类编辑', '/api/v1/syscategory/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.255', '2021-06-13 20:53:51.247', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (96, 'go-admin/common/actions.UpdateAction.func1', '内容编辑', '/api/v1/syscontent/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.299', '2021-06-13 20:53:51.289', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (97, 'go-admin/common/actions.UpdateAction.func1', 'job编辑', '/api/v1/sysjob', 'BUS', 'PUT', '2021-05-13 19:59:05.343', '2021-06-13 20:53:51.331', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (101, 'go-admin/app/admin/apis.SysDictData.Update-fm', '字典数据编辑', '/api/v1/dict/data/:dictCode', 'BUS', 'PUT', '2021-05-13 19:59:05.519', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (102, 'go-admin/app/admin/apis.SysDictType.Update-fm', '字典类型编辑', '/api/v1/dict/type/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.569', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (103, 'go-admin/app/admin/apis.SysDept.Update-fm', '部门编辑', '/api/v1/dept/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.613', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (104, 'go-admin/app/other/apis.SysFileDir.Update-fm', '文件夹编辑', '/api/v1/file-dir/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.662', '2021-06-13 20:53:51.847', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (105, 'go-admin/app/other/apis.SysFileInfo.Update-fm', '文件编辑', '/api/v1/file-info/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.709', '2021-06-13 20:53:51.892', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (106, 'go-admin/app/admin/apis.SysRole.Update-fm', '角色编辑', '/api/v1/role/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.752', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (107, 'go-admin/app/admin/apis.SysRole.Update2DataScope-fm', '角色数据权限修改', '/api/v1/roledatascope', 'BUS', 'PUT', '2021-05-13 19:59:05.803', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (108, 'go-admin/app/admin/apis.SysConfig.Update-fm', '参数编辑', '/api/v1/config/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.848', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (109, 'go-admin/app/admin/apis.SysMenu.Update-fm', '编辑菜单', '/api/v1/menu/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.891', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (110, 'go-admin/app/admin/apis.SysPost.Update-fm', '岗位编辑', '/api/v1/post/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.934', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (111, 'go-admin/app/admin/apis.SysUser.UpdatePwd-fm', '*用户修改密码', '/api/v1/user/pwd', 'SYS', 'PUT', '2021-05-13 19:59:05.987', '2021-06-13 20:53:51.724', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (112, 'go-admin/common/actions.DeleteAction.func1', '分类删除', '/api/v1/syscategory', 'BUS', 'DELETE', '2021-05-13 19:59:06.030', '2021-06-13 20:53:52.237', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (113, 'go-admin/common/actions.DeleteAction.func1', '内容删除', '/api/v1/syscontent', 'BUS', 'DELETE', '2021-05-13 19:59:06.076', '2021-06-13 20:53:52.278', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (114, 'go-admin/app/admin/apis.SysLoginLog.Delete-fm', '登录日志删除', '/api/v1/sys-login-log', 'BUS', 'DELETE', '2021-05-13 19:59:06.118', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (115, 'go-admin/app/admin/apis.SysOperaLog.Delete-fm', '操作日志删除', '/api/v1/sys-opera-log', 'BUS', 'DELETE', '2021-05-13 19:59:06.162', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (116, 'go-admin/common/actions.DeleteAction.func1', 'job删除', '/api/v1/sysjob', 'BUS', 'DELETE', '2021-05-13 19:59:06.206', '2021-06-13 20:53:52.323', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (117, 'go-admin/app/other/apis.SysChinaAreaData.Delete-fm', '行政区删除', '/api/v1/sys-area-data', 'BUS', 'DELETE', '2021-05-13 19:59:06.249', '2021-06-13 20:53:52.061', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (120, 'go-admin/app/admin/apis.SysDictData.Delete-fm', '字典数据删除', '/api/v1/dict/data', 'BUS', 'DELETE', '2021-05-13 19:59:06.387', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (121, 'go-admin/app/admin/apis.SysDictType.Delete-fm', '字典类型删除', '/api/v1/dict/type', 'BUS', 'DELETE', '2021-05-13 19:59:06.432', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (122, 'go-admin/app/admin/apis.SysDept.Delete-fm', '部门删除', '/api/v1/dept/:id', 'BUS', 'DELETE', '2021-05-13 19:59:06.475', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (123, 'go-admin/app/other/apis.SysFileDir.Delete-fm', '文件夹删除', '/api/v1/file-dir/:id', 'BUS', 'DELETE', '2021-05-13 19:59:06.520', '2021-06-13 20:53:52.539', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (124, 'go-admin/app/other/apis.SysFileInfo.Delete-fm', '文件删除', '/api/v1/file-info/:id', 'BUS', 'DELETE', '2021-05-13 19:59:06.566', '2021-06-13 20:53:52.580', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (125, 'go-admin/app/admin/apis.SysConfig.Delete-fm', '参数删除', '/api/v1/config', 'BUS', 'DELETE', '2021-05-13 19:59:06.612', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (126, 'go-admin/app/admin/apis.SysMenu.Delete-fm', '删除菜单', '/api/v1/menu', 'BUS', 'DELETE', '2021-05-13 19:59:06.654', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (127, 'go-admin/app/admin/apis.SysPost.Delete-fm', '岗位删除', '/api/v1/post/:id', 'BUS', 'DELETE', '2021-05-13 19:59:06.702', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (128, 'go-admin/app/admin/apis.SysRole.Delete-fm', '角色删除', '/api/v1/role', 'BUS', 'DELETE', '2021-05-13 19:59:06.746', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (131, 'github.com/go-admin-team/go-admin-core/tools/transfer.Handler.func1', '系统指标', '/api/v1/metrics', 'SYS', 'GET', '2021-05-17 22:13:55.933', '2021-06-13 20:53:49.614', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (132, 'go-admin/app/other/router.registerMonitorRouter.func1', '健康状态', '/api/v1/health', 'SYS', 'GET', '2021-05-17 22:13:56.285', '2021-06-13 20:53:49.951', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (133, 'go-admin/app/admin/apis.HelloWorld', '项目默认接口', '/', 'SYS', 'GET', '2021-05-24 10:30:44.553', '2021-06-13 20:53:47.406', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (134, 'go-admin/app/other/apis.ServerMonitor.ServerInfo-fm', '服务器基本状态', '/api/v1/server-monitor', 'SYS', 'GET', '2021-05-24 10:30:44.937', '2021-06-13 20:53:48.255', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (135, 'go-admin/app/admin/apis.SysApi.GetPage-fm', '接口列表', '/api/v1/sys-api', 'BUS', 'GET', '2021-05-24 11:37:53.303', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (136, 'go-admin/app/admin/apis.SysApi.Get-fm', '接口通过id获取', '/api/v1/sys-api/:id', 'BUS', 'GET', '2021-05-24 11:37:53.359', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (137, 'go-admin/app/admin/apis.SysLoginLog.GetPage-fm', '登录日志列表', '/api/v1/sys-login-log', 'BUS', 'GET', '2021-05-24 11:47:30.397', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (138, 'go-admin/app/other/apis.File.UploadFile-fm', '文件上传', '/api/v1/public/uploadFile', 'SYS', 'POST', '2021-05-25 19:16:18.493', '2021-06-13 20:53:50.866', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (139, 'go-admin/app/admin/apis.SysConfig.Update2Set-fm', '参数信息修改【参数配置】', '/api/v1/set-config', 'BUS', 'PUT', '2021-05-27 09:45:14.853', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (140, 'go-admin/app/admin/apis.SysConfig.Get2Set-fm', '参数获取全部【配置使用】', '/api/v1/set-config', 'BUS', 'GET', '2021-05-27 11:54:14.384', '2023-06-26 17:43:43.617', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (141, 'go-admin/app/admin/apis.SysUser.GetPage-fm', '管理员列表', '/api/v1/sys-user', 'BUS', 'GET', '2021-06-13 19:24:57.111', '2021-06-17 20:31:14.318', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (142, 'go-admin/app/admin/apis.SysUser.Get-fm', '管理员通过id获取', '/api/v1/sys-user/:id', 'BUS', 'GET', '2021-06-13 19:24:57.188', '2021-06-17 20:31:14.318', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (143, 'go-admin/app/admin/apis/tools.(*SysTable).GetSysTablesInfo-fm', '', '/api/v1/sys/tables/info', '', 'GET', '2021-06-13 19:24:57.437', '2021-06-13 20:53:48.047', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (144, 'go-admin/app/admin/apis/tools.(*SysTable).GetSysTables-fm', '', '/api/v1/sys/tables/info/:tableId', '', 'GET', '2021-06-13 19:24:57.510', '2021-06-13 20:53:48.088', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (145, 'go-admin/app/admin/apis/tools.(*SysTable).GetSysTableList-fm', '', '/api/v1/sys/tables/page', '', 'GET', '2021-06-13 19:24:57.582', '2021-06-13 20:53:48.128', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (146, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/static/*filepath', '', 'GET', '2021-06-13 19:24:59.641', '2021-06-13 20:53:50.081', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (147, 'github.com/swaggo/gin-swagger.CustomWrapHandler.func1', '', '/swagger/*any', '', 'GET', '2021-06-13 19:24:59.713', '2021-06-13 20:53:50.123', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (148, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/form-generator/*filepath', '', 'GET', '2021-06-13 19:24:59.914', '2021-06-13 20:53:50.295', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (149, 'go-admin/app/admin/apis/tools.(*SysTable).InsertSysTable-fm', '', '/api/v1/sys/tables/info', '', 'POST', '2021-06-13 19:25:00.163', '2021-06-13 20:53:50.539', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (150, 'go-admin/app/admin/apis.SysUser.Insert-fm', '管理员创建', '/api/v1/sys-user', 'BUS', 'POST', '2021-06-13 19:25:00.233', '2021-06-17 20:31:14.318', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (151, 'go-admin/app/admin/apis.SysUser.Update-fm', '管理员编辑', '/api/v1/sys-user', 'BUS', 'PUT', '2021-06-13 19:25:00.986', '2021-06-17 20:31:14.318', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (152, 'go-admin/app/admin/apis/tools.(*SysTable).UpdateSysTable-fm', '', '/api/v1/sys/tables/info', '', 'PUT', '2021-06-13 19:25:01.149', '2021-06-13 20:53:51.375', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (153, 'go-admin/app/admin/apis.SysRole.Update2Status-fm', '', '/api/v1/role-status', '', 'PUT', '2021-06-13 19:25:01.446', '2021-06-13 20:53:51.636', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (154, 'go-admin/app/admin/apis.SysUser.ResetPwd-fm', '', '/api/v1/user/pwd/reset', '', 'PUT', '2021-06-13 19:25:01.601', '2021-06-13 20:53:51.764', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (155, 'go-admin/app/admin/apis.SysUser.UpdateStatus-fm', '', '/api/v1/user/status', '', 'PUT', '2021-06-13 19:25:01.671', '2021-06-13 20:53:51.806', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (156, 'go-admin/app/admin/apis.SysUser.Delete-fm', '管理员删除', '/api/v1/sys-user', 'BUS', 'DELETE', '2021-06-13 19:25:02.043', '2021-06-17 20:31:14.318', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (157, 'go-admin/app/admin/apis/tools.(*SysTable).DeleteSysTables-fm', '', '/api/v1/sys/tables/info/:tableId', '', 'DELETE', '2021-06-13 19:25:02.283', '2021-06-13 20:53:52.367', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (158, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/static/*filepath', '', 'HEAD', '2021-06-13 19:25:02.734', '2021-06-13 20:53:52.791', NULL, 0, 0);
INSERT INTO `sys_api` (`id`, `handle`, `title`, `path`, `type`, `action`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (159, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/form-generator/*filepath', '', 'HEAD', '2021-06-13 19:25:02.808', '2021-06-13 20:53:52.838', NULL, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_casbin_rule`;
CREATE TABLE `sys_casbin_rule` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ptype` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v0` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v1` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v2` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v3` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v4` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v5` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v6` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v7` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sys_casbin_rule` (`ptype`,`v0`,`v1`,`v2`,`v3`,`v4`,`v5`,`v6`,`v7`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_casbin_rule
-- ----------------------------
BEGIN;
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (174, 'p', 'development', '/api/v1/config', 'DELETE', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (160, 'p', 'development', '/api/v1/config', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (171, 'p', 'development', '/api/v1/config', 'POST', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (172, 'p', 'development', '/api/v1/config/:id', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (173, 'p', 'development', '/api/v1/config/:id', 'PUT', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (158, 'p', 'development', '/api/v1/dict-data/option-select', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (170, 'p', 'development', '/api/v1/dict/data', 'DELETE', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (159, 'p', 'development', '/api/v1/dict/data', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (167, 'p', 'development', '/api/v1/dict/data', 'POST', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (168, 'p', 'development', '/api/v1/dict/data/:dictCode', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (169, 'p', 'development', '/api/v1/dict/data/:dictCode', 'PUT', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (166, 'p', 'development', '/api/v1/dict/type', 'DELETE', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (157, 'p', 'development', '/api/v1/dict/type', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (163, 'p', 'development', '/api/v1/dict/type', 'POST', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (164, 'p', 'development', '/api/v1/dict/type/:id', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (165, 'p', 'development', '/api/v1/dict/type/:id', 'PUT', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (177, 'p', 'development', '/api/v1/sys-api', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (179, 'p', 'development', '/api/v1/sys-api/:id', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (178, 'p', 'development', '/api/v1/sys-api/:id', 'PUT', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (175, 'p', 'development', '/api/v1/sys-login-log', 'DELETE', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (161, 'p', 'development', '/api/v1/sys-login-log', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (176, 'p', 'development', '/api/v1/sys-opera-log', 'DELETE', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (162, 'p', 'development', '/api/v1/sys-opera-log', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (156, 'p', 'development', '/api/v1/sys-user', 'DELETE', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (152, 'p', 'development', '/api/v1/sys-user', 'GET', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (153, 'p', 'development', '/api/v1/sys-user', 'POST', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (155, 'p', 'development', '/api/v1/sys-user', 'PUT', '', '', '', '', '');
INSERT INTO `sys_casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (154, 'p', 'development', '/api/v1/sys-user/:id', 'GET', '', '', '', '', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_columns
-- ----------------------------
DROP TABLE IF EXISTS `sys_columns`;
CREATE TABLE `sys_columns` (
  `column_id` bigint NOT NULL AUTO_INCREMENT,
  `table_id` bigint DEFAULT NULL,
  `column_name` varchar(128) DEFAULT NULL,
  `column_comment` varchar(128) DEFAULT NULL,
  `column_type` varchar(128) DEFAULT NULL,
  `go_type` varchar(128) DEFAULT NULL,
  `go_field` varchar(128) DEFAULT NULL,
  `json_field` varchar(128) DEFAULT NULL,
  `is_pk` varchar(4) DEFAULT NULL,
  `is_increment` varchar(4) DEFAULT NULL,
  `is_required` varchar(4) DEFAULT NULL,
  `is_insert` varchar(4) DEFAULT NULL,
  `is_edit` varchar(4) DEFAULT NULL,
  `is_list` varchar(4) DEFAULT NULL,
  `is_query` varchar(4) DEFAULT NULL,
  `query_type` varchar(128) DEFAULT NULL,
  `html_type` varchar(128) DEFAULT NULL,
  `dict_type` varchar(128) DEFAULT NULL,
  `sort` bigint DEFAULT NULL,
  `list` varchar(1) DEFAULT NULL,
  `pk` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `super_column` tinyint(1) DEFAULT NULL,
  `usable_column` tinyint(1) DEFAULT NULL,
  `increment` tinyint(1) DEFAULT NULL,
  `insert` tinyint(1) DEFAULT NULL,
  `edit` tinyint(1) DEFAULT NULL,
  `query` tinyint(1) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `fk_table_name` longtext,
  `fk_table_name_class` longtext,
  `fk_table_name_package` longtext,
  `fk_label_id` longtext,
  `fk_label_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`column_id`),
  KEY `idx_sys_columns_deleted_at` (`deleted_at`),
  KEY `idx_sys_columns_create_by` (`create_by`),
  KEY `idx_sys_columns_update_by` (`update_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_columns
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `config_name` varchar(128) DEFAULT NULL COMMENT 'ConfigName',
  `config_key` varchar(128) DEFAULT NULL COMMENT 'ConfigKey',
  `config_value` varchar(255) DEFAULT NULL COMMENT 'ConfigValue',
  `config_type` varchar(64) DEFAULT NULL COMMENT 'ConfigType',
  `is_frontend` varchar(64) DEFAULT NULL COMMENT '是否前台',
  `remark` varchar(128) DEFAULT NULL COMMENT 'Remark',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `idx_sys_config_create_by` (`create_by`),
  KEY `idx_sys_config_update_by` (`update_by`),
  KEY `idx_sys_config_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` (`id`, `config_name`, `config_key`, `config_value`, `config_type`, `is_frontend`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, '皮肤样式', 'sys_index_skinName', 'skin-green', 'Y', '0', '主框架页-默认皮肤样式名称:蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow', 1, 1, '2021-05-13 19:56:37.913', '2021-06-05 13:50:13.123', NULL);
INSERT INTO `sys_config` (`id`, `config_name`, `config_key`, `config_value`, `config_type`, `is_frontend`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, '初始密码', 'sys_user_initPassword', '123456', 'Y', '0', '用户管理-账号初始密码:123456', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
INSERT INTO `sys_config` (`id`, `config_name`, `config_key`, `config_value`, `config_type`, `is_frontend`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, '侧栏主题', 'sys_index_sideTheme', 'theme-dark', 'Y', '0', '主框架页-侧边栏主题:深色主题theme-dark，浅色主题theme-light', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
INSERT INTO `sys_config` (`id`, `config_name`, `config_key`, `config_value`, `config_type`, `is_frontend`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, '系统名称', 'sys_app_name', '脉诊科技', 'Y', '1', '', 1, 0, '2021-03-17 08:52:06.067', '2023-06-25 09:49:16.002', NULL);
INSERT INTO `sys_config` (`id`, `config_name`, `config_key`, `config_value`, `config_type`, `is_frontend`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, '系统logo', 'sys_app_logo', 'http://localhost:8000/static/uploadfile/4b9d59fb-8b63-4ea0-83a4-0d3ad451b46d.png', 'Y', '1', '', 1, 0, '2021-03-17 08:53:19.462', '2023-06-25 14:47:48.175', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT,
  `parent_id` bigint DEFAULT NULL,
  `dept_path` varchar(255) DEFAULT NULL,
  `dept_name` varchar(128) DEFAULT NULL,
  `sort` tinyint DEFAULT NULL,
  `leader` varchar(128) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`dept_id`),
  KEY `idx_sys_dept_create_by` (`create_by`),
  KEY `idx_sys_dept_update_by` (`update_by`),
  KEY `idx_sys_dept_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 0, '/0/1/', '脉诊科技', 0, 'aituo', '13782218188', 'atuo@aituo.com', 2, 1, 1, '2021-05-13 19:56:37.913', '2023-06-21 15:47:15.442', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, 1, '/0/1/7/', '研发部', 1, 'aituo', '13782218188', 'atuo@aituo.com', 2, 1, 1, '2021-05-13 19:56:37.913', '2021-06-16 21:35:00.109', '2023-06-21 15:56:54.946');
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 1, '/0/1/8/', '运维部', 0, 'aituo', '13782218188', 'atuo@aituo.com', 2, 1, 1, '2021-05-13 19:56:37.913', '2021-06-16 21:41:39.747', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, 1, '/0/1/9/', '客服部', 0, 'aituo', '13782218188', 'atuo@aituo.com', 2, 1, 1, '2021-05-13 19:56:37.913', '2021-06-05 17:07:05.993', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, 1, '/0/1/10/', '人力资源', 100, 'aituo', '13782218188', 'atuo@aituo.com', 1, 1, 1, '2021-05-13 19:56:37.913', '2023-06-21 15:58:55.455', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (11, 1, '/0/1/11/', '技术部', 0, '小梁', '', '', 2, 0, 0, '2023-06-21 15:57:34.342', '2023-06-21 15:57:41.605', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (12, 11, '/0/1/11/12/', '软件部门', 0, '小梁', '', '', 2, 0, 0, '2023-06-21 15:58:20.645', '2023-06-21 15:58:20.657', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `dept_path`, `dept_name`, `sort`, `leader`, `phone`, `email`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (13, 11, '/0/1/11/13/', '硬件部门', 0, '小梁', '', '', 2, 0, 0, '2023-06-21 15:58:38.657', '2023-06-21 15:58:38.671', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT,
  `dict_sort` bigint DEFAULT NULL,
  `dict_label` varchar(128) DEFAULT NULL,
  `dict_value` varchar(255) DEFAULT NULL,
  `dict_type` varchar(64) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `list_class` varchar(128) DEFAULT NULL,
  `is_default` varchar(8) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `default` varchar(8) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`dict_code`),
  KEY `idx_sys_dict_data_create_by` (`create_by`),
  KEY `idx_sys_dict_data_update_by` (`update_by`),
  KEY `idx_sys_dict_data_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 0, '正常', '2', 'sys_normal_disable', '', '', '', 2, '', '系统正常', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:40.168', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 0, '停用', '1', 'sys_normal_disable', '', '', '', 2, '', '系统停用', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 0, '男', '0', 'sys_user_sex', '', '', '', 2, '', '性别男', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 0, '女', '1', 'sys_user_sex', '', '', '', 2, '', '性别女', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 0, '未知', '2', 'sys_user_sex', '', '', '', 2, '', '性别未知', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, 0, '显示', '0', 'sys_show_hide', '', '', '', 2, '', '显示菜单', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, 0, '隐藏', '1', 'sys_show_hide', '', '', '', 2, '', '隐藏菜单', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 0, '是', 'Y', 'sys_yes_no', '', '', '', 2, '', '系统默认是', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, 0, '否', 'N', 'sys_yes_no', '', '', '', 2, '', '系统默认否', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, 0, '正常', '2', 'sys_job_status', '', '', '', 2, '', '正常状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (11, 0, '停用', '1', 'sys_job_status', '', '', '', 2, '', '停用状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (12, 0, '默认', 'DEFAULT', 'sys_job_group', '', '', '', 2, '', '默认分组', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (13, 0, '系统', 'SYSTEM', 'sys_job_group', '', '', '', 2, '', '系统分组', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (14, 0, '通知', '1', 'sys_notice_type', '', '', '', 2, '', '通知', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (15, 0, '公告', '2', 'sys_notice_type', '', '', '', 2, '', '公告', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (16, 0, '正常', '2', 'sys_common_status', '', '', '', 2, '', '正常状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (17, 0, '关闭', '1', 'sys_common_status', '', '', '', 2, '', '关闭状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (18, 0, '新增', '1', 'sys_oper_type', '', '', '', 2, '', '新增操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (19, 0, '修改', '2', 'sys_oper_type', '', '', '', 2, '', '修改操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (20, 0, '删除', '3', 'sys_oper_type', '', '', '', 2, '', '删除操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (21, 0, '授权', '4', 'sys_oper_type', '', '', '', 2, '', '授权操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (22, 0, '导出', '5', 'sys_oper_type', '', '', '', 2, '', '导出操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (23, 0, '导入', '6', 'sys_oper_type', '', '', '', 2, '', '导入操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (24, 0, '强退', '7', 'sys_oper_type', '', '', '', 2, '', '强退操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (25, 0, '生成代码', '8', 'sys_oper_type', '', '', '', 2, '', '生成操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (26, 0, '清空数据', '9', 'sys_oper_type', '', '', '', 2, '', '清空操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (27, 0, '成功', '0', 'sys_notice_status', '', '', '', 2, '', '成功状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (28, 0, '失败', '1', 'sys_notice_status', '', '', '', 2, '', '失败状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (29, 0, '登录', '10', 'sys_oper_type', '', '', '', 2, '', '登录操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (30, 0, '退出', '11', 'sys_oper_type', '', '', '', 2, '', '', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (31, 0, '获取验证码', '12', 'sys_oper_type', '', '', '', 2, '', '获取验证码', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (32, 0, '正常', '1', 'sys_content_status', '', '', '', 1, '', '', 1, 1, '2021-05-13 19:56:40.845', '2021-05-13 19:56:40.845', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `default`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (33, 1, '禁用', '2', 'sys_content_status', '', '', '', 1, '', '', 1, 1, '2021-05-13 19:56:40.845', '2021-05-13 19:56:40.845', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT,
  `dict_name` varchar(128) DEFAULT NULL,
  `dict_type` varchar(128) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`dict_id`),
  KEY `idx_sys_dict_type_update_by` (`update_by`),
  KEY `idx_sys_dict_type_deleted_at` (`deleted_at`),
  KEY `idx_sys_dict_type_create_by` (`create_by`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, '系统开关', 'sys_normal_disable', 2, '系统开关列表', 1, 1, '2021-05-13 19:56:37.914', '2023-06-27 09:50:20.918', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, '用户性别', 'sys_user_sex', 2, '用户性别列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, '菜单状态', 'sys_show_hide', 2, '菜单状态列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, '系统是否', 'sys_yes_no', 2, '系统是否列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, '任务状态', 'sys_job_status', 2, '任务状态列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, '任务分组', 'sys_job_group', 2, '任务分组列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, '通知类型', 'sys_notice_type', 2, '通知类型列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, '系统状态', 'sys_common_status', 2, '登录状态列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, '操作类型', 'sys_oper_type', 2, '操作类型列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, '通知状态', 'sys_notice_status', 2, '通知状态列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (11, '内容状态', 'sys_content_status', 2, '', 1, 1, '2021-05-13 19:56:40.813', '2021-05-13 19:56:40.813', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) DEFAULT NULL,
  `job_group` varchar(255) DEFAULT NULL,
  `job_type` tinyint DEFAULT NULL,
  `cron_expression` varchar(255) DEFAULT NULL,
  `invoke_target` varchar(255) DEFAULT NULL,
  `args` varchar(255) DEFAULT NULL,
  `misfire_policy` bigint DEFAULT NULL,
  `concurrent` tinyint DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `entry_id` smallint DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`job_id`),
  KEY `idx_sys_job_deleted_at` (`deleted_at`),
  KEY `idx_sys_job_create_by` (`create_by`),
  KEY `idx_sys_job_update_by` (`update_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
BEGIN;
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_group`, `job_type`, `cron_expression`, `invoke_target`, `args`, `misfire_policy`, `concurrent`, `status`, `entry_id`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (1, '接口测试', 'DEFAULT', 1, '0/5 * * * * ', 'http://localhost:8000', '', 1, 1, 1, 0, '2021-05-13 19:56:37.914', '2023-06-21 14:57:34.527', NULL, 1, 1);
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_group`, `job_type`, `cron_expression`, `invoke_target`, `args`, `misfire_policy`, `concurrent`, `status`, `entry_id`, `created_at`, `updated_at`, `deleted_at`, `create_by`, `update_by`) VALUES (2, '函数测试', 'DEFAULT', 2, '0/5 * * * * ', 'ExamplesOne', '参数', 1, 1, 1, 0, '2021-05-13 19:56:37.914', '2021-05-31 23:55:37.221', NULL, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `username` varchar(128) DEFAULT NULL COMMENT '用户名',
  `status` varchar(4) DEFAULT NULL COMMENT '状态',
  `ipaddr` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  `login_location` varchar(255) DEFAULT NULL COMMENT '归属地',
  `browser` varchar(255) DEFAULT NULL COMMENT '浏览器',
  `os` varchar(255) DEFAULT NULL COMMENT '系统',
  `platform` varchar(255) DEFAULT NULL COMMENT '固件',
  `login_time` timestamp NULL DEFAULT NULL COMMENT '登录时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `msg` varchar(255) DEFAULT NULL COMMENT '信息',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`),
  KEY `idx_sys_login_log_create_by` (`create_by`),
  KEY `idx_sys_login_log_update_by` (`update_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `icon` varchar(128) DEFAULT NULL,
  `path` varchar(128) DEFAULT NULL,
  `paths` varchar(128) DEFAULT NULL,
  `menu_type` varchar(1) DEFAULT NULL,
  `action` varchar(16) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `parent_id` smallint DEFAULT NULL,
  `no_cache` tinyint(1) DEFAULT NULL,
  `breadcrumb` varchar(255) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `sort` tinyint DEFAULT NULL,
  `visible` varchar(1) DEFAULT NULL,
  `is_frame` varchar(1) DEFAULT '0',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`menu_id`),
  KEY `idx_sys_menu_update_by` (`update_by`),
  KEY `idx_sys_menu_deleted_at` (`deleted_at`),
  KEY `idx_sys_menu_create_by` (`create_by`)
) ENGINE=InnoDB AUTO_INCREMENT=543 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 'Admin', '系统管理', 'api-server', '/admin', '/0/2', 'M', '无', '', 0, 1, '', 'Layout', 10, '0', '1', 0, 1, '2021-05-20 21:58:45.679', '2023-06-21 12:07:11.768', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 'SysUserManage', '用户管理', 'user', '/admin/sys-user', '/0/2/3', 'C', '无', 'admin:sysUser:list', 2, 0, '', '/admin/sys-user/index', 10, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-06-21 12:07:11.779', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (43, '', '新增管理员', 'app-group-fill', '', '/0/2/3/43', 'F', 'POST', 'admin:sysUser:add', 3, 0, '', '', 10, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-06-21 12:07:11.816', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (44, '', '查询管理员', 'app-group-fill', '', '/0/2/3/44', 'F', 'GET', 'admin:sysUser:query', 3, 0, '', '', 40, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-06-21 12:07:11.819', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (45, '', '修改管理员', 'app-group-fill', '', '/0/2/3/45', 'F', 'PUT', 'admin:sysUser:edit', 3, 0, '', '', 30, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-06-21 12:07:11.821', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (46, '', '删除管理员', 'app-group-fill', '', '/0/2/3/46', 'F', 'DELETE', 'admin:sysUser:remove', 3, 0, '', '', 20, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-06-21 12:07:11.824', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (51, 'SysMenuManage', '菜单管理', 'tree-table', '/admin/sys-menu', '/0/2/51', 'C', '无', 'admin:sysMenu:list', 2, 1, '', '/admin/sys-menu/index', 30, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-06-21 12:07:11.783', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (52, 'SysRoleManage', '角色管理', 'peoples', '/admin/sys-role', '/0/2/52', 'C', '无', 'admin:sysRole:list', 2, 1, '', '/admin/sys-role/index', 20, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-06-21 12:07:11.786', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (56, 'SysDeptManage', '部门管理', 'tree', '/admin/sys-dept', '/0/2/56', 'C', '无', 'admin:sysDept:list', 2, 0, '', '/admin/sys-dept/index', 40, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-06-21 12:07:11.789', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (57, 'SysPostManage', '岗位管理', 'pass', '/admin/sys-post', '/0/2/57', 'C', '无', 'admin:sysPost:list', 2, 0, '', '/admin/sys-post/index', 50, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-06-21 12:07:11.793', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (58, 'Dict', '字典管理', 'education', '/admin/dict', '/0/2/58', 'C', '无', 'admin:sysDictType:list', 2, 0, '', '/admin/dict/index', 60, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (59, 'SysDictDataManage', '字典数据', 'education', '/admin/dict/data/:dictId', '/0/2/59', 'C', '无', 'admin:sysDictData:list', 2, 0, '', '/admin/dict/data', 100, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (60, 'Tools', '开发工具', 'dev-tools', '/dev-tools', '/0/60', 'M', '无', '', 0, 0, '', 'Layout', 40, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (61, 'Swagger', '系统接口', 'guide', '/dev-tools/swagger', '/0/60/61', 'C', '无', '', 60, 0, '', '/dev-tools/swagger/index', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (62, 'SysConfigManage', '参数管理', 'swagger', '/admin/sys-config', '/0/2/62', 'C', '无', 'admin:sysConfig:list', 2, 0, '', '/admin/sys-config/index', 70, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (211, 'Log', '日志管理', 'log', '/log', '/0/2/211', 'M', '', '', 2, 0, '', '/log/index', 80, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (212, 'SysLoginLogManage', '登录日志', 'logininfor', '/admin/sys-login-log', '/0/2/211/212', 'C', '', 'admin:sysLoginLog:list', 211, 0, '', '/admin/sys-login-log/index', 1, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (216, 'OperLog', '操作日志', 'skill', '/admin/sys-oper-log', '/0/2/211/216', 'C', '', 'admin:sysOperLog:list', 211, 0, '', '/admin/sys-oper-log/index', 1, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (220, '', '新增菜单', 'app-group-fill', '', '/0/2/51/220', 'F', '', 'admin:sysMenu:add', 51, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-21 12:07:11.827', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (221, '', '修改菜单', 'app-group-fill', '', '/0/2/51/221', 'F', '', 'admin:sysMenu:edit', 51, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-21 12:07:11.830', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (222, '', '查询菜单', 'app-group-fill', '', '/0/2/51/222', 'F', '', 'admin:sysMenu:query', 51, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-21 12:07:11.833', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (223, '', '删除菜单', 'app-group-fill', '', '/0/2/51/223', 'F', '', 'admin:sysMenu:remove', 51, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-21 12:07:11.838', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (224, '', '新增角色', 'app-group-fill', '', '/0/2/52/224', 'F', '', 'admin:sysRole:add', 52, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-21 12:07:11.841', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (225, '', '查询角色', 'app-group-fill', '', '/0/2/52/225', 'F', '', 'admin:sysRole:query', 52, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-21 12:07:11.844', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (226, '', '修改角色', 'app-group-fill', '', '/0/2/52/226', 'F', '', 'admin:sysRole:update', 52, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-21 12:07:11.847', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (227, '', '删除角色', 'app-group-fill', '', '/0/2/52/227', 'F', '', 'admin:sysRole:remove', 52, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-21 12:07:11.849', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (228, '', '查询部门', 'app-group-fill', '', '/0/2/56/228', 'F', '', 'admin:sysDept:query', 56, 0, '', '', 40, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-06-21 12:07:11.853', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (229, '', '新增部门', 'app-group-fill', '', '/0/2/56/229', 'F', '', 'admin:sysDept:add', 56, 0, '', '', 10, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-06-21 12:07:11.856', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (230, '', '修改部门', 'app-group-fill', '', '/0/2/56/230', 'F', '', 'admin:sysDept:edit', 56, 0, '', '', 30, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-06-21 12:07:11.859', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (231, '', '删除部门', 'app-group-fill', '', '/0/2/56/231', 'F', '', 'admin:sysDept:remove', 56, 0, '', '', 20, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2023-06-21 12:07:11.862', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (232, '', '查询岗位', 'app-group-fill', '', '/0/2/57/232', 'F', '', 'admin:sysPost:query', 57, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-21 12:07:11.865', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (233, '', '新增岗位', 'app-group-fill', '', '/0/2/57/233', 'F', '', 'admin:sysPost:add', 57, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-21 12:07:11.868', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (234, '', '修改岗位', 'app-group-fill', '', '/0/2/57/234', 'F', '', 'admin:sysPost:edit', 57, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-21 12:07:11.872', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (235, '', '删除岗位', 'app-group-fill', '', '/0/2/57/235', 'F', '', 'admin:sysPost:remove', 57, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-21 12:07:11.875', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (236, '', '查询字典', 'app-group-fill', '', '/0/2/58/236', 'F', '', 'admin:sysDictType:query', 58, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (237, '', '新增类型', 'app-group-fill', '', '/0/2/58/237', 'F', '', 'admin:sysDictType:add', 58, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (238, '', '修改类型', 'app-group-fill', '', '/0/2/58/238', 'F', '', 'admin:sysDictType:edit', 58, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (239, '', '删除类型', 'app-group-fill', '', '/0/2/58/239', 'F', '', 'system:sysdicttype:remove', 58, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (240, '', '查询数据', 'app-group-fill', '', '/0/2/59/240', 'F', '', 'admin:sysDictData:query', 59, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (241, '', '新增数据', 'app-group-fill', '', '/0/2/59/241', 'F', '', 'admin:sysDictData:add', 59, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (242, '', '修改数据', 'app-group-fill', '', '/0/2/59/242', 'F', '', 'admin:sysDictData:edit', 59, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (243, '', '删除数据', 'app-group-fill', '', '/0/2/59/243', 'F', '', 'admin:sysDictData:remove', 59, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (244, '', '查询参数', 'app-group-fill', '', '/0/2/62/244', 'F', '', 'admin:sysConfig:query', 62, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (245, '', '新增参数', 'app-group-fill', '', '/0/2/62/245', 'F', '', 'admin:sysConfig:add', 62, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (246, '', '修改参数', 'app-group-fill', '', '/0/2/62/246', 'F', '', 'admin:sysConfig:edit', 62, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (247, '', '删除参数', 'app-group-fill', '', '/0/2/62/247', 'F', '', 'admin:sysConfig:remove', 62, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (248, '', '查询登录日志', 'app-group-fill', '', '/0/2/211/212/248', 'F', '', 'admin:sysLoginLog:query', 212, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (249, '', '删除登录日志', 'app-group-fill', '', '/0/2/211/212/249', 'F', '', 'admin:sysLoginLog:remove', 212, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (250, '', '查询操作日志', 'app-group-fill', '', '/0/2/211/216/250', 'F', '', 'admin:sysOperLog:query', 216, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (251, '', '删除操作日志', 'app-group-fill', '', '/0/2/211/216/251', 'F', '', 'admin:sysOperLog:remove', 216, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (261, 'Gen', '代码生成', 'code', '/dev-tools/gen', '/0/60/261', 'C', '', '', 60, 0, '', '/dev-tools/gen/index', 2, '1', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-27 10:45:54.368', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (262, 'EditTable', '代码生成修改', 'build', '/dev-tools/editTable', '/0/60/262', 'C', '', '', 60, 0, '', '/dev-tools/gen/editTable', 100, '1', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (264, 'Build', '表单构建', 'build', '/dev-tools/build', '/0/60/264', 'C', '', '', 60, 0, '', '/dev-tools/build/index', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (269, 'ServerMonitor', '服务监控', 'druid', '/sys-tools/monitor', '/0/537/269', 'C', '', 'sysTools:serverMonitor:list', 537, 0, '', '/sys-tools/monitor', 0, '0', '1', 1, 1, '2020-04-14 00:28:19.000', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (459, 'Schedule', '定时任务', 'time-range', '/schedule', '/0/459', 'M', '无', '', 0, 0, '', 'Layout', 20, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2023-06-21 16:16:29.851', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (460, 'ScheduleManage', 'Schedule', 'job', '/schedule/manage', '/0/459/460', 'C', '无', 'job:sysJob:list', 459, 0, '', '/schedule/index', 0, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2023-06-21 16:19:58.950', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (461, 'sys_job', '分页获取定时任务', 'app-group-fill', '', '/0/459/460/461', 'F', '无', 'job:sysJob:query', 460, 0, '', '', 0, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2023-06-21 16:19:58.950', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (462, 'sys_job', '创建定时任务', 'app-group-fill', '', '/0/459/460/462', 'F', '无', 'job:sysJob:add', 460, 0, '', '', 0, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2023-06-21 16:19:58.950', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (463, 'sys_job', '修改定时任务', 'app-group-fill', '', '/0/459/460/463', 'F', '无', 'job:sysJob:edit', 460, 0, '', '', 0, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2023-06-21 16:19:58.950', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (464, 'sys_job', '删除定时任务', 'app-group-fill', '', '/0/459/460/464', 'F', '无', 'job:sysJob:remove', 460, 0, '', '', 0, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2023-06-21 16:19:58.950', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (471, 'JobLog', '日志', 'bug', '/schedule/log', '/0/459/471', 'C', '', '', 459, 0, '', '/schedule/log', 0, '1', '1', 1, 1, '2020-08-05 21:24:46.000', '2023-06-27 10:45:28.981', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (528, 'SysApiManage', '接口管理', 'api-doc', '/admin/sys-api', '/0/2/528', 'C', '无', 'admin:sysApi:list', 2, 0, '', '/admin/sys-api/index', 0, '0', '0', 0, 1, '2021-05-20 22:08:44.526', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (529, '', '查询接口', 'app-group-fill', '', '/0/2/528/529', 'F', '无', 'admin:sysApi:query', 528, 0, '', '', 40, '0', '0', 0, 1, '2021-05-20 22:08:44.526', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (531, '', '修改接口', 'app-group-fill', '', '/0/2/528/531', 'F', '无', 'admin:sysApi:edit', 528, 0, '', '', 30, '0', '0', 0, 1, '2021-05-20 22:08:44.526', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (537, 'SysTools', '系统工具', 'system-tools', '/sys-tools', '/0/537', 'M', '', '', 0, 0, '', 'Layout', 30, '0', '1', 1, 1, '2021-05-21 11:13:32.166', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (540, 'SysConfigSet', '参数设置', 'system-tools', '/admin/sys-config/set', '/0/2/540', 'C', '', 'admin:sysConfigSet:list', 2, 0, '', '/admin/sys-config/set', 0, '0', '1', 1, 1, '2021-05-25 16:06:52.560', '2023-06-26 17:43:43.607', NULL);
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `title`, `icon`, `path`, `paths`, `menu_type`, `action`, `permission`, `parent_id`, `no_cache`, `breadcrumb`, `component`, `sort`, `visible`, `is_frame`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (542, '', '修改', 'upload', '', '/0/2/540/542', 'F', '', 'admin:sysConfigSet:update', 540, 0, '', '', 0, '0', '1', 1, 1, '2021-06-13 11:45:48.670', '2023-06-26 17:43:43.607', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_menu_api_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_api_rule`;
CREATE TABLE `sys_menu_api_rule` (
  `sys_menu_menu_id` bigint NOT NULL,
  `sys_api_id` bigint NOT NULL COMMENT '主键编码',
  PRIMARY KEY (`sys_menu_menu_id`,`sys_api_id`),
  KEY `fk_sys_menu_api_rule_sys_api` (`sys_api_id`),
  CONSTRAINT `fk_sys_menu_api_rule_sys_api` FOREIGN KEY (`sys_api_id`) REFERENCES `sys_api` (`id`),
  CONSTRAINT `fk_sys_menu_api_rule_sys_menu` FOREIGN KEY (`sys_menu_menu_id`) REFERENCES `sys_menu` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_menu_api_rule
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (216, 6);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (250, 6);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (58, 21);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (236, 21);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (238, 23);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (59, 24);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (240, 24);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (242, 25);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (58, 26);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (236, 26);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (56, 27);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (228, 27);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (230, 28);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (226, 29);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (51, 39);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (222, 39);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (221, 41);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (52, 44);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (225, 44);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (226, 45);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (226, 46);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (226, 47);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (62, 53);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (244, 53);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (246, 54);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (57, 59);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (232, 59);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (234, 60);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (241, 80);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (237, 81);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (229, 82);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (245, 87);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (220, 88);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (233, 89);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (224, 90);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (531, 92);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (242, 101);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (238, 102);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (230, 103);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (226, 106);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (226, 107);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (246, 108);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (221, 109);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (234, 110);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (249, 114);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (251, 115);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (243, 120);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (239, 121);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (231, 122);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (247, 125);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (223, 126);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (235, 127);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (227, 128);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (51, 135);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (528, 135);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (529, 135);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (531, 136);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (212, 137);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (248, 137);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (542, 139);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (540, 140);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (3, 141);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (44, 141);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (45, 142);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (43, 150);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (45, 151);
INSERT INTO `sys_menu_api_rule` (`sys_menu_menu_id`, `sys_api_id`) VALUES (46, 156);
COMMIT;

-- ----------------------------
-- Table structure for sys_migration
-- ----------------------------
DROP TABLE IF EXISTS `sys_migration`;
CREATE TABLE `sys_migration` (
  `version` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `apply_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of sys_migration
-- ----------------------------
BEGIN;
INSERT INTO `sys_migration` (`version`, `apply_time`) VALUES ('1599190683659', '2023-06-21 12:07:11.761');
INSERT INTO `sys_migration` (`version`, `apply_time`) VALUES ('1653638869132', '2023-06-21 12:07:11.977');
COMMIT;

-- ----------------------------
-- Table structure for sys_opera_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_opera_log`;
CREATE TABLE `sys_opera_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `title` varchar(255) DEFAULT NULL COMMENT '操作模块',
  `business_type` varchar(128) DEFAULT NULL COMMENT '操作类型',
  `business_types` varchar(128) DEFAULT NULL COMMENT 'BusinessTypes',
  `method` varchar(128) DEFAULT NULL COMMENT '函数',
  `request_method` varchar(128) DEFAULT NULL COMMENT '请求方式: GET POST PUT DELETE',
  `operator_type` varchar(128) DEFAULT NULL COMMENT '操作类型',
  `oper_name` varchar(128) DEFAULT NULL COMMENT '操作者',
  `dept_name` varchar(128) DEFAULT NULL COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT NULL COMMENT '访问地址',
  `oper_ip` varchar(128) DEFAULT NULL COMMENT '客户端ip',
  `oper_location` varchar(128) DEFAULT NULL COMMENT '访问位置',
  `oper_param` text COMMENT '请求参数',
  `status` varchar(4) DEFAULT NULL COMMENT '操作状态 1:正常 2:关闭',
  `oper_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `json_result` varchar(255) DEFAULT NULL COMMENT '返回数据',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `latency_time` varchar(128) DEFAULT NULL COMMENT '耗时',
  `user_agent` varchar(255) DEFAULT NULL COMMENT 'ua',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`),
  KEY `idx_sys_opera_log_create_by` (`create_by`),
  KEY `idx_sys_opera_log_update_by` (`update_by`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_opera_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (1, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/post?pageIndex=1&pageSize=10', '::1', '', '', '1', '2023-06-21 15:10:27', '{\"requestId\":\"7798a087-d8be-4c79-831a-742644280bc0\",\"code\":200,\"msg\":\"查询成功\",\"data\":{\"count\":', '', '7.306ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:10:26.549', '2023-06-21 15:10:26.549', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (2, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/dict-data/option-select?dictType=sys_normal_disable', '::1', '', '', '1', '2023-06-21 15:10:27', '{\"requestId\":\"838c5687-dcf1-4b2b-a856-694dcb1009a3\",\"code\":200,\"msg\":\"查询成功\",\"data\":[{\"label\"', '', '12.16175ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:10:26.567', '2023-06-21 15:10:26.567', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (3, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/dict-data/option-select?dictType=sys_show_hide', '::1', '', '', '1', '2023-06-21 15:13:16', '{\"requestId\":\"6beaee2c-0309-4b76-807b-fd5335e902d9\",\"code\":200,\"msg\":\"查询成功\",\"data\":[{\"label\"', '', '10.173209ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:16.307', '2023-06-21 15:13:16.307', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (4, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/sys-api?pageSize=10000&type=BUS', '::1', '', '', '1', '2023-06-21 15:13:16', '{\"requestId\":\"0065d83a-f42a-4637-9a33-93a096a92e6f\",\"code\":200,\"msg\":\"查询成功\",\"data\":{\"count\":', '', '26.199667ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:16.321', '2023-06-21 15:13:16.321', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (5, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/menu', '::1', '', '', '1', '2023-06-21 15:13:16', '{\"requestId\":\"2503c7ab-1fc9-4ecb-8a33-3412c0ac17ae\",\"code\":200,\"msg\":\"查询成功\",\"data\":[{\"menuId', '', '41.694334ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:16.336', '2023-06-21 15:13:16.336', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (6, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/dict-data/option-select?dictType=sys_normal_disable', '::1', '', '', '1', '2023-06-21 15:13:23', '{\"requestId\":\"e58c43e2-8f8e-40cf-ad17-964557bc700f\",\"code\":200,\"msg\":\"查询成功\",\"data\":[{\"label\"', '', '6.532667ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:22.863', '2023-06-21 15:13:22.863', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (7, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/dict-data/option-select?dictType=sys_user_sex', '::1', '', '', '1', '2023-06-21 15:13:23', '{\"requestId\":\"b99808f5-56c8-4f34-835a-8147f1714f60\",\"code\":200,\"msg\":\"查询成功\",\"data\":[{\"label\"', '', '22.271959ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:22.881', '2023-06-21 15:13:22.881', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (8, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/configKey/sys_user_initPassword', '::1', '', '', '1', '2023-06-21 15:13:23', '{\"requestId\":\"ffc5ba30-3c8d-48cc-8d4b-6369359314ae\",\"code\":200,\"data\":{\"configKey\":\"sys_user_initPas', '', '24.193416ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:22.887', '2023-06-21 15:13:22.887', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (9, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/deptTree', '::1', '', '', '1', '2023-06-21 15:13:23', '{\"requestId\":\"f94ed44c-96bb-49cc-8f5a-98047edd8381\",\"code\":200,\"data\":[{\"id\":1,\"label\":\"爱拓科技', '', '31.292667ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:22.897', '2023-06-21 15:13:22.897', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (10, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/sys-user?pageIndex=1&pageSize=10', '::1', '', '', '1', '2023-06-21 15:13:23', '{\"requestId\":\"a446b3e4-e052-4f8e-adc9-0bb669b33c15\",\"code\":200,\"msg\":\"查询成功\",\"data\":{\"count\":', '', '34.313709ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:22.902', '2023-06-21 15:13:22.902', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (11, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/dict-data/option-select?dictType=sys_show_hide', '::1', '', '', '1', '2023-06-21 15:13:26', '{\"requestId\":\"11319da9-5f3c-4e79-8cdd-c712042458f2\",\"code\":200,\"msg\":\"查询成功\",\"data\":[{\"label\"', '', '16.843ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:25.746', '2023-06-21 15:13:25.746', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (12, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/sys-api?pageSize=10000&type=BUS', '::1', '', '', '1', '2023-06-21 15:13:26', '{\"requestId\":\"12c476c9-ef2c-4a44-b80f-a94c3ee1bfb0\",\"code\":200,\"msg\":\"查询成功\",\"data\":{\"count\":', '', '18.33675ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:25.761', '2023-06-21 15:13:25.761', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (13, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/menu', '::1', '', '', '1', '2023-06-21 15:13:26', '{\"requestId\":\"df456a26-2e80-454b-8f99-c84d61cb5b5f\",\"code\":200,\"msg\":\"查询成功\",\"data\":[{\"menuId', '', '26.360417ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:25.769', '2023-06-21 15:13:25.769', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (14, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:39', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '64.932625ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:38.821', '2023-06-21 15:13:38.821', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (15, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:40', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '55.728584ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:39.812', '2023-06-21 15:13:39.812', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (16, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:41', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '59.638708ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:40.822', '2023-06-21 15:13:40.822', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (17, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:42', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '39.229584ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:41.991', '2023-06-21 15:13:41.991', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (18, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:43', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '26.452458ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:43.199', '2023-06-21 15:13:43.199', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (19, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:44', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '33.984708ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:43.842', '2023-06-21 15:13:43.842', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (20, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:45', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '59.23925ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:44.817', '2023-06-21 15:13:44.817', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (21, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:46', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '57.905875ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:45.820', '2023-06-21 15:13:45.820', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (22, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:47', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '58.591416ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:46.821', '2023-06-21 15:13:46.821', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (23, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:48', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '58.352042ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:47.821', '2023-06-21 15:13:47.821', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (24, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:49', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '58.75575ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:48.825', '2023-06-21 15:13:48.825', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (25, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:50', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '50.377583ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:49.844', '2023-06-21 15:13:49.844', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (26, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:51', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '35.564917ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:51.132', '2023-06-21 15:13:51.132', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (27, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:52', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '29.462334ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:51.930', '2023-06-21 15:13:51.930', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (28, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:53', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '37.343042ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:53.223', '2023-06-21 15:13:53.223', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (29, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:54', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '60.9435ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:54.127', '2023-06-21 15:13:54.127', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (30, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:55', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '50.842125ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:55.157', '2023-06-21 15:13:55.157', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (31, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:56', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '58.342666ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:56.141', '2023-06-21 15:13:56.141', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (32, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:57', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '59.039584ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:57.167', '2023-06-21 15:13:57.167', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (33, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:58', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '58.463875ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:58.130', '2023-06-21 15:13:58.130', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (34, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:13:59', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '57.357459ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:13:59.163', '2023-06-21 15:13:59.163', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (35, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:00', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '59.866291ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:00.116', '2023-06-21 15:14:00.116', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (36, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:01', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '47.93425ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:01.152', '2023-06-21 15:14:01.152', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (37, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:02', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '63.613959ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:01.907', '2023-06-21 15:14:01.907', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (38, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:03', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '46.150666ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:03.266', '2023-06-21 15:14:03.266', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (39, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:04', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '58.883833ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:04.067', '2023-06-21 15:14:04.067', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (40, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:05', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '49.616458ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:05.170', '2023-06-21 15:14:05.170', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (41, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:06', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '58.403917ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:06.131', '2023-06-21 15:14:06.131', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (42, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:07', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '64.961959ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:07.096', '2023-06-21 15:14:07.096', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (43, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:08', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '60.960542ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:08.168', '2023-06-21 15:14:08.168', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (44, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:09', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '65.034958ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:09.158', '2023-06-21 15:14:09.158', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (45, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:10', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '48.349709ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:10.168', '2023-06-21 15:14:10.168', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (46, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:11', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '59.264ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:11.139', '2023-06-21 15:14:11.139', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (47, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:12', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '42.613584ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:12.133', '2023-06-21 15:14:12.133', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (48, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:13', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '53.203375ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:13.139', '2023-06-21 15:14:13.139', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (49, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:14', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '49.59425ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:14.132', '2023-06-21 15:14:14.132', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (50, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:15', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '57.170583ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:15.146', '2023-06-21 15:14:15.146', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (51, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:16', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '61.169041ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:16.142', '2023-06-21 15:14:16.142', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (52, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:17', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '37.3535ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:17.123', '2023-06-21 15:14:17.123', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (53, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:18', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '54.191875ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:18.172', '2023-06-21 15:14:18.172', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (54, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:19', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '60.659875ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:19.133', '2023-06-21 15:14:19.133', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (55, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:20', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '57.350125ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:20.156', '2023-06-21 15:14:20.156', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (56, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:21', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '59.598375ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:21.140', '2023-06-21 15:14:21.140', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (57, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:22', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '61.16525ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:22.116', '2023-06-21 15:14:22.116', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (58, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:23', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '58.454375ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:23.162', '2023-06-21 15:14:23.162', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (59, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:24', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '59.587166ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:24.142', '2023-06-21 15:14:24.142', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (60, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:25', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '57.814333ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:25.145', '2023-06-21 15:14:25.145', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (61, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:26', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '59.853083ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:26.146', '2023-06-21 15:14:26.146', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (62, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:27', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '58.072ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:27.158', '2023-06-21 15:14:27.158', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (63, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:28', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '49.371375ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:28.017', '2023-06-21 15:14:28.017', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (64, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:29', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '55.983959ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:28.820', '2023-06-21 15:14:28.820', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (65, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:30', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '56.35175ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:29.825', '2023-06-21 15:14:29.825', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (66, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:31', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '57.310917ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:30.822', '2023-06-21 15:14:30.822', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (67, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:32', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '59.553458ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:31.823', '2023-06-21 15:14:31.823', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (68, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:33', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '50.874333ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:32.814', '2023-06-21 15:14:32.814', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (69, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:34', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '60.342833ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:33.828', '2023-06-21 15:14:33.828', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (70, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:35', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '52.949625ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:34.844', '2023-06-21 15:14:34.844', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (71, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:36', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '37.246209ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:35.812', '2023-06-21 15:14:35.812', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (72, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:37', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '56.611375ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:36.822', '2023-06-21 15:14:36.822', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (73, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:38', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '50.119208ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:37.837', '2023-06-21 15:14:37.837', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (74, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:39', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '60.217667ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:38.839', '2023-06-21 15:14:38.839', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (75, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:40', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '58.882333ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:39.831', '2023-06-21 15:14:39.831', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (76, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:14:41', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '39.941584ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:14:40.832', '2023-06-21 15:14:40.832', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (77, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:30', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '36.393292ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:30.124', '2023-06-21 15:16:30.124', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (78, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:31', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '38.46525ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:31.081', '2023-06-21 15:16:31.081', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (79, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:32', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '57.8235ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:32.171', '2023-06-21 15:16:32.171', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (80, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:33', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '58.420083ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:33.157', '2023-06-21 15:16:33.157', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (81, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:34', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '49.988958ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:33.885', '2023-06-21 15:16:33.885', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (82, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:35', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '58.17875ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:34.823', '2023-06-21 15:16:34.823', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (83, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:36', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '54.350208ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:35.820', '2023-06-21 15:16:35.820', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (84, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:37', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '58.015625ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:36.831', '2023-06-21 15:16:36.831', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (85, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:38', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '64.097208ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:38.019', '2023-06-21 15:16:38.019', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (86, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:39', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '50.871083ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:39.207', '2023-06-21 15:16:39.207', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (87, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:40', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '50.903833ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:40.126', '2023-06-21 15:16:40.126', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (88, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:41', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '52.142334ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:41.157', '2023-06-21 15:16:41.157', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (89, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:42', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '50.594209ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:42.143', '2023-06-21 15:16:42.143', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (90, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:43', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '49.958291ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:43.102', '2023-06-21 15:16:43.102', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (91, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:44', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '39.10425ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:44.150', '2023-06-21 15:16:44.150', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (92, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:45', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '52.047959ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:45.147', '2023-06-21 15:16:45.147', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (93, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:46', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '51.250458ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:46.151', '2023-06-21 15:16:46.151', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (94, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:47', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '49.905084ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:47.117', '2023-06-21 15:16:47.117', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (95, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:48', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '39.12925ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:48.117', '2023-06-21 15:16:48.117', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (96, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:49', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '24.91675ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:49.109', '2023-06-21 15:16:49.109', 1, 1);
INSERT INTO `sys_opera_log` (`id`, `title`, `business_type`, `business_types`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `status`, `oper_time`, `json_result`, `remark`, `latency_time`, `user_agent`, `created_at`, `updated_at`, `create_by`, `update_by`) VALUES (97, '', '', '', '', 'GET', '', 'admin', '', '/api/v1/server-monitor', '::1', '', '', '2', '2023-06-21 15:16:50', '{\"bootTime\":197,\"code\":200,\"cpu\":{\"cpuInfo\":[{\"cpu\":0,\"vendorId\":\"\",\"family\":\"0\",\"model\":\"0\",\"steppi', '', '24.824167ms', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', '2023-06-21 15:16:50.125', '2023-06-21 15:16:50.125', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT,
  `post_name` varchar(128) DEFAULT NULL,
  `post_code` varchar(128) DEFAULT NULL,
  `sort` tinyint DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`post_id`),
  KEY `idx_sys_post_create_by` (`create_by`),
  KEY `idx_sys_post_update_by` (`update_by`),
  KEY `idx_sys_post_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_post` (`post_id`, `post_name`, `post_code`, `sort`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, '首席执行官', 'CEO', 0, 2, '首席执行官', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
INSERT INTO `sys_post` (`post_id`, `post_name`, `post_code`, `sort`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, '首席技术执行官', 'CTO', 2, 2, '首席技术执行官', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
INSERT INTO `sys_post` (`post_id`, `post_name`, `post_code`, `sort`, `status`, `remark`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, '首席运营官', 'COO', 3, 2, '测试工程师', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT,
  `role_name` varchar(128) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `role_key` varchar(128) DEFAULT NULL,
  `role_sort` bigint DEFAULT NULL,
  `flag` varchar(128) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `data_scope` varchar(128) DEFAULT NULL,
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`role_id`),
  KEY `idx_sys_role_create_by` (`create_by`),
  KEY `idx_sys_role_update_by` (`update_by`),
  KEY `idx_sys_role_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` (`role_id`, `role_name`, `status`, `role_key`, `role_sort`, `flag`, `remark`, `admin`, `data_scope`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, '系统管理员', '2', 'admin', 1, '', '', 1, '', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
INSERT INTO `sys_role` (`role_id`, `role_name`, `status`, `role_key`, `role_sort`, `flag`, `remark`, `admin`, `data_scope`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, '小梁', '2', '技术', 1, '', '', 0, '1', 0, 0, '2023-06-21 16:01:07.348', '2023-06-26 17:43:43.604', '2023-06-27 10:05:04.031');
INSERT INTO `sys_role` (`role_id`, `role_name`, `status`, `role_key`, `role_sort`, `flag`, `remark`, `admin`, `data_scope`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, '基础管理员', '2', 'basic', 1, '', '', 0, '', 0, 0, '2023-06-27 10:02:19.192', '2023-06-27 10:02:19.192', '2023-06-27 10:03:27.196');
INSERT INTO `sys_role` (`role_id`, `role_name`, `status`, `role_key`, `role_sort`, `flag`, `remark`, `admin`, `data_scope`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, '开发人员配置', '2', 'development', 1, '', '', 0, '', 0, 0, '2023-06-27 10:04:56.520', '2023-06-27 10:04:56.520', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` smallint NOT NULL,
  `dept_id` smallint NOT NULL,
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL,
  `menu_id` bigint NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`),
  KEY `fk_sys_role_menu_sys_menu` (`menu_id`),
  CONSTRAINT `fk_sys_role_menu_sys_menu` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`menu_id`),
  CONSTRAINT `fk_sys_role_menu_sys_role` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 3);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 43);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 44);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 45);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 46);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 58);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 59);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 60);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 61);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 62);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 211);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 212);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 216);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 236);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 237);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 238);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 239);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 240);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 241);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 242);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 243);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 244);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 245);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 246);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 247);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 248);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 249);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 250);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 251);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 261);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 262);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 264);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 269);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 459);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 460);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 461);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 462);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 463);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 464);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 471);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 528);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 529);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 531);
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (4, 537);
COMMIT;

-- ----------------------------
-- Table structure for sys_tables
-- ----------------------------
DROP TABLE IF EXISTS `sys_tables`;
CREATE TABLE `sys_tables` (
  `table_id` bigint NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) DEFAULT NULL,
  `table_comment` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `tpl_category` varchar(255) DEFAULT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `module_front_name` varchar(255) DEFAULT NULL COMMENT '前端文件名',
  `business_name` varchar(255) DEFAULT NULL,
  `function_name` varchar(255) DEFAULT NULL,
  `function_author` varchar(255) DEFAULT NULL,
  `pk_column` varchar(255) DEFAULT NULL,
  `pk_go_field` varchar(255) DEFAULT NULL,
  `pk_json_field` varchar(255) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  `tree_code` varchar(255) DEFAULT NULL,
  `tree_parent_code` varchar(255) DEFAULT NULL,
  `tree_name` varchar(255) DEFAULT NULL,
  `tree` tinyint(1) DEFAULT '0',
  `crud` tinyint(1) DEFAULT '1',
  `remark` varchar(255) DEFAULT NULL,
  `is_data_scope` tinyint DEFAULT NULL,
  `is_actions` tinyint DEFAULT NULL,
  `is_auth` tinyint DEFAULT NULL,
  `is_logical_delete` varchar(1) DEFAULT NULL,
  `logical_delete` tinyint(1) DEFAULT NULL,
  `logical_delete_column` varchar(128) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`table_id`),
  KEY `idx_sys_tables_update_by` (`update_by`),
  KEY `idx_sys_tables_deleted_at` (`deleted_at`),
  KEY `idx_sys_tables_create_by` (`create_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_tables
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编码',
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `password` varchar(128) DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(128) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `role_id` bigint DEFAULT NULL COMMENT '角色ID',
  `salt` varchar(255) DEFAULT NULL COMMENT '加盐',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `email` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `dept_id` bigint DEFAULT NULL COMMENT '部门',
  `post_id` bigint DEFAULT NULL COMMENT '岗位',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` varchar(4) DEFAULT NULL COMMENT '状态',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`user_id`),
  KEY `idx_sys_user_create_by` (`create_by`),
  KEY `idx_sys_user_update_by` (`update_by`),
  KEY `idx_sys_user_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`user_id`, `username`, `password`, `nick_name`, `phone`, `role_id`, `salt`, `avatar`, `sex`, `email`, `dept_id`, `post_id`, `remark`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 'admin', '$2a$10$/Glr4g9Svr6O0kvjsRJCXu3f0W8/dsP3XZyVNi1019ratWpSPMyw.', '小梁同学', '13818888888', 1, '', '', '0', '1692328769@qq.com', 1, 1, '', '2', 1, 1, '2021-05-13 19:56:37.914', '2023-06-21 16:03:43.399', NULL);
INSERT INTO `sys_user` (`user_id`, `username`, `password`, `nick_name`, `phone`, `role_id`, `salt`, `avatar`, `sex`, `email`, `dept_id`, `post_id`, `remark`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 'xiaoliang', '$2a$10$ZmWlY/KeawJM/kwm0kqTOeKnKAXhH4oNPE2QfOfEyyzLArLugPPHa', 'xiaoliang', '17673090413', 4, '', '/static/uploadfile/e37e5b87-8e70-4021-8be7-0ad7175dd31d.jpg', '0', '1692328769@qq.com', 12, 0, '', '2', 1, 0, '2023-06-21 16:04:39.175', '2023-06-27 10:06:03.826', NULL);
COMMIT;

-- ----------------------------
-- Table structure for tb_demo
-- ----------------------------
DROP TABLE IF EXISTS `tb_demo`;
CREATE TABLE `tb_demo` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `name` varchar(128) DEFAULT NULL COMMENT '名称',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`),
  KEY `idx_tb_demo_deleted_at` (`deleted_at`),
  KEY `idx_tb_demo_create_by` (`create_by`),
  KEY `idx_tb_demo_update_by` (`update_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tb_demo
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
