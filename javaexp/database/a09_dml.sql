SELECT * FROM EMP; -- CTRL  ENTER
/* 
# ORACLE SQL DML(Data Manipulation Language) - INSERT, UPDATE, DELETE
1. INSERT 문 : 데이터 추가
	1) INSERT 문은 테이블에 새로운 데이터를 추가할 때 사용하는 명령어입니다.
		한번에 하나의 행 또는 다수의 행을 입력할 수 있으며, VALUES절을 사용하여
		컬럼에 맞는 데이터를 순서대로 넣습니다.
	2) 주요 키워드
		INSERT INTO 테이블 : 입력하는 명령어로 어디로 넣는다는 의미
							특정한 테이블에 넣어서 처리
		VALUES : 값들을 지정한다는 의미로 실제 들어가는 데이터를 지정할 때, 사용된다.
	3) 기본 형식 
		INSERT INTO 테이블명(컬럼명1, 컬럼명2, .... )
		      VALUES (값1, 값2, ...)
		특정한 테이블을 지정하고 입력할 컬럼도 지정하여 해당 순서에 맞게
		값을 연결하여 입력 처리하는 것을 말한다.
	4) 예시 DEPT01 테이블에 입력하기
		INSERT INTO DEPT01 VALUES(50,'인사','서울'); -- 한번에 모든 열을 입력할 때.
		INSERT INTO DEPT01(DEPTNO, LOC) VALUES(60,'성남'); -- 특정한 열을 지정하여 입력할 때.
	5) 예시 날짜데이터를 입력시(EMP01 테이블)
		INSERT INTO EMP01(ENAME, HIREDATE) VALUES('홍길동', SYSDATE); 
			EMP01 테이블에 ENAME과 HIREDATE  컬럼에 홍길동과 오늘 날짜와 현재시간으로 입력
			SYSDATE(현재날짜와 시간)
		INSERT INTO EMP01(EMPNO, HIREDATE) VALUES(1000, TO_DATE('2025-04-01','YYYY-MM-DD'));
			EMP01 테이블에 EMPNO와 HIREDATE 컬럼에 1000과  2025년4월1일 날짜 데이터를 입력시 처리
			DATE타입유형인 컬럼 HIREDATE는 TO_DATE('입력할데이터문자열','입력할날짜형식지정')으로 함수를 사용하여 
			입력하여야 한다.
			주의)입력할 데이터, 설정한 컬럼의 유형과 크기안에서 입력하여야 한다.
*/
SELECT * FROM DEPT01;
INSERT INTO DEPT01 VALUES(50,'인사','서울');
-- 조회, 입력명령, 조회확인, 커밋(버튼) COMMIT; 명령, 
-- EX) DEPT01 테이블에 60, '재무', '성남' 으로 데이터를 입력하고 확인 후, COMMIT 처리하세요..
INSERT INTO DEPT01 VALUES(60, '재무','성남');
INSERT INTO DEPT01(DNAME, LOC) VALUES('회계','부산');  -- 테이블(지정한컬럼1, 지정한컬럼2) VALUES(데이터1, 데이터2)
-- EX) EMP01 테이블에 EMPNO(사원번호), ENAME(사원명), SAL(급여)  1000, '홍길동', 4500.0  입력 후, 확인하세요.
SELECT * FROM EMP01;
INSERT INTO EMP01(EMPNO, ENAME, SAL) VALUES(1000,'홍길동',4500.0);
-- 현재 시간 입력
INSERT INTO EMP01(ENAME, HIREDATE) VALUES('마길동',SYSDATE);
-- EX) EMP01 테이블에 사원번호(1002), 사원명(오길동), 입사일(현재날짜), 부서번호(20) 입력하세요..
INSERT INTO EMP01(EMPNO, ENAME, HIREDATE, DEPTNO) VALUES(1002,'오길동',SYSDATE,20);
-- TO_DATE('2025-05-01','YYYY-MM-DD')  : 2025년 5월 1일을 날짜데이터로 처리.
INSERT INTO EMP01(ENAME, HIREDATE) VALUES('하길동', TO_DATE('2025-05-01','YYYY-MM-DD'));
SELECT * FROM EMP01;
-- EX) 사원번호, 사원명, 입사일, 급여를 EMP01테이블에 입력하세요 1003, '오길동', 2025-04-30, 3500
INSERT INTO EMP01(EMPNO,ENAME,HIREDATE,SAL) VALUES(1003,'오길동',
	TO_DATE('2025-04-30','YYYY-MM-DD'), 3500);
/*
# UPDATE 문 - 데이터 수정
1. UPDATE 문은 테이블의 기본 데이터를 변경(수정)할 때, 사용됩니다.
	조건절(WHERE)을 명확히 주지 않으면 전체 데이터가 수정될 수 있으므로 주의가 필요합니다.
2. 주요 키워드
	UPDATE 테이블   : 특정한 테이블을 수정한다는 말
	SET 컬럼 = 변경할데이터  : 해당 컬럼에 변경할 데이터를 저장(SET)하겠다는 말로 변경을 의미한다.
	WHERE 조건  : 위 데이터를 변경을 할 조건을 비교/논리연산식에 의해서 정한다는 의미
3. 기본 형식
	UPDATE 테이블명
	   SET 컬럼1 = 변경할값1,
	   	   컬럼2 = 변경할값2,
	   	   컬럼3 = 변경할값3,
	   	   ...
	 WHERE 조건;
4. 예제1
	부서테이블의 부서명과 부서위치를 변경처리
	UPDATE DEPT01
	   SET DNAME = '아이티사업부',
	       LOC = '인천'
	  WHERE DEPTNO = 50;
   에제2
   사원테이블의 입사일을 2025-04-17로 변경처리 하고, 급여도 증가 처리
   UPDATE EMP01
      SET HIREDATE = TO_DATE('2025-04-17','YYYY-MM-DD'),
          SAL = SAL + (SAL*0.15)    -- 급여를 기존에서 15%인상 처리	  	
    WHERE  EMPNO = 7369;

*/
SELECT * FROM DEPT01;
UPDATE DEPT01
   SET DNAME = '아이티사업부',
       LOC = '인천'
  WHERE DEPTNO = 50;  
/* EX) 부서정보(DEPT01)에 부서명(DNAME)이 회계인 것을 부서번호(DEPTNO)를 70으로 부서위치(LOC)를 제주도로 변경하세요
 * */
UPDATE DEPT01
  SET DEPTNO = 70,
      LOC = '제주도'
 WHERE DNAME = '회계';
SELECT * FROM DEPT01;
-- 날짜 변경과 기존데이터에서 추가 처리
SELECT * 
FROM EMP01
WHERE EMPNO = 7369;
UPDATE EMP01 
   SET HIREDATE = TO_DATE('2025-04-30','YYYY-MM-DD'),
       SAL = SAL + (SAL*0.15)  -- 기존의 SAL에서 15% 인상한 데이터 할당 처리
 WHERE EMPNO = 7369;

SELECT *
FROM EMP01
WHERE JOB = 'SALESMAN';
-- EX) EMP01에서 직책이 'SALESMAN'을
--     HIREDATE를 2025-01-01로 변경하면서 SAL를 25% 인상하여 데이터를 할당 처리하세요
UPDATE EMP01
   SET HIREDATE = TO_DATE('2025-01-01','YYYY-MM-DD'), 
       SAL = SAL + (SAL * 0.25)
 WHERE JOB = 'SALESMAN';






   	



