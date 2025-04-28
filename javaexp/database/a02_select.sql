SELECT * FROM emp;
SELECT empno FROM emp;
SELECT empno NO FROM emp;
SELECT empno "# NO #" FROM emp;
SELECT empno || ' - ' || ename "사원번호와 사원명" FROM emp;
SELECT ename, sal, sal*0.15 "급여의 15%" FROM emp;
/*
# 데이터베이스 연결처리
1. oracle은 '문자열1'||숫자형 등과 같이 문자와 문자, 문자와 숫자를 연결 처리한다.
2. 숫자 + 숫자는 연산을 처리해준다.
3. alias 이름이 특수문자나 공백이 들어가면 ""로 처리한다.
**/
SELECT ename||'님' 호칭, sal || deptno "숫자||숫자"
FROM emp;
-- ex) 다음의 컬럼을 '-' 문자열로 연결하여 출력하세요   
--     alias명은 사원명 사원번호, 직책과 관리자명으로
---    ename - empno ==> 사원명과 사원번호
--     job - mgr ==> 직책명과 관리자명
SELECT ename name, empno no, ename || '-' || empno "사원명과 사원번호",
       job || '-' || mgr "직책명과 관리자명"
  FROM emp;  
-- 데이터를 출력형식(ename || '-' || empno), 
--  컬럼(타이틀)나타나는 형식은 구분("사원명과 사원번호")
-- 	'문자열데이터',  "별칭으로 타이틀로 나타낼 때"

-- ex) ename ( deptno )   ==> SMITH(20)   사원명(부서명)
SELECT ename, deptno, ename || '(' || deptno || ')' "사원명(부서명)"
FROM emp;








--      