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




