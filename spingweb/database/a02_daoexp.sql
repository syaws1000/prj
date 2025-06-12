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
int insertEmp01(@Param("empno")int deptno, @Param("ename")String ename, @Param("job")String job, 
				@Param("deptno")int deptno, @Param("sal")double sal);
				

 * */





