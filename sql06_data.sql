-- 时间日期相关的函数

-- CURRENT_DATE () 当前日期
SELECT CURRENT_DATE FROM DUAL;
SELECT CURRENT_DATE() FROM DUAL;
-- CURRENT_TIME()  当亲时间
SELECT CURRENT_TIME FROM DUAL;
SELECT CURRENT_TIME() FROM DUAL;
-- CURRENT_TIMESTAMP ()  当前时间戳
SELECT CURRENT_TIMESTAMP FROM DUAL;
SELECT CURRENT_TIMESTAMP() FROM DUAL;


-- 创建测试信息表
CREATE TABLE mes (
		id				INT,
		content 	VARCHAR(30),
		send_time	DATETIME
);

INSERT INTO mes (id, content, send_time) 
		VALUES (1, "jajaja", CURRENT_TIMESTAMP);
INSERT INTO mes (id, content, send_time) 
		VALUES (2, "jajaja2", NOW()),
					 (3, "jajaja3", '2020-3-4 11:11:11');
		
SELECT * FROM mes;

-- 习题 
-- 显示所有留言信息  发布日期只显示日期 不显示时间
SELECT id, content, DATE(send_time) as send_date FROM mes;
-- 查询在10分钟内发布的帖子
SELECT *
				FROM mes
				WHERE DATE_ADD(send_time, INTERVAL 10 MINUTE) >= NOW();
-- 看两个日期间的天数
SELECT DATEDIFF('2011-03-01' , '2022-02-03') FROM DUAL;
-- 也可以看两个时间之间的差
SELECT TIMEDIFF('10:10:10', "11:11:11") FROM DUAL;
-- YEAR|Month|DAT| DATE (datetime)
SELECT YEAR(NOW()) FROM DUAL;
SELECT MONTH(NOW()) FROM DUAL;
SELECT DAY(NOW()) FROM DUAL;
SELECT TIME(NOW()) FROM DUAL;
-- unix_timestamp(); 返回的是1970-1-1 到现在的秒数
SELECT UNIX_TIMESTAMP() FROM DUAL;
-- FROM_UNIXTIME()   可以把unix格式的秒数转换为指定的日期格式
SELECT FROM_UNIXTIME(UNIX_TIMESTAMP(), '%Y : %m : %d');









