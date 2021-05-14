-- �ý����Լ�(SQL������ �⺻���� �������ִ� �Լ���)

SELECT CAST(AVG(CAST(amount AS float)) AS decimal(4,3)) FROM buyTbl;

SELECT AVG(CONVERT(FLOAT, amount)) FROM buyTbl;

SELECT PARSE('3.14' AS INT); -- ������ ���� �߻��ϸ� ������ ������ ����
SELECT TRY_PARSE('3.14' AS INT); -- �� ��ȯ ���ϸ� NULL�� ���� ��ü�ϰ� ������ ����

SELECT name,CAST(height AS varchar) + 'cm' FROM userTbl
 WHERE height is not NULL; -- null���� =�� ���ϴ� ���� �ƴ϶� is/ is not���� ��

SELECT PARSE('2021�� 5�� 14�� 10�� 27��' AS DATETIME);
SELECT PARSE('2021-05-14 10:28' AS DATETIME);
--YYYY-MM-DD HH:mm:ss

SELECT GETDATE(); --ORACLE���� GETDATE���� SQL������ ���� ��

DECLARE @VAR INT;

--@@�� �ý��ۺ���


SELECT @@VERSION

--��¥ �� �ð��Լ�
SELECT YEAR(GETDATE()) AS '����⵵';
SELECT MONTH(GETDATE()) AS '�����';
SELECT DAY(GETDATE()) AS '����';

-- ��ġ�Լ�
SELECT ABS(-100);
SELECT ROUND(3.141592,2);
SELECT FLOOR(RAND()*100);

--���Լ�
SELECT IIF(100>200,'��','����');
