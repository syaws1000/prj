/*

 * */
SELECT * FROM emp; -- 단일 주석문  ctrl+enter(실행문)
/*
여러줄 주석문
1. 조회문 기본 처리
2. 데이터는 select 구문을 이용하여 저장된 데이터를 호출할 수 있다.
3. 기본 형식
	select *  전체 컬럼 호출
		   empno, ename : 특정 컬럼 호출
    from 테이블명;   마지막에 ;(세미콜론)을 통해 명령문은 종료한다.
**/
SELECT * FROM emp; -- emp라는 테이블의 모든 컬럼 출력
SELECT empno, ename, job
FROM emp;   --emp 테이블에 empno, ename, job 컬럼 호출
-- ex1) dept 테이블의 전체 데이터와 컬럼을 확인하세요..
SELECT * FROM dept;
-- ex2) dept 테이블의 일부 컬럼을 조회하세요
SELECT deptno, loc
FROM dept;
-- ex3) salgrade 테이블의 모든 컬럼 출력, 특정 컬럼2개를 선택해서 출력..
SELECT *  -- 전체 컬럼 선택(*)
FROM salgrade; -- FROM 테이블명
SELECT losal, hisal -- SELECT 특정컬럼 선택
FROM salgrade;
/* 
# 컬럼의 별칭 사용하기
1. 모든 테이블의 구성요소 컬럼은 select 컬럼명으로 사용하여 호출할 수 있다.
2. 그러나, 특정한 경우에는 컬럼을 변경하거나, 통합된 컬럼명으로 처리해야 하는 경우가
	있다.
ex) select ename as name ==> 원래 컬럼명을 ename이었으나 출력할 때, 
			name으로 변경 해서 처리
	select sal salary ==> 위 as를 생략하고 한칸 띄우기로도 가능하다.
	select ename||deptno empname ==> 원래 두개의 컬럼이었으나
					||로 연결해서 empname이라는 이름으로 출력
3. 기본 형식
	select 컬럼명 as 컬럼명별칭 : as(alias)로 지정하는 경우
	select 컬럼명 컬럼명별칭 : 공백을 주고, 컬럼명의 별칭을 사용하는 경우
4. 별치컬럼명의 예외 사항
	1) 컬럼명은 특수 문자나 공백을 포함할 경우 "특수문자 "와 같이 ""(쌍따옴표) 사이에 넣어서 처리한다.		
**/
SELECT ename, sal
FROM emp;
SELECT ename AS name, sal salary
FROM emp;
SELECT empno, deptno, empno||deptno empdeptno
FROM emp;
SELECT '문자열표시' str1, 25 NO
FROM emp;

SELECT empno
FROM emp;

SELECT empno, '사원번호는 '||empno show   -- '문자열' || 컬럼을 통해 연결해서 출력도 가능하다.
FROM emp;

SELECT deptno  -- ex) 부서번호는 @@  출력되게 처리하세요..
FROM emp;

SELECT '부서번호는 '||deptno showMydept
FROM emp;



SELECT empno, ename, sal
FROM emp;

-- ex) 사원번호 @@인   @@@는 급여가 @@@입니다.  ==> showintro
SELECT empno, ename, sal,
'사원번호 '||empno||'인   '||ename||'는 급여가 '|| sal||'입니다.' showintro
FROM emp;

SELECT empno  "# 사원번호 #"  -- 컬럼명을 공백이나 특수문자를 포함해서 처리할 때는 "" 사이에서 처리한다.
FROM emp;

SELECT empno  "# 사원번호 #"  -- 컬럼명을 공백이나 특수문자를 포함해서 처리할 때는 "" 사이에서 처리한다.
FROM emp;
SELECT empno, job, sal 
FROM emp;
-- ex) 위와 같은 컬럼을   << 사원 번호 >>  # 직책 #   @ 급여 @ 로  컬럼명을 지정해서 출력해보세요.
SELECT empno "<< 사원 번호 >>", job "# 직책 #", sal "@ 급여 @"
FROM emp;







