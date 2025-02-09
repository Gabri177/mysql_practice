-- 增强group by 的使用
-- Practice: 1> 显示每种岗位的雇员总数, 平均工资
SELECT COUNT(*), AVG(sal), job
				FROM emp
				GROUP BY job;
-- Practice: 2> 显示雇员总数, 以及获得补助的雇员数
SELECT COUNT(*), COUNT(comm)
				FROM emp;
-- Practice: 3> 显示管理者的总人数
SELECT COUNT(DISTINCT mgr) FROM emp;
-- Practice: 4> 显示雇员工资的最大差额
SELECT MAX(sal) - MIN(sal) FROM emp;
-- Practice: 5> 统计各个部门的平均工资, 并且是大于1000的, 并且按照平均工资从高到低排序, 取出前两行记录
SELECT * FROM emp;
SELECT deptno, AVG(sal) as av_sal
FROM emp
GROUP BY deptno
HAVING av_sal > 1000
ORDER BY av_sal DESC
LIMIT 0, 2;