-- all any
-- Practice: 显示工资比部门30的所有员工的工资高的员工的姓名, 工资和部门号
SELECT deptno, ename, sal FROM emp WHERE sal > ALL(SELECT sal FROM emp WHERE deptno = 30);
-- Practice: 如何显示工资比部门30的其中一个员工的工资高的员工的姓名, 工资和部门号
SELECT deptno, ename, sal FROM emp WHERE sal > ANY(SELECT sal FROM emp WHERE deptno = 30);
