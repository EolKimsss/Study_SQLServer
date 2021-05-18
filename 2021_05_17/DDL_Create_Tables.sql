--DDL로 테이블생성
CREATE TABLE ddlTbl
(
	Id int NOT NULL PRIMARY KEY,
	name NVARCHAR(20) NOT NULL,
	regDate DATETIME
);
GO

-- DDL로 테이블수정
DROP TABLE ddlTbl 

CREATE TABLE ddlTbl
(
	Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
	name NVARCHAR(20) NOT NULL,
	regDate DATETIME
);


CREATE TABLE userTBL
(
	userID char(8) NOT NULL PRIMARY KEY,
	name nvarchar(10) not null,
	birthyear int not null,
	height smallint 
)

CREATE TABLE buyTBL
(
	num int not null primary key,
	userid char(8) not null foreign key references usertbl(userid),
	prodname nchar(6) not null,
	price int not null
)

create table prodtbl
(
prodcode nchar(3) not null,
prodid nchar(4) not null,
proddate datetime not null,
prodcur nchar(10) not null,
constraint pk_prodtabl_prodcode_prodid
primary key (prodcode, prodid)
);

--userTbl에 email(unique)추가
--buyTBL 데이터 다 삭제, userTBL 데이터 다 삭제
-- userTBL(email) 컬럼삭제 한뒤, 밑의 쿼리 실행
ALTER TABLE userTBL
  ADD email VARCHAR(10) NOT NULL UNIQUE;

-- CHECK
ALTER TABLE userTBL
  ADD CONSTRAINT CK_birthYear
CHECK (birthYear >= 1900 and birthyear <= year(getdate()))
GO

SELECT * FROM sampleDB.dbo.userTbl;
select * from sqldb.dbo.buyTbl;
select * from AdventureWorksLT2019.SalesLT.Product;

