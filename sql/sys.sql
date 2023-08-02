#查询登陆的管理员
SELECT * FROM `sys_user` WHERE (username = 'admin'  and status = '2') AND `sys_user`.`deleted_at` IS NULL ORDER BY `sys_user`.`user_id` LIMIT 1;

#查询角色信息
SELECT * FROM `sys_role` WHERE role_id = 1  AND `sys_role`.`deleted_at` IS NULL ORDER BY `sys_role`.`role_id` LIMIT 1;

#
SELECT * FROM `sys_user` WHERE `sys_user`.`user_id` = 1 AND `sys_user`.`deleted_at` IS NULL ORDER BY `sys_user`.`user_id` LIMIT 1;

#
SELECT * FROM `sys_menu` WHERE ( menu_type in ('M','C') and deleted_at is null) AND `sys_menu`.`deleted_at` IS NULL ORDER BY sort;

#
SELECT * FROM `sys_api` WHERE `sys_api`.`deleted_at` IS NULL LIMIT 10;

#
SELECT count(*) FROM `sys_api` WHERE `sys_api`.`deleted_at` IS NULL;
