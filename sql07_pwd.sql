--  加密函数和系统函数

-- USER() 查询用户  返回的格式是  用户@IP地址
SELECT USER() FROM DUAL;
-- DATABASE() 查询当前使用数据库名称
SELECT DATABASE() FROM DUAL;
-- MD5(str)  为字符串算出一个 MD5 32的字符串，常用(用户密码)加密
SELECT MD5('test') FROM DUAL;
-- PASSWORD(str) 加密函数 emm 好像新版的sql没有这个password函数了 我们用sha1可以
SELECT SHA1('test_jajaj') FROM DUAL;