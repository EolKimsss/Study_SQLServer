-- 데이터 조회
SELECT * FROM userTbl;

-- 데이터 조회 필터링
SELECT * FROM userTbl
 WHERE userID = 'BBK';

SELECT * FROM userTbl
 WHERE name LIKE '%용%';

-- 특정 테이블 레코드(데이터) 갯수확인
SELECT COUNT(userID) FROM userTbl;

-- 관계 연산자
-- 키가 180이상이고 출생년도가 1970이후에 태어난 사람 조회
SELECT * FROM userTbl
 WHERE height >= 180 AND birthYear >1970;

 -- 관계 연산자
-- 키가 180이상이고 출생년도가 1970이후에 태어난 사람의
-- 아이디 , 이름 , 키를 조회하세요

SELECT userID, name, height FROM userTbl
 WHERE height >= 180 AND birthYear >1970;