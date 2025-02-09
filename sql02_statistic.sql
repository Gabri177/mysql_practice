-- COUNT 返回查询条目的总行数
SELECT COUNT(*) FROM student;
-- 可以加入 WHERE 进行条件的限定
SELECT COUNT(*) FROM student WHERE id > 4;
-- 解释：count(*）返回满足条件的记录的行数 
-- count（列）：统计满足条件的某列有多少个，但是会排除为null的情况

-- SUM 求和函数
SELECT SUM(math) FROM student;
SELECT SUM(math), SUM(english), SUM(chinese) FROM student;
SELECT SUM(math) AS T_MATH, SUM(english) AS T_ENG, SUM(chinese) AS T_CHI FROM student;
-- 某一列的均值  
-- 需要注意的是 sum 仅对数值起作用, 对其他类型的数据没有意义
SELECT SUM(math) / COUNT(math) as aver_math FROM student;


-- AVG 求平均分
SELECT AVG(math) as avg_math FROM student;
SELECT AVG(math + chinese + english) FROM student;


-- MAX 和 MIN
SELECT MAX(math) FROM student;
SELECT MIN(math) FROM student;