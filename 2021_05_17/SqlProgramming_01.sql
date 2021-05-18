-- SQL Programming
DECLARE @var1 INT
SET @var1 =170

IF (@var1 < 170)
	BEGIN
		PRINT '���ذ��� �۽��ϴ�'
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

PRINT '������� ==> ' + CAST(@point AS CHAR(3)) -- CONCAT('������� ==> ',@point)
PRINT '���� == > ' + @credit                    -- CONCAT('���� == >' , @credit)

-- ������ �ݾ׵��� �ֿ��/���/�Ϲݰ����� �з��ϴ� ������ �ۼ�

WITH cte_custlevel([�����ID],[ȸ����],[�ѱ��űݾ�],[�����]) AS
(SELECT u.userID AS '�����ID', u.name 'ȸ����',
	   IIF(SUM(b.price * b.amount)IS NULL,0,SUM(b.price * b.amount)) AS '�ѱ��űݾ�',
	   CASE 
	     WHEN(SUM(b.price*b.amount) >= 1500) THEN '�ֿ����'
		 WHEN(SUM(b.price*b.amount) >= 1000) THEN '�����'
		 WHEN(SUM(b.price*b.amount) >= 1)    THEN '�Ϲݰ�'
		 ELSE '���ɰ�'
	   END AS [�����]
  FROM userTbl AS u LEFT OUTER JOIN buyTbl AS b
  ON u.userId = b.userID
 GROUP BY u.userID,u.name)
 --ORDER BY SUM(b.price * b.amount) DESC)

 SELECT [�����ID],[ȸ����],FORMAT([�ѱ��űݾ�],'C') AS '���űݾ�',[�����] --'#,#'�� ��
   FROM cte_custlevel
  ORDER BY [�ѱ��űݾ�] DESC;

-- INNER JOIN�����ϰ� ������ �Ǵ� TABLE�� ���� OUTER JOIN�� ����Ѵ�
-- C#���� NULL���� DISPLAY ���� �����Ƿ� 0���� ����������













