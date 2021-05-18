-- OUTER JOIN
SELECT u.userID,u.name,b.prodName
	  ,u.addr, CONCAT(u.mobile1,u.mobile2) AS mobile
  FROM userTbl AS u
  LEFT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID

 -- OUTER JOIN은 조건을 만족하지 않는 데이터도 보고싶을때 사용

 -- 학생 / 동아리/ 가입정보 테이블
 -- OUTERJOIN








  SELECT s.Region,s.StdID,s.StdName,
	     r.RegDate
   FROM stdTbl AS s
   RIGHT OUTER JOIN regInfoTbl AS r
     ON s.StdID = r.StdID










-- 1
 SELECT s.Region,s.StdID,s.StdName,
	    c.ClubName, r.RegDate, c.ClubRoom
   FROM stdTbl AS s
   LEFT OUTER JOIN regInfoTbl AS r
     ON s.StdID = r.StdID
   LEFT OUTER JOIN clubTbl AS c
     ON c.ClubName = r.ClubName

-- 2 
SELECT c.ClubName,c.ClubRoom,r.id,r.StdID,r.RegDate
  FROM clubTbl AS c
  LEFT OUTER JOIN reginfoTbl AS r
    ON r.ClubName = c.ClubName