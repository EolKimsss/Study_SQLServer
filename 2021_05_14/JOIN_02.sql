-- 3�� ���̺� ���� ����
SELECT s.StdID , s.Region, s.StdName, r.id, r.ClubName, r.RegDate
  FROM stdTbl AS s
 INNER JOIN reginfoTbl AS r
    ON s.StdID = r.StdID
 INNER JOIN clubTbl AS c
    ON c.ClubName = r.ClubName
