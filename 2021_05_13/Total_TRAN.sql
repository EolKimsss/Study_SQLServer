BEGIN TRAN;

SELECT * FROM testTbl;

-- ������ �Է�
INSERT INTO testTbl VALUES ('�ֿ��','ĳ��');
INSERT INTO testtbl values ('������', '����');
INSERT INTO testtbl values ('ash','�λ�');

-- ������ ����
update testTbl
   set username = '������'
     , addr = '����'
 where id = 5 ;

-- ������ ����
delete from testtbl where username = 'ASH';

COMMIT;
ROLLBACK;