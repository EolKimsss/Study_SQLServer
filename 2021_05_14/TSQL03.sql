-- 문자열 함수
SELECT ASCII('+'), CHAR(47); -- 사용빈도 하
SELECT UNICODE('가'), NCHAR(44039); -- 사용빈도 하
SELECT NCHAR(12354);
SELECT ASCII('あ') , CHAR(170);

-- 문자열 연결
SELECT CONCAT('SQL ' , 'server', 2019) AS [name]; --사용빈도 상
SELECT 'SQL' + 'server' + CAST (2019 AS VARCHAR);

-- 단어 시작위치
SELECT CHARINDEX('WORLD','HELLO WORLD!');

-- 언어에서의 문자열은 0부터 시작
-- DB 문자열은 1부터 시작

-- LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM -- 사용빈도 상X2
DECLARE @STR VARCHAR(20);
SET @STR = 'SQL Server 2019'
SELECT LEFT(@STR,3), RIGHT(@STR,4);

SELECT SUBSTRING('대한민국만세!',5,3); -- index번호,크기

SELECT LEN('대한민국만세!');

SELECT UPPER('hELLO World!');

SELECT '   SQL       ', LTRIM('      SQL');
SELECT '     FF        ' , TRIM('     FF        ');

-- Replace 사용빈도 최상
SELECT REPLACE ('SQL Server 2019 server1 server22','server','서버'); -- 대소문자 구분 x

-- FORMAT
SELECT FORMAT(GETDATE(),'yyyy-MM-dd hh:mm:ss'); --한국식
SELECT FORMAT(GETDATE(),'MM/dd/yyyy hh:mm:ss'); -- 미국식

