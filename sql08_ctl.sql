-- 流程控制函数的使用

-- IF(expr1，expr2，expr3）如果expr1为true，则返回 expr2否则返回 expr3
SELECT IF(TRUE, 'aaa', 'bbbb') FROM DUAL;
-- IFNULL (expr1， expr2) 如果expr1不为空NULL，则返回expr1，否则返回expr2
SELECT IFNULL(NULL, 'ccccc') FROM DUAL;
SELECT IFNULL('dddddddddddd', 'ccccc') FROM DUAL;
-- SELECT CASE WHEN expr1 THEN expr2 WHEN expr3 THEN expr4 ELSE expr5 END; [类似多重分支J 
-- 									如果expr1 为TRUE,则返回expr2,如果expr2为t,返回 expr4,否则返回 expr5

-- SELECT CASE case_value
-- 	WHEN when_value THEN
-- 		statement_list
-- 	ELSE
-- 		statement_list
-- END CASE;

-- Practice: 查询emp表 如果comm为null 则显示 0.0
-- Note: 注意判断是否为NUll的时候 应该用 IS  而不是用 等号 判断不为空 要用 IS NULL
SELECT ename, IF(comm IS NULL, 0.0 , comm) FROM emp;
-- 第二种方法, 更简洁的方法
SELECT ename, IFNULL(comm, 0.0) FROM emp;
-- 如果 emp 表的 job 是 CLERK 则显示 职员, 如果是 MANAGER 则显示经理
--    如果是 SALESMAN 则显示 销售人员, 其他正常显示
SELECT ename, CASE job
								WHEN 'CLERK' THEN '职员'
								WHEN 'MANAGER' THEN '经理'
								ELSE '销售人员'
							END AS job_cn FROM emp;
							
SELECT ename, (SELECT CASE
								WHEN job = 'CLERK' THEN '职员'
								WHEN job = 'MANAGER' THEN '经理'
								ELSE '销售人员'
								END 
							) AS job_cn2
							FROM emp;















