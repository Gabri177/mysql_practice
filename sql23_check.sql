-- 演示check的使用
-- 学习 oracle, sql server, 这两个数据库是真的生效.

-- 测试
CREATE TABLE table10 (
	id 			INT PRIMARY KEY,
	`name` 	VARCHAR(32) ,
	sex 		VARCHAR(6) CHECK (sex IN('man','woman')),
	sal 		DOUBLE CHECK ( sal > 1000 AND sal < 2000)
	);
	
-- 添加数据
INSERT INTO table10 
	VALUES(1, 'jack', 'mid', 1);
SELECT * FROM table10;