-- ������ ��ȸ
SELECT * FROM userTbl;

-- ������ ��ȸ ���͸�
SELECT * FROM userTbl
 WHERE userID = 'BBK';

SELECT * FROM userTbl
 WHERE name LIKE '%��%';

-- Ư�� ���̺� ���ڵ�(������) ����Ȯ��
SELECT COUNT(userID) FROM userTbl;

-- ���� ������
-- Ű�� 180�̻��̰� ����⵵�� 1970���Ŀ� �¾ ��� ��ȸ
SELECT * FROM userTbl
 WHERE height >= 180 AND birthYear >1970;

 -- ���� ������
-- Ű�� 180�̻��̰� ����⵵�� 1970���Ŀ� �¾ �����
-- ���̵� , �̸� , Ű�� ��ȸ�ϼ���

SELECT userID, name, height FROM userTbl
 WHERE height >= 180 AND birthYear >1970;

--����⵵��(��������)���� �����ؼ� ��ȸ
SELECT * FROM userTbl ORDER BY birthYear ASC;

-- SELECT INTO
-- PK�� ���� KEY������ ���� �ȴ�
SELECT * INTO userTbl_New FROM userTbl;


SELECT userID,name,addr INTO userTbl_Backup FROM userTbl

--SELECT * FROM userTbl_Backup;
SELECT userID,name,addr INTO userTbl_Backup2 FROM userTbl
 WHERE addr ='����';

SELECT * FROM userTbl_Backup2;