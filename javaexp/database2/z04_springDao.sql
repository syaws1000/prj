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
@Select("SELECT COUNT(*) FROM EMP10 WHERE DEPTNO = #{deptno}")
int xxxx(@Param("deptno")int deptno);
 
 * 
메서드 선언  :  입력값을 JAVA의 매개변수로 처리,  출력 JAVA 리턴유형으로 처리..

@Select("SELECT COUNT(*) FROM EMP10 WHERE DEPTNO = #{deptno} ")
int getCountByDeptno(@Param("deptno") int deptno);

==> @Param("변수명")은 sql에서 pstmt로 매핑할 변수명을 지정할 때, 사용된다. 이 메서드에 
부서번호과 정수로 전달하면 #{deptno}에 할당 처리..
 * */
-- 20번 부서의 최대 급여 출력..
SELECT MAX(SAL) FROM EMP10 WHERE DEPTNO = 20;
/*
dao 메서드 선언..

@Select("SELECT MAX(SAL) FROM EMP10 WHERE DEPTNO = #{deptno}")
double getMxSalByDeptno(@Param("deptno") int deptno);
 * */

-- 직책 SALESMAN의 최저 급여 출력..
SELECT MIN(SAL) FROM EMP10 WHERE JOB = 'SALESMAN';
/*
결과 : 1,250 ==> java로 double sal;
입력 : 'SALESMAN' ==> java  String job;

@Select("SELECT MIN(SAL) FROM EMP10 WHERE JOB = #{job1}")
double getSalByJob(@Param("job1") String job);

 * */

SELECT AVG(SAL) FROM EMP10 WHERE MGR = 7698;
/*
결과 : 1310 ==> double avSal
입력 : 7698 ==> int mgr
기능 메서드 선언..
@Select("SELECT AVG(SAL) FROM EMP10 WHERE MGR = #{mgr}")
double getAvSalByMgr(@Param("mgr") int mgr);

 **/


 -- 	 	2단계 출력 : 다수행 1열, 입력 : 변수형데이터(2개 시작/마지막)
SELECT * FROM EMP10;



SELECT ENAME FROM EMP10 WHERE SAL BETWEEN 1000 AND 3000;
-- 출력 
/*
ALLEN
WARD
JONES
MARTIN
BLAKE
CLARK
TURNER
FORD
MILLER
	String[] 
	List<String>  ===> 메서드의 리턴유형 설정.

입력 : 1000 AND 3000  ==> double start, double end
                         int start, int end
                         
@Select("SELECT ENAME FROM EMP10 WHERE SAL BETWEEN #{start} AND #{end} ")
List<String> getEnames(@Param("start") int start, @Param("end") int end);                    
                         
                         
@Select("SELECT ENAME FROM EMP10 WHERE SAL BETWEEN #{start} AND #{end}")                         
List<String> getEnamesByStartEnd(@Param("start")int start, @Param("end")int end);
                         


@Select("")
List<String>  getEnames(int start, int end);
*/
SELECT * FROM EMP10;
--- 특정 범위에 있는 사원번호의 급여
SELECT SAL FROM EMP10 WHERE EMPNO BETWEEN 1300 AND 1700;
/*
1. 결과 값 유형 : List<Double>  
	실수형리스트 : List<Double>
	정수형리스트 : List<Integer>
	날짜형리스트 : List<Date>
	문자열리스트 : List<String>
	객체형  : List<Object>

2. 입력 값 선언 : int start, int end
3. 메서드 선언.
@Select("SELECT SAL FROM EMP10 WHERE EMPNO BETWEEN #{start} AND #{end}")
List<Double> getSals(@Param("start")int start, @Param("end")int end);
4. service단 호출.

 * */
SELECT * FROM EMP10;
SELECT HIREDATE FROM EMP10 WHERE JOB = 'SALESMAN' OR DEPTNO = 20;
/*
출력 유형: List<Date>
입력 유형: String job, int deptno
기능 메서드 선언:
@Select("SELECT HIREDATE FROM EMP10 WHERE JOB = #{job} OR DEPTNO = #{deptno}")
List<Date> getHiredate(@Param("job")String job, @Param("deptno")int deptno)

 * */






