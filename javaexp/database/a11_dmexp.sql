SELECT * FROM EMP;
/*
# 마법사들의 소원 관리 시스템
1. 마법사들이 자신의 소원을 기록하고 관리하는 시스템입니다. 이 시스템에서 마법사들은 자신이 원하는 소원을
	작성하고, 소원의 상태를 변경할 수 있습니다. 마법학교의 관리자는 소원을 확인하고, 처리 완료된 소원은
	삭제할 수 있습니다.
2. 단계별 진행 내용
	1) 테이블 생성(CREATE TABLE)
		먼저 소원 로그를 기록할 WISH_LOG 테이블을 만듭니다. 이 테이블은 마법의 소원, 소원 상태, 작성 날짜를
		저장합니다.
		소원번호(WISH_ID) NUMBER
		마법사 이름(MAGICIAN_NAME) VARCHAR2(50)
		소원 내용(WISH_DESC) VARCHAR2(200),
		소원 상태(WISH_STATUS) VARCHAR2(20) -- 처리중, 완료  
		소원 작성날짜(WISH_DATE) DATE
	2) 소원등록
	3) 소원조회(전체, 마법사로, 특정 날짜로)
	4) 소원수정(마법사이름으로 소원상태값)
	5) 소원삭제(소원번호로)			
 * */
CREATE TABLE WISH_LOG(
	WISH_ID NUMBER,
	MAGICIAN_NAME VARCHAR2(50),
	WISH_DESC VARCHAR2(200),
	WISH_STATUS VARCHAR2(20),
	WISH_DATE DATE
);
SELECT * FROM WISH_LOG;
--- 소원등록
INSERT INTO WISH_LOG VALUES(1, '헤리포터','포토모르타를 물리쳐 주세요!','처리 중', 
							TO_DATE('2025-04-21','YYYY-MM-DD'));

INSERT INTO WISH_LOG VALUES(2, '헤르몬','호그와트 도서관에 시간여행 도서 추가해주세요','처리 중', 
							TO_DATE('2025-04-22','YYYY-MM-DD'));
-- 수정 처리   해리포터 이름으로 처리완료로 변경..
UPDATE WISH_LOG
   SET WISH_STATUS = '처리 완료'
  WHERE MAGICIAN_NAME = '헤리포터';
-- 삭제 처리  : 처리 완료된 것을 삭제 해주세요..
DELETE FROM WISH_LOG WHERE WISH_STATUS='처리완료';

--# 마법의 아이템 거래 시스템
--1. 이 시스템은 아이템을 등록하고, 거래을 처리하는 시스템입니다. 각 아이템은 고유한 ID와 이름을 가지고 있으면,
--거래 상테를 업데이트할 수 있습니다. 
--2. 테이블 생성(MAGIC_ITEMS)
--	ITEM_ID(아이템ID)
--	ITEM_NAME(아이템 이름)
--	ITEM_TYPE(아이템 종류)
--	ITEM_STATUS(아이템 거래 상태) 거래중/거래완료
--	ITEM_PRICE(아이템 가격)
CREATE TABLE MAGIC_ITEMS(
	ITEM_ID NUMBER,
	ITEM_NAME VARCHAR2(100),
	ITEM_TYPE VARCHAR2(50),
	ITEM_STATUS VARCHAR2(20),
	ITEM_PRICE NUMBER
);
SELECT * FROM MAGIC_ITEMS;
--3. 데이터 등록
--	1, 마법지방이, 무기, 거래 중, 5000
--	2, 투명망토   방어구  거래 중  10000
--	3. 마법시계   장비   거래 중  1500
--	4  하늘을 나는 빗자루  탈것 거래 완료 2500
--	5 마법책     서적    거래 중  3000
INSERT INTO MAGIC_ITEMS VALUES(1,'마법지팡이','무기','거래 중', 5000);
INSERT INTO MAGIC_ITEMS VALUES(2,'투명망토','방어구','거래 중', 10000);
INSERT INTO MAGIC_ITEMS VALUES(3,'마법시계','장비','거래 중', 1500);
INSERT INTO MAGIC_ITEMS VALUES(4,'하늘을 나는 빗자루','탈것','거래 완료', 2500);
INSERT INTO MAGIC_ITEMS VALUES(5,'마법책','서적','거래 중', 3000);
--4. 아이템 조회
--	가격이 3000미만인 아이템
SELECT *
FROM MAGIC_ITEMS
WHERE ITEM_PRICE<3000;
--	거래중인 아이템과 거래 완료인 아이템
SELECT *
FROM MAGIC_ITEMS
WHERE ITEM_STATUS = '거래 중';
SELECT *
FROM MAGIC_ITEMS
WHERE ITEM_STATUS = '거래 완료';

--5. 아이템 상태 수정
--	마법지망이 거래 완료로 변경
UPDATE MAGIC_ITEMS
  SET ITEM_STATUS = '거래 완료'  
WHERE ITEM_NAME = '마법지팡이';
--6. 아이템 아이디 5번을 삭제 처리..

SELECT * FROM MAGIC_ITEMS
WHERE ITEM_ID=1;
DELETE 
FROM  MAGIC_ITEMS
WHERE ITEM_ID=1;
SELECT * FROM MAGIC_ITEMS;





