SELECT * FROM EMP10;

/*
	1) 조회 처리
		1단계 출력 : 1행 1열, 입력 : 단일데이터
	 	2단계 출력 : 다수행 1열, 입력 : 변수형데이터(2개 시작/마지막)
	 	3단계 출력 : 1행, 다수열,  입력 : 객체형데이터 처리(여러가지 변수 설정)
	 	4단계 출력 : 다수행, 다수열,  입력 : 객체형데이터 처리(여러가지 변수 설정)
	 2) 등록/수정/삭제
	 	1단계  출력 : 갯수,   입력 : 단일데이터
	 	2단계  출력 : 갯수,   입력 : 변수형데이터(2개 이상)
	 	3단계  출력 : 갯수,   입력 : 객체형데이터(여러가지 변수 설정)
	 3) 화면 연동하여 위 내용을 처리(view단 연동)
 * 
 * */
SELECT * FROM EMP10;
-- 1단계 출력 : 1행 1열, 입력 : 단일데이터
SELECT COUNT(*) FROM EMP10 WHERE DEPTNO = 10;
/*
메서드 선언  :  입력값을 JAVA의 매개변수로 처리,  출력 JAVA 리턴유형으로 처리..

@Select("SELECT COUNT(*) FROM EMP10 WHERE DEPTNO = #{deptno} ")
int getCountByDeptno(@Param("deptno") int deptno);

==> @Param("변수명")은 sql에서 pstmt로 매핑할 변수명을 지정할 때, 사용된다. 이 메서드에 
부서번호과 정수로 전달하면 #{deptno}에 할당 처리..


 * */


-- 20번 부서의 최대 급여 출력..
SELECT MAX(SAL) FROM EMP10 WHERE DEPTNO = 20;
-- 직책 SALESMAN의 최저 급여 출력..
SELECT MIN(SAL) FROM EMP10 WHERE JOB = 'SALESMAN';



