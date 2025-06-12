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


SELECT * FROM EMP01;
INSERT INTO EMP01(JOB) VALUES('사원');
/*
EMP01의 JOB 만 입력하고, 기능메서드 선언.
@Insert("INSERT INTO DEPT01(DNAME) VALUES(#{dname})")
int insertDept(@Param("dname") String dname);
@Insert("INSERT INTO EMP01(JOB) VALUES(#{job})")
int insertEmp01(@Param("job") String job);

*/



