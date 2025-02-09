-- 数学相关的函数

-- ABS(mnu) 绝对值
SELECT ABS(10) FROM DUAL;
-- BIN(decimal_number)  十进制转换为二进制
SELECT BIN(10) FROM DUAL;
-- CEILING(num) 向上取整
SELECT CEILING(1.1) FROM DUAL;
-- CONV(num, from_base, to_base) 进制转换
SELECT CONV(10, 10, 2);
-- FLOOR(num) 向下取整
SELECT FLOAT(1.9) FROM DUAL;
-- FORMAT(num, decimal_places) 保留小数位数
SELECT FORMAT(1.1234567, 3) FROM DUAL;
-- HEX(decimal_num) 转换为16进制
SELECT HEX(14) FROM DUAL;
-- LEAST(num1, num2, num3, ...)  求最小值
SELECT LEAST(1, 2, 3, 4) FROM DUAL;
-- MOD(numerator, denominar) 取余
SELECT MOD(10, 3) FROM DUAL;
-- RAND([seed])   其范围为 0 <= v <= 1.0
-- 1. 如果使用rand 每次返回不用的随机数
-- 2. 如果用seed 那么返回随机数 但是该随机数不会变化
SELECT RAND() FROM DUAL;
SELECT RAND(3) FROM DUAL;




























