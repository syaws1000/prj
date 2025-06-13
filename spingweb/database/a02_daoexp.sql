/*
	 2) 등록/수정/삭제
	 	1단계  출력 : 갯수,   입력 : 단일데이터
	 	2단계  출력 : 갯수,   입력 : 변수형데이터(2개 이상)
	 	3단계  출력 : 갯수,   입력 : 객체형데이터(여러가지 변수 설정)
**/
SELECT * FROM DEPT01;
INSERT INTO DEPT01(DNAME) VALUES('인사2');
/*
@Insert("INSERT INTO DEPT01(DNAME) VALUES(#{dname})")
int insertDept(@Param("dname") String dname);

 * */
SELECT 'AB'|| seq_01.nextval FROM dual;

INSERT INTO DEPT01(DEPTNO, DNAME, LOC) VALUES(80,'인사','서울');
SELECT * FROM DEPT01;
/*
입력 : int deptno, String dname, String loc
출력 : 등록되는 갯수 int

@Insert("INSERT INTO DEPT01(DEPTNO, DNAME, LOC) VALUES(#{deptno},#{dname},#{loc})")
int insertDept01(@Param("deptno")int deptno, @Param("dname")String dname, @Param("loc")String loc );
 * */



SELECT * FROM EMP01;
INSERT INTO EMP01(JOB) VALUES('사원');
/*
EMP01의 JOB 만 입력하고, 기능메서드 선언.
@Insert("INSERT INTO DEPT01(DNAME) VALUES(#{dname})")
int insertDept(@Param("dname") String dname);
@Insert("INSERT INTO EMP01(JOB) VALUES(#{job})")
int insertEmp01(@Param("job") String job);

*/
SELECT * FROM EMP01;
INSERT INTO EMP01(EMPNO, ENAME, JOB, DEPTNO, SAL) VALUES(8000,'홍길동','사원',10,35000);
/*
입력 : int deptno, String dname, String loc
출력 : 등록되는 갯수 int

@Insert("INSERT INTO DEPT01(DEPTNO, DNAME, LOC) VALUES(#{deptno},#{dname},#{loc})")
int insertDept01(@Param("deptno")int deptno, @Param("dname")String dname, @Param("loc")String loc );

SELECT * FROM EMP01;
INSERT INTO EMP01(EMPNO, ENAME, JOB, DEPTNO, SAL) VALUES(8000,'홍길동','사원',10,3500);
입력 유형 : int deptno, String ename, String job, int deptno, double sal
리턴 : int
메서드 선언
@Insert("INSERT INTO EMP01(EMPNO, ENAME, JOB, DEPTNO, SAL) VALUES(#{empno},#{ename},#{job},#{deptno},#{sal})")
int insertEmp01(@Param("empno")int empno, @Param("ename")String ename, @Param("job")String job, 
				@Param("deptno")int deptno, @Param("sal")double sal);
				

 * */


-- 고객 정보 테이블 생성 (한글 데이터 입력 예시)
CREATE TABLE customers (
    customer_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(100),
    customer_email VARCHAR2(100) UNIQUE,
    customer_phone VARCHAR2(20),
    customer_address VARCHAR2(200)
);
CREATE SEQUENCE customer_seq;

-- 데이터 입력 예제 (한글 데이터)
INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone, customer_address)
VALUES (customer_seq.nextval, '김민수', 'kim.minsu@example.com', '010-1234-5678', '서울특별시 강남구 역삼동 123-45');

INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone, customer_address)
VALUES (customer_seq.nextval, '박지은', 'park.jieun@example.com', '010-2345-6789', '부산광역시 해운대구 좌동 56-78');

INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone, customer_address)
VALUES (customer_seq.nextval, '이현수', 'lee.hyunsoo@example.com', '010-3456-7890', '대구광역시 달서구 월배동 89-10');

INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone, customer_address)
VALUES (customer_seq.nextval, '최진영', 'choi.jinyoung@example.com', '010-4567-8901', '인천광역시 부평구 부평동 101-12');

INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone, customer_address)
VALUES (customer_seq.nextval, '홍길동', 'hong.gildong@example.com', '010-5678-9012', '경기도 수원시 장안구 정자천로 200-25');

INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone, customer_address)
VALUES (customer_seq.nextval, '김영희', 'kim.younghee@example.com', '010-6789-0123', '서울특별시 마포구 합정동 312-46');

INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone, customer_address)
VALUES (customer_seq.nextval, '이수정', 'lee.sujung@example.com', '010-7890-1234', '광주광역시 북구 대촌로 67-89');

INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone, customer_address)
VALUES (customer_seq.nextval, '정우성', 'jung.woosung@example.com', '010-8901-2345', '울산광역시 남구 삼산로 23-45');

INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone, customer_address)
VALUES (customer_seq.nextval, '임지은', 'lim.jieun@example.com', '010-9012-3456', '세종특별자치시 한솔로 12-34');

INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone, customer_address)
VALUES (customer_seq.nextval, '강하늘', 'kang.haneul@example.com', '010-0123-4567', '대전광역시 서구 둔산로 91-21');



SELECT * FROM customers WHERE customer_name  LIKE '%%' AND customer_address LIKE '%%';

SELECT * FROM EMP WHERE ename LIKE '%A%' AND job LIKE '%A%';
/*
입력 String ename, String job ==> Emp sch
출력 int empno, String ename .... ==> Emp
	Emp하나가 아니고 여러개 행단위이기에 ==> List<Emp>
@Select("SELECT * FROM EMP WHERE ename LIKE #{ename} AND job LIKE #{job}")	
List<Emp> getEmpList(Emp sch);
	
 * */
SELECT * FROM CUSTOMERS;
-- CUSTOMER_NAME, CUSTOMSER_ADDRESS를 키워드 검색되게..
---입력값 String customerName, String customerAddress ==> Customer sch
-- 리턴값 int customerId, String customerName, String customerEmail, ..... ==> Customer ==> List<Customer
-- VO/DTO  class Customer
-- 메서드선언..
/* 
@Select("SELECT * FROM customers WHERE customer_name  LIKE #{customerName} AND customer_address LIKE #{customerAddress}") 
List<Customer> getCustomerList(  Customer sch );

 * 

 * */
INSERT INTO customers VALUES (customer_seq.nextval, '홍길동', 'hong@example.com', '010-1234-5678', '서울특별시 강남구 역삼동 33-555');
SELECT * FROM CUSTOMERS;
/*
입력 : int customerId; String customerName; String customerEmail; String customerPhone;  String customerAddress;
리턴 : int
@Insert("INSERT INTO customers VALUES (customer_seq.nextval, #{customerName}, #{customerEmail},#{customerPhone}, #{customerAddress})")
int insertCustomer(Customer ins);
 * */


-- 구매 테이블 생성
CREATE TABLE purchases (
    purchase_id NUMBER PRIMARY KEY,
    customer_id NUMBER,
    purchase_date DATE,
    purchase_amount NUMBER(10, 2),
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- 데이터 입력
INSERT INTO purchases VALUES (1, 1, TO_DATE('2025-06-13', 'YYYY-MM-DD'), 120000);
INSERT INTO purchases VALUES (2, 2, TO_DATE('2025-06-12', 'YYYY-MM-DD'), 55000);
INSERT INTO purchases VALUES (3, 3, TO_DATE('2025-06-11', 'YYYY-MM-DD'), 78000);
INSERT INTO purchases VALUES (4, 4, TO_DATE('2025-06-10', 'YYYY-MM-DD'), 99000);
INSERT INTO purchases VALUES (5, 5, TO_DATE('2025-06-09', 'YYYY-MM-DD'), 45000);
INSERT INTO purchases VALUES (6, 6, TO_DATE('2025-06-08', 'YYYY-MM-DD'), 67000);
INSERT INTO purchases VALUES (7, 7, TO_DATE('2025-06-07', 'YYYY-MM-DD'), 88000);
INSERT INTO purchases VALUES (8, 8, TO_DATE('2025-06-06', 'YYYY-MM-DD'), 110000);
INSERT INTO purchases VALUES (9, 9, TO_DATE('2025-06-05', 'YYYY-MM-DD'), 33000);
INSERT INTO purchases VALUES (10, 10, TO_DATE('2025-06-04', 'YYYY-MM-DD'), 77000);
INSERT INTO purchases VALUES (11, 11, TO_DATE('2025-06-03', 'YYYY-MM-DD'), 99000);

SELECT * FROM purchases ;

ALTER TABLE PURCHASES 
ADD PROD_NAME VARCHAR2(50);
SELECT * FROM PURCHASES WHERE PROD_NAME LIKE '%%' AND PURCHASE_AMOUNT BETWEEN 30000 AND 1200000;


