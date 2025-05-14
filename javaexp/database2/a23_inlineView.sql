/*
# inline view(가상 테이블로 사용된 서브쿼리)
1. 서버쿼리를 FROM 절에서 사용하면, 그 결과가 마치 가상 테이블처럼 작동하여 다른 테이블과
	조인하는데 사용된다.
*/
-- 부서별 최고 급여자 조회
SELECT DEPTNO, MAX(SAL) SAL
FROM EMP
GROUP BY DEPTNO;

SELECT E.DEPTNO, ENAME, E.SAL
FROM EMP E,
     (
		SELECT DEPTNO, MAX(SAL) SAL
		FROM EMP
		GROUP BY DEPTNO     
     ) D
WHERE E.DEPTNO =D.DEPTNO
AND E.SAL = D.SAL
ORDER BY E.DEPTNO;
