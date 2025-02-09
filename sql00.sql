-- #创建一个数据库
CREATE DATABASE db01;
-- #显示所有数据库
SHOW DATABASES;
-- #删除数据库
DROP DATABASE db01;
-- 创建数据库设定字符集 并选择排序模式为区分大小写
CREATE DATABASE db02 CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
-- 查找info表中所有字段中 name 为 tom 的
SELECT * FROM info WHERE NAME = 'tom';
-- 查看创建指定数据库的指令是什么
SHOW CREATE DATABASE GYH01;
-- 查看当前登录的用户信息
SELECT USER();
-- 备份数据库 注意 下面的命令应该在terminal中运行
# mysqldump -u root -p -B database_name 这里可以写多个数据库(空格分开) > output_file.sql
-- 如果备份的既有数据库又有表 -B 的选项
# mysqldump -u root -p 数据库1 数据库2 表3 表1 > output_file.sql
-- 加载备份的数据库 注意下面的指令应该在 mysql的terminal中运行 首先
-- 应该通过 mysql -u root -p 进入mysql的命令行界面
# source output_file.sql 

-- 创建一个表 
-- CREATE TABLE `table01` (
-- 
-- 	`id` 	 INT,
-- 	`name` VARCHAR(255),
-- 	`birthday` DATE
-- ) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin ENGINE INNODB;
-- 表的字符集  校验规则 和引擎不是必须写的, 默认会应用数据库的设置
-- 默认数值类型的是有符号的 如果要无符号的 要在后面加上 UNSIGNED 关键字
CREATE TABLE `table01` (

	`id` 	 INT,
	`name` VARCHAR(255),
	`birthday` DATE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin ;


CREATE TABLE 	`time_practice` (

	birthday DATE,
	job_time DATETIME,
	login_time TIMESTAMP
		NOT NULL 
		DEFAULT CURRENT_TIMESTAMP
		ON UPDATE CURRENT_TIMESTAMP
);
SELECT * FROM `time_practice`;
INSERT INTO `time_practice`(birthday, job_time) 
				VALUES ('2011-02-23', '2022-02-03 11:11:11');
				
				
# 修改表的练习

-- 在指定表中添加列
ALTER TABLE `time_practice` 
		ADD image VARCHAR(32)
				NOT NULL
				DEFAULT ''
				AFTER job_time;
DESC `time_practice`;

-- 在指定表中修改列
ALTER TABLE `time_practice`
		MODIFY image VARCHAR(60)
		NOT NULL
		DEFAULT 'test';
DESC `time_practice`;

-- 在指定表中删除列
ALTER TABLE `time_practice`
		DROP image;
DESC `time_practice`;

-- 重命名指定的表
RENAME TABLE `time_practice` to `practice`;
DESC `practice`;

-- 重新设定表的字符集
ALTER TABLE `practice` CHARACTER SET utf8mb4;
DESC `practice`;

-- 修改指定列的名称和属性
ALTER TABLE `practice` CHANGE
	`job_time` `jobTime` VARCHAR(60) NOT NULL DEFAULT 'test02';
DESC `practice`;

ALTER TABLE `practice` RENAME COLUMN `birthday` TO `id`;
DESC `practice`;

ALTER TABLE `practice` 
		MODIFY id INT;
DESC `practice`;

ALTER TABLE `practice`
		RENAME COLUMN `jobTime` TO `describe`;
DESC `practice`;

-- 插入数据
INSERT INTO `practice` (`id`, `describe`)
			VALUES (01, '01的描述');
SELECT * FROM `practice`;
-- 因为id的列设置了可以为空 因此可以设置为null
INSERT INTO `practice` (`id`, `describe`)
			VALUES (NULL, 'null的描述');
SELECT * FROM `practice`;

INSERT INTO `practice` (`id`, `describe`)
			VALUES (03, '03的描述'), (04, '04的描述');
SELECT * FROM `practice`;

-- 修改数据  下面的语句因为没有带 WHERE 因此会修改所有的id字段为设定的值
UPDATE `practice` SET id = 0;
SELECT * FROM `practice`;

UPDATE `practice`
		SET id = 01
		WHERE `describe` = '01的描述';
SELECT * FROM `practice`;

UPDATE `practice`
		SET id = id + 1
		WHERE `describe` = '01的描述';
SELECT * FROM `practice`;

UPDATE `practice`
		SET id = id + 1, `describe` = 'jajaja'
		WHERE `describe` = '01的描述';
SELECT * FROM `practice`;

-- 删除数据 如果不加 WHERE 会删除整个表的数据
DELETE FROM `practice`
		WHERE `describe` = '03的描述';
SELECT * FROM `practice`;



