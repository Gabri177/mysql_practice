-- 主键使用

-- id	name 	email
CREATE TABLE table04
	(
		id 			INT PRIMARY KEY, -- 表示id列是主键 
		`name` 	VARCHAR(32),
		email 	VARCHAR(32)
	);
	
-- 主键列的值是不可以重复
INSERT INTO table04
	VALUES(1, 'jack', 'jack@sohu.com');
INSERT INTO table04
	VALUES(2, 'tom', 'tom@sohu.com');
INSERT INTO table04
	VALUES(1, 'sandi', 'hsp@sohu.com');
	
SELECT * FROM table04;

-- 主键使用的细节讨论
-- primary key不能重复而且不能为 null。
INSERT INTO table04
	VALUES(NULL, 'sandi', 'hsp@sohu.com');
-- 一张表最多只能有一个主键, 但可以是复合主键(比如 id+name)
CREATE TABLE table05
	(
		id 			INT PRIMARY KEY, -- 表示id列是主键 
		`name` 	VARCHAR(32), PRIMARY KEY -- 错误的
		email 	VARCHAR(32)
	);
-- 演示复合主键 (id 和 name 做成复合主键)
CREATE TABLE table05
	(
		id 			INT , 
		`name` 	VARCHAR(32), 
		email 	VARCHAR(32),
		PRIMARY KEY (id, `name`) -- 这里就是复合主键
	);

INSERT INTO table05
	VALUES(1, 'tom', 'tom@sohu.com');
INSERT INTO table05
	VALUES(1, 'jack', 'jack@sohu.com');
INSERT INTO table05
	VALUES(1, 'tom', 'xx@sohu.com'); -- 这里就违反了复合主键
SELECT * FROM table05;

-- 主键的指定方式 有两种 
-- 1. 直接在字段名后指定：字段名  primakry key
-- 2. 在表定义最后写 primary key(列名); 
CREATE TABLE table06
	(
			id 			INT , 
			`name` 	VARCHAR(32) PRIMARY KEY, 
			email 	VARCHAR(32)
	);

CREATE TABLE table07
	(
			id 			INT , 
			`name` 	VARCHAR(32) , 
			email 	VARCHAR(32),
			PRIMARY KEY(`name`) -- 在表定义最后写 primary key(列名)
	);
 
-- 使用desc 表名，可以看到primary key的情况

DESC table07; -- 查看 table07表的结果，显示约束的情况
DESC table05;
