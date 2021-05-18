-- SQL Programming
DECLARE @var1 INT
SET @var1 =170

IF (@var1 < 170)
	BEGIN
		PRINT '기준값이 작습니다'
	END
ELSE IF @var1=182
	BEGIN
	SELECT * FROM userTbl WHERE height = @var1
	END
ELSE
	BEGIN 
		SELECT * FROM userTbl WHERE height > @var1
	END



-- CASE
DECLARE @point INT, @credit CHAR(1)
SET @point = 100

SET @credit =
CASE
  WHEN(@point>=90) THEN 'A'
  WHEN(@point>=80) THEN 'B'
  WHEN(@point>=70) THEN 'C'
  WHEN(@point>=60) THEN 'D'
  ELSE 'F'
END

PRINT '취득점수 ==> ' + CAST(@point AS CHAR(3)) -- CONCAT('취득점수 ==> ',@point)
PRINT '학점 == > ' + @credit                    -- CONCAT('학점 == >' , @credit)

-- 구매한 금액따라서 최우수/우수/일반고객으로 분류하는 쿼리를 작성

WITH cte_custlevel([사용자ID],[회원명],[총구매금액],[고객등급]) AS
(SELECT u.userID AS '사용자ID', u.name '회원명',
	   IIF(SUM(b.price * b.amount)IS NULL,0,SUM(b.price * b.amount)) AS '총구매금액',
	   CASE 
	     WHEN(SUM(b.price*b.amount) >= 1500) THEN '최우수고객'
		 WHEN(SUM(b.price*b.amount) >= 1000) THEN '우수고객'
		 WHEN(SUM(b.price*b.amount) >= 1)    THEN '일반고객'
		 ELSE '유령고객'
	   END AS [고객등급]
  FROM userTbl AS u LEFT OUTER JOIN buyTbl AS b
  ON u.userId = b.userID
 GROUP BY u.userID,u.name)
 --ORDER BY SUM(b.price * b.amount) DESC)

 SELECT [사용자ID],[회원명],FORMAT([총구매금액],'C') AS '구매금액',[고객등급] --'#,#'도 됨
   FROM cte_custlevel
  ORDER BY [총구매금액] DESC;

-- INNER JOIN먼저하고 기준이 되는 TABLE을 보고 OUTER JOIN을 사용한다
-- C#에서 NULL값은 DISPLAY 되지 않으므로 0으로 만들어줘야함













