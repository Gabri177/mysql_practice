-- select 语句的练习

CREATE TABLE `student` (
		`id` 			INT
							NOT NULL
							DEFAULT 1,
		`name`		VARCHAR(20)
							NOT NULL
							DEFAULT '',
		`chinese`	FLOAT
							NOT NULL
							DEFAULT 0.0,
		`english`	FLOAT
							NOT NULL
							DEFAULT 0.0,
		`math`		FLOAT
							NOT NULL
							DEFAULT 0.0
);

INSERT INTO `student` (`id`, `name`, `chinese`, `english`, `math`)
						 VALUES (1, '张三', 11, 22, 33);
INSERT INTO `student` (`id`, `name`, `chinese`, `english`, `math`)
						 VALUES (2, '李四', 22, 33, 44);
INSERT INTO `student` (`id`, `name`, `chinese`, `english`, `math`)
						 VALUES (3, '王五', 33, 44, 55);
INSERT INTO `student` (`id`, `name`, `chinese`, `english`, `math`)
						 VALUES (4, '赵六', 44, 55, 66);
INSERT INTO `student` (`id`, `name`, `chinese`, `english`, `math`)
						 VALUES (5, '孙七', 55, 66, 77);
INSERT INTO `student` (`id`, `name`, `chinese`, `english`, `math`)
						 VALUES (6, '王八', 66, 77, 88);

-- 查询表中的所有信息
SELECT * FROM student;
-- 仅仅查询表中所需字段的所有信息
SELECT `id`, `english` FROM student;
-- 过滤掉表中重复的数据

# 我们先修改某一行某一个字段的数据 

UPDATE student SET `math` = 66 WHERE id = 2;

SELECT DISTINCT `math` FROM student; -- 这样只显示了一个 66 原来在修改过后有两个 66 

-- 我们现在创建一个新的列用来统计学生的总分

ALTER TABLE student
		ADD total FLOAT
		NOT NULL
		DEFAULT 0;
DESC student;

UPDATE student SET total = `chinese` + `math` + `english`;
SELECT * FROM student;

-- 用 select 的方法去计算总分
SELECT id, `name`, (chinese + english + math) FROM student;
SELECT id, `name`, (chinese + english + math) AS total_select FROM student;

-- 结合where查询指定字段
SELECT * FROM student WHERE id = 3;
SELECT * FROM student WHERE english > 50;
SELECT * FROM student WHERE english + chinese + math > 200;
SELECT * FROM student WHERE math > 50 AND id > 4;
SELECT * FROM student WHERE math > chinese;
-- 模糊查询 %三 表示选中字段以 '三' 结尾就可以
SELECT * FROM student WHERE `name` LIKE '%三';
SELECT * FROM student WHERE english IN (22, 44, 66);
SELECT * FROM student WHERE english BETWEEN 22 AND 66;

-- ORDER BY 命令
SELECT * FROM student ORDER BY total DESC;

				 