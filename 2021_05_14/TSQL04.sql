-- 순위함수
SELECT userID 
  FROM buyTbl
 GROUP BY userID;

--ROW_NUMBER
SELECT ROW_NUMBER() OVER(ORDER BY height DESC) AS '키순위',
	   name, height, addr 
  FROM userTbl
 WHERE height IS NOT NULL
 ;
--RANK
 SELECT DENSE_RANK() OVER(ORDER BY height DESC) AS '키순위',
	   name, height, addr 
  FROM userTbl
 WHERE height IS NOT NULL
 ;

 SELECT DENSE_RANK() OVER(PARTITION BY addr ORDER BY height DESC) AS '키순위',
	   name, height, addr 
  FROM userTbl
 WHERE height IS NOT NULL
 ;


