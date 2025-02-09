-- 演示mysql的索引的使用
-- 创建索引
CREATE TABLE table13 (
	id INT ,
	`name` VARCHAR(32));
	
-- 查询表是否有索引
SHOW INDEXES FROM table13;
-- 添加索引
-- 添加唯一索引 
CREATE UNIQUE INDEX id_index ON table13 (id);
-- 添加普通索引方式1
CREATE INDEX id_index ON table13 (id);
-- 如何选择 
-- 1. 如果某列的值，是不会重复的，则优先考虑使用unique索引, 否则使用普通索引
-- 添加普通索引方式2
ALTER TABLE table13 ADD INDEX id_index (id)

-- 添加主键索引
CREATE TABLE table14 (
	id INT ,
	`name` VARCHAR(32));
ALTER TABLE table14 ADD PRIMARY KEY (id)

SHOW INDEX FROM table13

-- 删除索引
DROP INDEX id_index ON table13
-- 删除主键索引
ALTER TABLE table14 DROP PRIMARY KEY


-- 修改索引 ， 先删除，在添加新的索引

-- 查询索引
-- 1. 方式
SHOW INDEX FROM table13
-- 2. 方式
SHOW INDEXES FROM table13
-- 3. 方式
SHOW KEYS FROM table13
-- 4 方式
DESC table13





