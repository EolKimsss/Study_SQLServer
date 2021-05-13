BEGIN TRAN;

SELECT * FROM testTbl;

-- 데이터 입력
INSERT INTO testTbl VALUES ('최우식','캐낟');
INSERT INTO testtbl values ('이지은', '서울');
INSERT INTO testtbl values ('ash','부산');

-- 데이터 수정
update testTbl
   set username = '이지은'
     , addr = '서울'
 where id = 5 ;

-- 데이터 삭제
delete from testtbl where username = 'ASH';

COMMIT;
ROLLBACK;