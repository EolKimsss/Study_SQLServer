INSERT INTO testTbl VALUES ('홍길동','서울');
INSERT INTO testTbl (userName,addr) values ('설현','서울');

INSERT INTO testTbl (addr,username) values ('부산','gang');

SELECT * FROM testTbl;

INSERT INTO userTbl (userID,name,birthYear,addr)
values ('IU','아이유',1993,'서울');

SELECT * FROM userTbl WHERE userID = 'IU'

INSERT INTO userTbl (userID,name,birthYear,addr,height)
VALUES ('JJH','주지훈',1982,'신안',187);

SELECT * FROM userTbl;


