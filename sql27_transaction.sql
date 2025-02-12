-- 事务的一个重要的概念和具体操作
-- 看一个图[看示意图]
-- 演示
-- 1. 创建一张测试表
CREATE TABLE table15
	( 
				id 			INT,
				`name` 	VARCHAR(32)
		);
SELECT * FROM table15;
-- 2. 开始事务
START TRANSACTION;
-- 3. 设置保存点
SAVEPOINT a;
-- 执行dml 操作
INSERT INTO table15 VALUES(100, 'tom');
SELECT * FROM table15;

SAVEPOINT b;
-- 执行dml操作
INSERT INTO table15 VALUES(200, 'jack');

-- 回退到 b
ROLLBACK TO b;
-- 继续回退 a
ROLLBACK TO a;
-- 如果这样, 表示直接回退到事务开始的状态.
ROLLBACK;
COMMIT;

