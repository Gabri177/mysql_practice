-- 表类型和存储引擎

-- 查看所有的存储引擎
SHOW ENGINES
-- innodb 存储引擎，是前面使用过.
-- 1. 支持事务 2. 支持外键 3. 支持行级锁

-- myisam 存储引擎
CREATE TABLE table16 (
	id INT,
	`name` VARCHAR(32)) ENGINE MYISAM
-- 1. 添加速度快 2. 不支持外键和事务 3. 支持表级锁

START TRANSACTION;
SAVEPOINT t1;
INSERT INTO table16 VALUES(1, 'jack');
SELECT * FROM table16;
ROLLBACK TO t1;

-- memory 存储引擎
-- 1. 数据存储在内存中[关闭了Mysql服务，数据丢失, 但是表结构还在] 
-- 2. 执行速度很快(没有IO读写) 3. 默认支持索引(hash表)

CREATE TABLE table17 (
	id INT,
	`name` VARCHAR(32)) ENGINE MEMORY;
DESC table17;
INSERT INTO table17
	VALUES(1,'tom'), (2,'jack'), (3, 'hsp');
SELECT * FROM table17;

-- 指令修改存储引擎
ALTER TABLE `table17` ENGINE = INNODB