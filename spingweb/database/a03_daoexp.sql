--# 구매정보 처리
--1. 구매리스트
--	1) sql
--		SELECT * FROM PURCHASES WHERE PROD_NAME LIKE '%%' AND PURCHASE_AMOUNT BETWEEN 30000 AND 1200000;
--		입력 : String prodName, int start, int end
--		출력 : int purchaseId; int customerId; Date purchageDate; int purchaseAmount; String prodName;
-- 			  int start, int end  ==> Purchase ==> List<Purchase>
--	2) dto/vo
--	3) dao
/*
@Select("SELECT * FROM PURCHASES WHERE PROD_NAME LIKE #{prodName} AND PURCHASE_AMOUNT BETWEEN #{start} AND #{end}")
List<Purchase> getPurchaseList(Purchase sch);
 * */
--	--------------------------------
--	4) service
--	5) controller
--	6) jsp
-- 2. 구매 등록
--   1) sql INSERT INTO purchases VALUES (purchase_seq.nextval, 1, TO_DATE('2025-06-13', 'YYYY-MM-DD'), 110, '키위');
SELECT * FROM purchases;
CREATE SEQUENCE purchase_seq;
INSERT INTO purchases VALUES (purchase_seq.nextval, 1, TO_DATE('2025-06-13', 'YYYY-MM-DD'), 110, '키위');
/*
	private int purchaseId; 
	private int customerId; 
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date purchaseDate; 
	private int purchaseAmount; 
	private String prodName;
	private int start;
	private int end;
	
	
@Insert("INSERT INTO purchases VALUES (purchase_seq.nextval, #{customerId}, #{purchaseDate}, #{purchaseAmount}, #{prodName})")
int insertPurchase(Purchase ins);
 * */
-- 1. sql
-- 2. 입력
-- 3. 메서드선언(dao)
---------------------------------------------
-- 4. service 성공/실패
-- 5. controller



SELECT * FROM CUSTOMERS;
SELECT * FROM purchases;
/*
# foreign key 관계에 있기 때문에 customers테이블에 없는 customer_id를 등록할 수 없다..
사용자 ui의 효율성과 데이터의 일관성을 보장하기 위해서, 이런 경우에 customer_id와 customer_name을 
연결한 공통 모델데이터를 설정하여 처리하는 경우도 많다.
그리고, 리스트 화면에 CUSTOMERS와 조인 하여, 구매자아이디를 구매자명으로 출력하면 보다 효과적인
처리를 가능하다.
# 위 내용을 반영하여 처리 내용..
1. 공통 모델어트리뷰터 설정 (CUSTOMER_ID/CUSTOMER_NAME)으로 DAO ==> SERVICE ==> 공통 모델 설정.
2. 등록시, 콤보박스로 (고객아이디 대신에 고객명을 선택하게 처리하고, 실제 입력되는 데이터를 고객아이디로
	처리하게 한다)
3. 구매리스트에 DTO로 customerName을 설정하고, dao 구문에 sql로 customer와 purchase를 조인하여
	구매자아이디 대신 구매자명이 화면에 출력하게 설정하고,
4. 마지막 view(jsp)에서 customerId ==> customerName으로 설정처리한다.
 * */
SELECT CUSTOMER_ID, CUSTOMER_NAME FROM CUSTOMERS ORDER BY CUSTOMER_ID;
/*
@Select("SELECT CUSTOMER_ID, CUSTOMER_NAME FROM CUSTOMERS ORDER BY CUSTOMER_ID")
List<Customer> getCustomerInfo();

@Select("SELECT CUSTOMER_ID, CUSTOMER_NAME FROM CUSTOMERS ORDER BY CUSTOMER_ID")
Map<String, String> getCustomerMap();


 * 
 * */
SELECT P.*, C.CUSTOMER_NAME
FROM PURCHASES P,  CUSTOMERS C
WHERE P.CUSTOMER_ID = C.CUSTOMER_ID   
AND PROD_NAME LIKE '%%' AND PURCHASE_AMOUNT BETWEEN 30000 AND 1200000;
/*
SELECT P.*, C.CUSTOMER_NAME
FROM PURCHASES P,  CUSTOMERS C
WHERE P.CUSTOMER_ID = C.CUSTOMER_ID   
AND PROD_NAME LIKE #{prodName} AND PURCHASE_AMOUNT BETWEEN #{start} AND #{end}


	4) 상세 dao 처리
		sql 작성
		메서드 선언
		service 단 처리
		controller에 상세 요청시 처리할 내용에 model데이터로 설정..
 * */
SELECT * FROM CUSTOMERS WHERE CUSTOMER_ID = 1;
/*
dao 선언할 interface 메서드..

@Select("SELECT * FROM CUSTOMERS WHERE CUSTOMER_ID = #{customerId}")
Customer getCustomer(@Param("customerId") int customerId);

 * */
SELECT * FROM PURCHASES WHERE purchase_id = 1;
/*
dao interface 메서드 선언.

@Select("SELECT * FROM PURCHASES WHERE purchase_id = #{purchase_id}")
Purchase getPurchase(@Param("purchase_id")int purchase_id);

 * */

SELECT * FROM MOVIE WHERE TITLE LIKE '%%' AND GENRE LIKE '%%';
-- class Movie   int movieId; String title; String genre;
CREATE SEQUENCE movie_seq
START WITH 106;

INSERT INTO movie values(movie_seq.nextval,'재미있는영화','코미디');

SELECT * FROM MOVIE WHERE movie_id = 101;
/*
각각 dao 메서드 선언해주세요..

 * */
SELECT * FROM CUSTOMERS;
UPDATE CUSTOMERS 
   SET CUSTOMER_NAME ='오길동(변경)',
       CUSTOMER_EMAIL = 'ZZZ@gmail.com(변경)',
       CUSTOMER_PHONE = '010-9999-9999',
       CUSTOMER_ADDRESS = '경기도 부천'
 WHERE CUSTOMER_ID = 12;     
/*
UPDATE CUSTOMERS 
   SET CUSTOMER_NAME = #{customerName},
       CUSTOMER_EMAIL = #{customerEmail},
       CUSTOMER_PHONE = #{customerPhone},
       CUSTOMER_ADDRESS = #{customerAddress}
 WHERE CUSTOMER_ID = #{customerId}
 
 dao 메서드.
 
 
 * */



