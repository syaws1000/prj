/*
# inline view(가상 테이블로 사용된 서브쿼리)
1. 서버쿼리를 FROM 절에서 사용하면, 그 결과가 마치 가상 테이블처럼 작동하여 다른 테이블과
	조인하는데 사용된다.
*/
-- 부서별 최고 급여자 조회
SELECT DEPTNO, MAX(SAL) SAL
FROM EMP
GROUP BY DEPTNO;
SELECT * FROM EMP;
SELECT *
FROM EMP E,
     (
		SELECT DEPTNO, MAX(SAL) SAL
		FROM EMP
		GROUP BY DEPTNO     
     ) D
WHERE E.DEPTNO =D.DEPTNO
AND E.SAL = D.SAL
ORDER BY E.DEPTNO;
-- 직책별 최저 급여를 가진 사원정보..
-- 직책별 최저급여..(IN LINE VIEW)
SELECT JOB, MIN(SAL) MXSAL
FROM EMP
GROUP BY JOB;
SELECT *
FROM EMP E,
     (
		 SELECT JOB, MIN(SAL) MXSAL
		 FROM EMP
		 GROUP BY JOB    
     ) D
WHERE E.JOB = D.JOB
  AND E.SAL = D.MXSAL;

-- EX) 관리자번호별 최고급여의 사원정보를 출력하세요..
--   1) 관리자번호별 최고급여   MGR, MAX(SAL)
--   2) 위 내용을 INLINEVIEW로 사원정보 출력..
SELECT MGR, MAX(SAL) MXSAL
FROM EMP
GROUP BY MGR;

SELECT *
FROM EMP E, 
	(
		SELECT MGR, MAX(SAL) MXSAL
		FROM EMP
		GROUP BY MGR	
	) D
WHERE E.MGR = D.MGR
  AND E.SAL = D.MXSAL;

