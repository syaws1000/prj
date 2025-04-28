
/*
# NVL(컬럼, 대체값)
1. 컬럼 값이 NULL인 경우 지정한 대체값으로 변환
	NULL을 의미 있는 값으로 치환
2. 기본형식
	NVL(컬럼명, 대체값)
3. 특징
	1) 데이터 타입이 컬럼명과 대체값이 일치해야 한다.
	2) 주로 SELECT, 계산식, WHERE 절 등에서 사용된다.
 * */
-- 보너스(COMM)이 NULL이면 0으로 출력
SELECT ENAME, JOB, SAL, COMM, NVL(COMM,0) 보너스, SAL + COMM "합산1",
		SAL + NVL(COMM,0) "합산2"
FROM EMP01;	
SELECT * FROM EMP01;
-- EX1) 사원들의 보너스가(COMM)이 NULL인 경우를 0으로 처리하여, 0 초과 사원정보를
--      사원명(ENAME), 급여(SAL), 보너스(COMM)으로 출력하세요..
SELECT ENAME, SAL, COMM, NVL(COMM,0) "보너스"
FROM EMP
WHERE NVL(COMM,0)>0;
-- EX2) 사원정보 중에 직책(JOB)을 출력하되, 직책이 NULL인 경우는 '직책미배정'이라고
--       출력하여   사원명(ENAME), 직책(JOB)을 출력하세요.
SELECT ENAME, JOB, NVL(JOB,'직책미배정') "직책"
FROM EMP01;
-- EX3) 사원정보 중에 급여(SAL)과 보너스(COMM)의 합산액이 3000이상인 사원정보를 출력하세요.
SELECT ENAME, SAL, COMM, SAL + NVL(COMM,0) "합산"
FROM EMP E
WHERE SAL + NVL(COMM,0) > 3000;
/*
# NULLIF(표현1, 표현식2)
1. 표현식1과 표현식2가 같으면 NULL, 다르면 표현식1 반환
	중복값을 제거하거나 구분할 때 유용
2. 기본형식
	NULLIF(표현식1, 표현식2)
3. 특징
	1) 두 값이 같을 때만 NULL 반환
	2) DECODE 보다 간결하게 특정 비교 처리 가능..	
 * */
-- 급여가 3000인 사원은 NULL, 그외는 급여 출력
SELECT ENAME, NULLIF(SAL,3000) 비교급여
FROM EMP;
-- MGR과 EMPNO가 같으면 NULL
SELECT ENAME, NULLIF(EMPNO, MGR) FROM EMP;
-- 같은 JOB일 경우 NULL
SELECT ENAME, JOB, NULLIF(JOB,'CLERK') 직무출력 FROM EMP;
-- EX1) 부서번호(DEPTNO)가 10일 때 NULL 그외는 부서번호를 출력해서  사원명, 부서번호를 출력하세요.
SELECT ENAME, DEPTNO, NULLIF(DEPTNO,10) "부서번호"
FROM EMP;
-- EX2) 사원의 이름이 'KING'인 경우 NULL 그외는 사원이름을 출력하여  사원번호, 사원명을 출력하세요.
SELECT EMPNO, ENAME, NULLIF(ENAME,'KING') "사원명"
FROM EMP;
/*
# NVL2(컬럼, 값1, 값2)
1. 컬럼이 NULL이 아닐 경우 ==> 값1, NULL일 경우 ==> 값2반환
	if-else같은 구문
2. 기본형식
	NVL2(컬럼, 값1, 값2)
3. 특징
	1) 세 개의 인자를 받아 조건 분기
	2) NVL보다 좀 더 유연한 제어 가능
*/
-- 보너스가 있는 경우 '보너스 있음', 없으면 '보너스 없음'
SELECT ENAME, COMM, NVL2(COMM,'보너스 있음', '보너스 없음') "보너스 유무"
FROM EMP;
-- COMM이 존재하면 SAL + COMM, 없으면 SAL만 출력
SELECT ENAME, SAL, COMM, NVL2(COMM, SAL+COMM, SAL) "실수령액"
FROM EMP;
-- 관리자(MGR)가 있으면 '관리자 있음', 없으면 '관리자 없음'
SELECT ENAME, MGR, NVL2(MGR, '관리자 있음','관리자 없음') "관리자 유무"
FROM EMP;
-- EX1) 직책(JOB)이 NULL이 아닐 경우 '현직', NULL이면 대기자로
--     EMP01테이블에서 사원명(ENAME)과 직책(JOB), 직책구분으로 출력하세요..
SELECT ENAME, JOB, NVL2(JOB,'현직','대기자') "직책구분"
FROM EMP01;
-- EX2) 부서번호(DEPTNO)가 NULL이 아니면 '배정완료', NULL이면 '배정대기'
--     EMP01테이블에서 사원번호(EMPNO), 부서번호, 부서배정여부로 출력하세요..
SELECT EMPNO, DEPTNO, NVL2(DEPTNO, '배정완료', '배정대기') "부서배정여부"
FROM EMP01;
INSERT INTO EMP01(EMPNO) VALUES(1003);

