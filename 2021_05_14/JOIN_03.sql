-- OUTER JOIN
SELECT u.userID,u.name,b.prodName
	  ,u.addr, CONCAT(u.mobile1,u.mobile2) AS mobile
  FROM userTbl AS u
  LEFT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID

 -- OUTER JOIN�� ������ �������� �ʴ� �����͵� ��������� ���

 -- �л� / ���Ƹ�/ �������� ���̺�
 -- OUTERJOIN

 SELECT s.Region,s.StdID,s.StdName,
	    c.ClubName, r.RegDate, c.ClubRoom
   FROM stdTbl AS s
   LEFT OUTER JOIN regInfoTbl AS r
     ON s.StdID = r.StdID
   LEFT OUTER JOIN clubTbl AS c
     ON c.ClubName = r.ClubName


SELECT c.ClubName,c.ClubRoom,r.id,r.StdID,r.RegDate
  FROM clubTbl AS c
  LEFT OUTER JOIN reginfoTbl AS r
    ON r.ClubName = c.ClubName