-- 查询加强

-- 使用 where 子句 查找 1992.1.1后入职的员工
-- 在mysql中, 日期类型可以直接比较
SELECT * FROM emp 
			WHERE hiredate > '1002-01-01';
-- 如何使用like操作符(模糊)
-- 			%: 表示0到多个任意字符
-- 			_: 表示单个任意字符
-- Practice: 如何显示首字符为S的员工姓名和工资 ? 
SELECT * from emp
				 WHERE ename LIKE 'S%';
-- Practice: 如何显示第三个字符为大写o的所有员工的姓名和工资 ? 
SELECT * from emp
				 WHERE ename LIKE '__O%';
-- Practice: 如何显示没有上级员工信息 ? 
SELECT * from emp
				 WHERE mgr IS NULL;
-- 查询表的结构
DESC emp;
-- 使用 ORDER BY 子句
-- Practice: 如哈按照工资从低到高
SELECT * FROM emp ORDER BY sal ASC;
-- Practice: 按照部门排序 然后在此基础上按照薪水排序
SELECT * FROM emp ORDER BY deptno DESC, sal ASC;











