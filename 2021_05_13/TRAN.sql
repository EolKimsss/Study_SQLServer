-- UPDATE �� DELETE�� �������� ���� �� Ȯ���ϵ��ο�
-- WHERE�� + BEGIN TRANSACTIN , COMMIT/ROLLBACK �� �׻� �ۼ����ھ�
BEGIN TRAN--SACTION

UPDATE testTbl
   SET userName = '�����'
 WHERE Id = 2;

UPDATE testTbl
   SET userName = '�����'
     , addr = '�λ�'
 WHERE Id = 3; 
	 

 SELECT * FROM testTbl

COMMIT;
ROLLBACK;

-- ������ ���θ� �����ϰ� index���� 1���� ������
-- delete�� index �����+1���� ������

TRUNCATE TABLE testTbl; 

INSERT INTO testTbl VALUES ('ȫ�浿','����');
INSERT INTO testTbl (userName,addr) values ('����','����');

INSERT INTO testTbl (addr,username) values ('�λ�','gang');
