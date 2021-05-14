-- 시스템함수(SQL서버가 기본으로 제공해주는 함수들)

SELECT CAST(AVG(CAST(amount AS float)) AS decimal(4,3)) FROM buyTbl;

SELECT AVG(CONVERT(FLOAT, amount)) FROM buyTbl;

SELECT PARSE('3.14' AS INT); -- 오류남 예외 발생하면 쿼리가 비정상 종료
SELECT TRY_PARSE('3.14' AS INT); -- 값 변환 못하면 NULL로 값을 대체하고 정상적 수행

SELECT name,CAST(height AS varchar) + 'cm' FROM userTbl
 WHERE height is not NULL; -- null값은 =로 비교하는 것이 아니라 is/ is not으로 비교

SELECT PARSE('2021년 5월 14일 10시 27분' AS DATETIME);
SELECT PARSE('2021-05-14 10:28' AS DATETIME);
--YYYY-MM-DD HH:mm:ss

SELECT GETDATE(); --ORACLE에는 GETDATE없다 SQL에서만 쓰는 것

DECLARE @VAR INT;

--@@는 시스템변수


SELECT @@VERSION

--날짜 및 시간함수
SELECT YEAR(GETDATE()) AS '현재년도';
SELECT MONTH(GETDATE()) AS '현재월';
SELECT DAY(GETDATE()) AS '오늘';

-- 수치함수
SELECT ABS(-100);
SELECT ROUND(3.141592,2);
SELECT FLOOR(RAND()*100);

--논리함수
SELECT IIF(100>200,'참','거짓');
