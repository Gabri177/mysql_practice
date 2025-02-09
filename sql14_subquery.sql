-- 子查询
-- Practice: 1: 如何显示与SMITH同一部门的所有员工? 
SELECT * FROM emp;

# 这里要注意, 子查询中不能用 select *, 必须返回单列数据
# 如果子查询可能返回多个值, 应该使用 "IN" 而不是使用 "="
SELECT * 
FROM emp
WHERE deptno = (
	SELECT deptno
	FROM emp
	WHERE ename = 'SMITH'
);
-- 如何查询和部门10的工作相同的雇员的名字, 岗位, 工资, 部门号, 但是不包含10自己的雇员
SELECT * FROM emp WHERE job IN (SELECT DISTINCT job FROM emp WHERE deptno = 10) AND deptno != 10;
-- 子查询也可以当做临时表 放在 FROM() 内被引用