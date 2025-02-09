-- 字符串相关函数的使用
-- 使用 emp 表

-- CHARSET(str) 返回字符集
SELECT CHARSET(ename) FROM emp;
-- CONCAT(string2 [,...]) 链接字符串
SELECT CONCAT(ename, ' job is ', job) FROM emp;
-- INSTR (string, substring) 返回 substring 在 string 中出现的位置, 没有的话返回0
SELECT INSTR('hahaja', 'ja') FROM DUAL; # DUAL 是系统提供的 亚元表 可以作为测试表使用
-- UCASE (string2) 转成大写
SELECT UCASE(ename) FROM emp;
-- LCASE(str) 转成小写
SELECT LCASE(ename) FROM emp;
-- LEFT (str, length) 从 str中的左边去length个字符
SELECT LEFT(ename, 2) FROM emp;
-- LENGTH(str) string长度[按照字节]
SELECT LENGTH(ename) FROM emp;
-- REPLACE(str, search_str, replace_str) 在str中用replace_str替换search_str
SELECT ename, REPLACE(job, 'MANAGER', '经理') FROM emp;
-- STRCMP (str1, str2) 比较两个字符串
SELECT STRCMP('abc', 'abc1') FROM DUAL;
-- SUBSTRING (str, position [,length])   从str的position开始[从1开始计算], 取length个字符
SELECT SUBSTRING(ename, 1, 2) FROM emp;
-- LTRIM (str) RTRIM(str) trim 去除前端空格或后端空格
SELECT LTRIM('   sdfsdf') FROM DUAL;
SELECT TRIM('   dfdfds     ') FROM DUAL;


-- practice:  要求ename首字母小写 其他大写
SELECT ename, CONCAT(LCASE(SUBSTR(ename, 1, 1)), UCASE(SUBSTR(ename, 2))) FROM emp;













