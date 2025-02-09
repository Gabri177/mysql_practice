-- 自连接
-- 显示公司员工的名字和他的上级的名字
# 在上面这个问题中 员工 和 上级 是通过emp表的mgr列相互关联
# 这就意味着 我们要的数据都在同一张表中
# 但是自连接的想法就是 将一张相同的表当成两张表进行处理
SELECT * FROM emp;
# 我们如下 给同一张表不同的别名 (最好不要用 AS 像Oracle的数据库就不支持as来进行表的别名)
SELECT worker.ename as 'worker_name', boss.ename AS 'boss_name' FROM emp worker, emp boss 
																WHERE worker.mgr IS NOT NULL
																AND worker.mgr = boss.empno;
