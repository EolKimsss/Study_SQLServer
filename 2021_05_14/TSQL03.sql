-- ���ڿ� �Լ�
SELECT ASCII('+'), CHAR(47); -- ���� ��
SELECT UNICODE('��'), NCHAR(44039); -- ���� ��
SELECT NCHAR(12354);
SELECT ASCII('��') , CHAR(170);

-- ���ڿ� ����
SELECT CONCAT('SQL ' , 'server', 2019) AS [name]; --���� ��
SELECT 'SQL' + 'server' + CAST (2019 AS VARCHAR);

-- �ܾ� ������ġ
SELECT CHARINDEX('WORLD','HELLO WORLD!');

-- ������ ���ڿ��� 0���� ����
-- DB ���ڿ��� 1���� ����

-- LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM -- ���� ��X2
DECLARE @STR VARCHAR(20);
SET @STR = 'SQL Server 2019'
SELECT LEFT(@STR,3), RIGHT(@STR,4);

SELECT SUBSTRING('���ѹα�����!',5,3); -- index��ȣ,ũ��

SELECT LEN('���ѹα�����!');

SELECT UPPER('hELLO World!');

SELECT '   SQL       ', LTRIM('      SQL');
SELECT '     FF        ' , TRIM('     FF        ');

-- Replace ���� �ֻ�
SELECT REPLACE ('SQL Server 2019 server1 server22','server','����'); -- ��ҹ��� ���� x

-- FORMAT
SELECT FORMAT(GETDATE(),'yyyy-MM-dd hh:mm:ss'); --�ѱ���
SELECT FORMAT(GETDATE(),'MM/dd/yyyy hh:mm:ss'); -- �̱���

