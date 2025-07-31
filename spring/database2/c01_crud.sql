CREATE TABLE employees100 (
    employee_id NUMBER(5) PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    email VARCHAR2(100),
    hire_date DATE,
    salary NUMBER(10, 2)
);
-- 위 내용을 처리할 수 있는 VO를 만드세요..

SELECT * FROM employees100;
CREATE SEQUENCE employ100_seq;
INSERT INTO employees100 values(employ100_seq.nextval,'홍','길동','zel@gmail.com', to_date('2025-08-01','YYYY-MM-DD'),3000);

/*
employeeId firstName last,Name email hireDate salary
INSERT INTO employees100 values(employ100_seq.nextval,#{firstName},#{lastName},#{email},#{hireDate},#{salary})

@Insert("INSERT INTO employees100 values(employ100_seq.nextval,#{firstName},#{lastName},
	#{email},#{hireDate},#{salary})")
int insertEmployee(Employee100 ins);



courses100 테이블
    course_id        -- 수업 ID (기본키)
    course_name         -- 수업 이름
    instructor          -- 강사 이름
    start_date           -- 시작 날짜
    end_date            -- 종료 날짜
    eval_pt             -- 학점
위와 같은 형식의 테이블 생성/데이터 입력..    
 * */
CREATE TABLE courses100(
	COURSE_ID NUMBER PRIMARY KEY,
	COURSE_NAME VARCHAR2(100),
	INSTRUCTOR VARCHAR2(100),
	START_DATE DATE,
	END_DATE DATE,
	EVAL_PT NUMBER
);
CREATE SEQUENCE courses100_SEQ;
INSERT INTO courses100 VALUES(courses100_SEQ.nextval, 'JSP 기초', '홍길동', to_date('2025-07-30','YYYY-MM-DD'), to_date('2025-08-30','YYYY-MM-DD'), 3);
SELECT * FROM courses100;

SELECT * FROM employees100;
