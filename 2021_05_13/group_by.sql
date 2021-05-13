-- GROUP BY
-- 아이디별로 물건을 얼마치 샀는지 조회
SELECT userID,SUM(amount) AS 총구매갯수 
  FROM buyTbl
 GROUP BY userID;


SELECT userID, SUM(amount* price) AS '총 구매금액'
  FROM buyTbl
 GROUP BY userID
 ORDER BY sum(amount * price) DESC;


-- 집계함수는 ORDER BY 없이 사용가능하다
SELECT userID, SUM(amount* price) AS '총 구매금액'
  FROM buyTbl;

SELECT AVG(price) AS [평균구매금액] FROM buyTbl;

-- 사용자테이블에서 키가 가장큰사람하고 
-- 가장 작은 사람
SELECT * FROM userTbl
ORDER BY height ASC;

SELECT * FROM userTbl
ORDER BY height DESC;

SELECT * FROM userTbl
 WHERE height = 166 OR height = 186; /* x!!*/

SELECT name AS '이름' , height AS [키] FROM userTbl
WHERE height = (SELECT MAX(height) FROM userTbl)
   OR height = (SELECT MIN(height) FROM userTbl) /*OK*/
   

-- GROUP BY / HAVING
-- GROUP BY에 * 안쓰는게 좋다 GROPU BY에 들어간
-- 내용은 SELECT에 꼭 들어가야함
-- WHERE절에는 COLUMN만 들어갈 수 있음
SELECT userID AS '사용자 ID'
     , SUM(amount * price) AS [총구매금액]
  FROM buyTbl
-- WHERE SUM( price * amount) >= 1000 // 절대불가
 GROUP BY userID
HAVING SUM(price * amount) >= 1000;

-- 통계
-- 제품그룹별로 사용자가 얼마만큼 구매를 했는지 조회
SELECT groupName
	 , userID
     , SUM(amount * price) AS [총구매금액]
  FROM buyTbl
 GROUP BY userID,groupName;

 SELECT groupName
	 , userID
     , SUM(amount * price) AS [총구매금액]
  FROM buyTbl
 GROUP BY CUBE(groupName,userID);

  SELECT groupName
       , SUM(amount * price) AS [총구매금액]
	   , GROUPING_ID(groupName) AS 'SUM'
	FROM buyTbl
GROUP BY ROLLUP(groupName);