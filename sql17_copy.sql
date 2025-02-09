-- 表的复制

CREATE TABLE table02 (

	id 		 INT,
	`name` VARCHAR(30),
	sal    DOUBLE,
	job 	 VARCHAR(30),
	deptno INT
);
DESC table02;
SELECT * FROM table02;
--  演示如何自我复制
-- 1. 先把emp 表的记录复制到table02
INSERT INTO table02 (id, `name`, sal, job, deptno)
				SELECT empno, ename, sal, job, deptno FROM emp;
-- 2.自我复制
INSERT INTO table02
				SELECT * FROM table02;
SELECT COUNT(*) FROM table02;
-- 如何删除一张表中的重复记录
-- 1.先创建一张表 table03
-- 2.让table03中有重复的记录
CREATE TABLE table03 LIKE emp;
SELECT * FROM table03;
INSERT INTO table03 SELECT * FROM emp;
-- 3.考虑去重
CREATE TABLE temp like table03;
INSERT INTO temp SELECT DISTINCT * FROM table03;
DELETE FROM table03;
INSERT INTO table03 SELECT * FROM temp;
DROP TABLE temp;
SELECT * FROM table03;