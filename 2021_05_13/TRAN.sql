-- UPDATE 와 DELETE는 주의점이 있음 잘 확인하도로옥
-- WHERE절 + BEGIN TRANSACTIN , COMMIT/ROLLBACK 을 항상 작성하자아
BEGIN TRAN--SACTION

UPDATE testTbl
   SET userName = '성명건'
 WHERE Id = 2;

UPDATE testTbl
   SET userName = '성명건'
     , addr = '부산'
 WHERE Id = 3; 
	 

 SELECT * FROM testTbl

COMMIT;
ROLLBACK;

-- 데이터 전부를 삭제하고 index값도 1부터 시작함
-- delete는 index 지운거+1부터 시작함

TRUNCATE TABLE testTbl; 

INSERT INTO testTbl VALUES ('홍길동','서울');
INSERT INTO testTbl (userName,addr) values ('설현','서울');

INSERT INTO testTbl (addr,username) values ('부산','gang');
