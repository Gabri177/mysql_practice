-- 多表查询
# 注意 默认不是合并两张表 而是以 "笛卡尔集"的方式 返回一张新的表
# 可以理解为 第一张表的每一行数据与第二张表的每一行数据进行合并
# 比如 第一张表只有两行行数据 第二张表有4行 那么新表中会有8行数据
# 该数据为 第一张表的一行数据分别于第二张表的4行数据进行合并
# 以此类推
# 解决多表问题的关键是写出正确的过滤条件 where
SELECT * FROM emp, dept;
-- 因此 程序员应该分析 得到目标表的所需要的过滤条件
# 注意: 表的查询条件 不能少于表的个数 - 1
# 		比如下面的语句, 我们要查询两个表, 那么过滤条件应该至少为 2 - 1 = 1个
#     否则会出现笛卡尔集
SELECT * FROM emp, dept WHERE emp.deptno = dept.deptno;
-- Practice: 1> 如何显示部门号为10的部门名, 员工名和工资
SELECT dname, ename, sal FROM emp, dept 
												 WHERE emp.deptno = dept.deptno
												 AND emp.deptno = 10;
-- 显示各个员工的姓名, 工资, 以及工资的级别
SELECT ename, sal, grade FROM emp, salgrade
												WHERE sal < hisal
												AND sal > losal;