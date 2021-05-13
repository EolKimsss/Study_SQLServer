-- GROUP BY
-- ���̵𺰷� ������ ��ġ ����� ��ȸ
SELECT userID,SUM(amount) AS �ѱ��Ű��� 
  FROM buyTbl
 GROUP BY userID;


SELECT userID, SUM(amount* price) AS '�� ���űݾ�'
  FROM buyTbl
 GROUP BY userID
 ORDER BY sum(amount * price) DESC;


-- �����Լ��� ORDER BY ���� ��밡���ϴ�
SELECT userID, SUM(amount* price) AS '�� ���űݾ�'
  FROM buyTbl;

SELECT AVG(price) AS [��ձ��űݾ�] FROM buyTbl;

-- ��������̺��� Ű�� ����ū����ϰ� 
-- ���� ���� ���
SELECT * FROM userTbl
ORDER BY height ASC;

SELECT * FROM userTbl
ORDER BY height DESC;

SELECT * FROM userTbl
 WHERE height = 166 OR height = 186; /* x!!*/

SELECT name AS '�̸�' , height AS [Ű] FROM userTbl
WHERE height = (SELECT MAX(height) FROM userTbl)
   OR height = (SELECT MIN(height) FROM userTbl) /*OK*/
   

-- GROUP BY / HAVING
-- GROUP BY�� * �Ⱦ��°� ���� GROPU BY�� ��
-- ������ SELECT�� �� ������
-- WHERE������ COLUMN�� �� �� ����
SELECT userID AS '����� ID'
     , SUM(amount * price) AS [�ѱ��űݾ�]
  FROM buyTbl
-- WHERE SUM( price * amount) >= 1000 // ����Ұ�
 GROUP BY userID
HAVING SUM(price * amount) >= 1000;

-- ���
-- ��ǰ�׷캰�� ����ڰ� �󸶸�ŭ ���Ÿ� �ߴ��� ��ȸ
SELECT groupName
	 , userID
     , SUM(amount * price) AS [�ѱ��űݾ�]
  FROM buyTbl
 GROUP BY userID,groupName;

 SELECT groupName
	 , userID
     , SUM(amount * price) AS [�ѱ��űݾ�]
  FROM buyTbl
 GROUP BY CUBE(groupName,userID);

  SELECT groupName
       , SUM(amount * price) AS [�ѱ��űݾ�]
	   , GROUPING_ID(groupName) AS 'SUM'
	FROM buyTbl
GROUP BY ROLLUP(groupName);