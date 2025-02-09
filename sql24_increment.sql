-- 演示自增长的使用
-- 创建表
CREATE TABLE table11
	(
		 id 				INT PRIMARY KEY AUTO_INCREMENT,
		 email 			VARCHAR(32)NOT NULL DEFAULT '',
		 `name` 		VARCHAR(32)NOT NULL DEFAULT ''
	 ); 
DESC table11
-- 测试自增长的使用
INSERT INTO table11
	VALUES(NULL, 'tom@qq.com', 'tom');

INSERT INTO table11
	(email, `name`) VALUES('test@sohu.com', 'hsp');

SELECT * FROM table11;

-- 修改默认的自增长开始值

CREATE TABLE table12
	(
		 id 			INT PRIMARY KEY AUTO_INCREMENT,
		 email 		VARCHAR(32)NOT NULL DEFAULT '',
		 `name` 	VARCHAR(32)NOT NULL DEFAULT ''
	 );
ALTER TABLE table12 AUTO_INCREMENT = 100	
INSERT INTO table12
	VALUES(NULL, 'mary@qq.com', 'mary');
INSERT INTO table12
	VALUES(666, 'abc@qq.com', 'hsp');
SELECT * FROM table12;

CREATE DATABASE tmp;
CREATE TABLE dept( /*部门表*/
	deptno 		MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
	dname 		VARCHAR(20) NOT NULL DEFAULT "",
	loc 			VARCHAR(13) NOT NULL DEFAULT ""
) ;

#创建表EMP雇员
CREATE TABLE emp
(
		empno  		MEDIUMINT UNSIGNED  NOT NULL  DEFAULT 0, /*编号*/
		ename 		VARCHAR(20) NOT NULL DEFAULT "", /*名字*/
		job 			VARCHAR(9) NOT NULL DEFAULT "",/*工作*/
		mgr 			MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,/*上级编号*/
		hiredate 	DATE NOT NULL,/*入职时间*/
		sal 			DECIMAL(7,2)  NOT NULL,/*薪水*/
		comm 			DECIMAL(7,2) NOT NULL,/*红利*/
		deptno 		MEDIUMINT UNSIGNED NOT NULL DEFAULT 0 /*部门编号*/
) ;

#工资级别表
CREATE TABLE salgrade
(
		grade 		MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
		losal 		DECIMAL(17,2)  NOT NULL,
		hisal 		DECIMAL(17,2)  NOT NULL
);

#测试数据
INSERT INTO salgrade VALUES (1,700,1200);
INSERT INTO salgrade VALUES (2,1201,1400);
INSERT INTO salgrade VALUES (3,1401,2000);
INSERT INTO salgrade VALUES (4,2001,3000);
INSERT INTO salgrade VALUES (5,3001,9999);	


