-- 分页查询
-- 按雇员的id号升序取出，每页品示3条记录，请分別品示第1页，第2页，第3页
-- limit num, row 后面的两个数字 第一个表示从num+1行开始取, 取出 row 行. num是从0开始计算的
-- 第一页
SELECT * FROM emp	
				ORDER BY empno
				LIMIT 0, 3;
-- 第二页
SELECT * FROM emp	
				ORDER BY empno
				LIMIT 3, 3;
-- 第三页
SELECT * FROM emp	
				ORDER BY empno
				LIMIT 6, 3;							