/*
# NON EQUAL JOIN
1. 조인하는 두 개의 테이블의 컬럼 값이 동일하지 않지만, 범위를 정하거나 특정한 형식으로
	조인을 할 수 있을 때, 사용하는 JOIN구문을 말한다.
	EX) 사원의 급여는 등급테이블의 특정컬럼과 정확하게 동일하지 않지만, 범위를 지정해서
		조인하는 것은 가능 하다..
		
 * */
SELECT * FROM SALGRADE;
-- 사원의 급여를 등급별로 분류해서 조인하여 출력
SELECT ENAME, SAL, GRADE
FROM EMP E, SALGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL;

CREATE TABLE STUDENTS2 (
    STUDENT_ID INT ,     -- 학생 ID
    STUDENT_NAME VARCHAR(100),      -- 학생 이름
    GRADE NUMBER(5, 2)             -- 학생 점수
);

INSERT INTO STUDENTS2 (STUDENT_ID, STUDENT_NAME, GRADE) VALUES(1, 'Alice', 85.5);     -- Alice는 85.5점
INSERT INTO STUDENTS2 (STUDENT_ID, STUDENT_NAME, GRADE) VALUES(2, 'Bob', 70.0);     -- Alice는 85.5점
INSERT INTO STUDENTS2 (STUDENT_ID, STUDENT_NAME, GRADE) VALUES(3, 'Charlie', 92.3);     -- Alice는 85.5점
INSERT INTO STUDENTS2 (STUDENT_ID, STUDENT_NAME, GRADE) VALUES(4, 'David', 65.0);     -- Alice는 85.5점
INSERT INTO STUDENTS2 (STUDENT_ID, STUDENT_NAME, GRADE) VALUES(5, 'Eva', 78.4);     -- Alice는 85.5점

CREATE TABLE GRADE_TABLE (
    GRADE_LEVEL INT PRIMARY KEY,  -- 등급 레벨
    MIN_SCORE NUMBER(5, 2),      -- 최소 점수
    MAX_SCORE NUMBER(5, 2)      -- 최대 점수
);

INSERT INTO GRADE_TABLE (GRADE_LEVEL, MIN_SCORE, MAX_SCORE) VALUES(1, 0, 59.99);   -- 1등급: 0 ~ 59.99점
INSERT INTO GRADE_TABLE (GRADE_LEVEL, MIN_SCORE, MAX_SCORE) VALUES(2, 60, 69.99);   -- 1등급: 0 ~ 59.99점
INSERT INTO GRADE_TABLE (GRADE_LEVEL, MIN_SCORE, MAX_SCORE) VALUES(3, 70, 79.99);   -- 1등급: 0 ~ 59.99점
INSERT INTO GRADE_TABLE (GRADE_LEVEL, MIN_SCORE, MAX_SCORE) VALUES(4, 80, 89.99);   -- 1등급: 0 ~ 59.99점
INSERT INTO GRADE_TABLE (GRADE_LEVEL, MIN_SCORE, MAX_SCORE) VALUES(5, 90, 100);   -- 1등급: 0 ~ 59.99점
SELECT * FROM STUDENTS2;  -- STUDENT_NAME, GRADE
SELECT * FROM GRADE_TABLE; 
SELECT  STUDENT_NAME, GRADE, GRADE_LEVEL, MIN_SCORE, MAX_SCORE
FROM STUDENTS2 S, GRADE_TABLE G
WHERE S.GRADE BETWEEN MIN_SCORE AND MAX_SCORE;
-- EX) STUDENTS2테이블과 GRADE_TABLE를 NON EQUAL JOIN으로 처리하세요.
/*
SELECT ENAME, SAL, GRADE
FROM EMP E, SALGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL;
**/
/*
# SELF JOIN
1. 동일한 테이블을 두 번 이상 참조하여 조인하는 방법입니다. 즉, 하나의 테이블을 자기 자신과
조인하는 것입니다. 일반적인 조인에서는 서로 다른 두 테이블을 결합하지만, SELF JOIN에서는 하나의
테이블을 두 번 참조하여 데이터를 결합합니다.
2. SELF JOIN을 사용할 때는 테이블에 두 개의 별칭(ALIAS)을 사용하여 구분합니다. 이를 통해
동일한 테이블에서 서로 다른 데이터를 비교하거나 결합할 수 있습니다.
3. 예시
	사원과 그들의 상사 정보 : 사원과 해당 사원의 상사 정보를 함께 조회하고자 할 때,
	사원테이블을 자기 자신과 조인하여 상사의 이름과 그에 따른 사원의 정보를 동시에 가져올 수 있습니다.
	EMPNO ==> 사원번호
	MGR ==> 해당사원의 관리자 번호 ==> EMPNO 관리자의 사원번호 ENAME 관리자의 이름
	
	SELECT E.ENAME "사원이름", E.MGR "관리자의 사원번호", M.ENAME "관리자의 이름"
	FROM EMP E, EMP M
	WHEERE E.MGR = M.EMPNO;	
 * */
SELECT E.ENAME "사원이름", E.MGR "관리자의 사원번호", M.ENAME "관리자의 이름"
FROM EMP E, EMP M
WHERE E.MGR = M.EMPNO;	
CREATE TABLE FAMILY (
    PERSON_ID INT ,     -- 사람 ID
    NAME VARCHAR(50),              -- 사람 이름
    PARENT_ID INT                 -- 부모의 ID (SELF JOIN을 위한 참조)
);
INSERT INTO FAMILY (PERSON_ID, NAME, PARENT_ID) VALUES(1, 'John', NULL);              -- John은 부모가 없음 (최상위)
INSERT INTO FAMILY (PERSON_ID, NAME, PARENT_ID) VALUES(2, 'Jane', 1);                 -- Jane의 부모는 John
INSERT INTO FAMILY (PERSON_ID, NAME, PARENT_ID) VALUES(3, 'Alice', 1);                -- Alice의 부모는 John
INSERT INTO FAMILY (PERSON_ID, NAME, PARENT_ID) VALUES(4, 'Bob', 2);                  -- Bob의 부모는 Jane
INSERT INTO FAMILY (PERSON_ID, NAME, PARENT_ID) VALUES(5, 'Charlie', 2);              -- Charlie의 부모는 Jane
INSERT INTO FAMILY (PERSON_ID, NAME, PARENT_ID) VALUES(6, 'David', 3);                -- David의 부모는 Alice
-- 위 SELF JOIN으로 FMAILY 테이블을 조인하여  자식이름  부모이름  출력하세요.
SELECT * FROM FAMILY;
SELECT S.NAME "자식이름", P.NAME "부모이름"
FROM FAMILY S, FAMILY P
WHERE S.PARENT_ID = P.PERSON_ID;
SELECT S.*, P.*
FROM FAMILY S, FAMILY P
WHERE S.PARENT_ID = P.PERSON_ID ;

SELECT * FROM FAMILY;




