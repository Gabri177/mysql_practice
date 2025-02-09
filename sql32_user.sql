-- Mysql用户的管理
-- 原因：当我们做项目开发时，可以根据不同的开发人员，赋给他相应的Mysql操作权限
-- 所以，Mysql数据库管理人员(root), 根据需要创建不同的用户，赋给相应的权限，供人员使用

-- 1. 创建新的用户
-- 解读 (1) 'test'@'localhost' 表示用户的完整信息 'test' 用户名 'localhost' 登录的IP
-- (2) 123456 密码, 但是注意 存放到 mysql.user表时，是password('123456') 加密后的密码
--     *6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9
CREATE USER 'test'@'localhost' IDENTIFIED BY '123456';

SELECT `host`, `user`, authentication_string  
	FROM mysql.user;

-- 2. 删除用户
DROP USER 'test'@'localhost'

-- 3. 登录

-- root 用户修改 test@localhost 密码, 是可以成功.
-- SET PASSWORD FOR 'test'@'localhost' = PASSWORD('123456'); password已经弃用
ALTER USER 'test'@'localhost' IDENTIFIED BY '123456';

