-- DELETE
-- WHERE���� �Ⱦ��� �������� ����

BEGIN TRAN

DELETE FROM testTbl
 WHERE Id = 3;

 SELECT * FROM testTbl;

COMMIT;
ROLLBACK;