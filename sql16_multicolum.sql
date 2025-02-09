-- 多列子查询
-- Practice: 如何查询与allen的部门和岗位完全相同的所有雇员(并且不包含其本身)
SELECT * FROM emp;

SELECT * FROM emp WHERE (deptno, job) = (SELECT deptno, job FROM emp WHERE ename = 'ALLEN') AND ename != 'ALLEN';