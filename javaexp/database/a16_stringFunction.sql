/*
# INSTR() 함수
1. 문자열 데이터에서 특정 문자열을 찾아 해당 위치를 인덱스로 반환하는 함수입니다.
   대용량의 문자열에서 해당 문자열이 있는지 여부와 그 위치를 확인할 때, 주로 사용됩니다.
2. 형식
	1) INSTR(문자열 컬럼, '검색문자'):문자열의 처음부터 끝까지 검색합니다.
	2) INSTR(문자열 컬럼, '검색문자', 검색시작위치, 검색된위치): 지정된 위치부터
		시작하여 특정 횟수만틈 검색하여 위치를 반환합니다.
		
*/
-- 직책에서 'MAN'이 포함된 경우, 그 위치를 직책과 함께 출력
SELECT JOB, INSTR(JOB,'MAN') "MAN의 위치"
FROM EMP;
-- 사원명의 'K'가 포함된 경우, 그 위치를 사원명과 함께 출력하세요..
SELECT ENAME, INSTR(ENAME,'K') "K의 위치"
FROM EMP;

-- 'E'가 포함된 데이터와 포함되지 않는 데이터를 WHERE절을 이용하여 검색
-- 포함된 데이터 검색
SELECT ENAME, INSTR(ENAME, 'E') "E의 위치"
FROM EMP
WHERE INSTR(ENAME,'E')>0;
-- 포함되지 않는 데이터 검색
SELECT ENAME, INSTR(ENAME,'E') "E의 위치"
FROM EMP
WHERE INSTR(ENAME,'E') = 0;

SELECT ENAME, JOB
FROM EMP;
-- EX) INSTR을 이용하여 직책에서 MAN이 포함된 데이터만 검색하여 출력하세요
SELECT ENAME, JOB, INSTR(JOB,'MAN') "MAN위치"
FROM EMP
WHERE INSTR(JOB,'MAN')>0;
/*
# LPAD(), RPAD()
1. 문자열에서 특정 크기 이하일 때, 다른 문자로 채워서 처리하는 것을 말한다.
2. 예를들어 크기가 10자를 기준으로 해당 문자열보다 적으면 공백이나 #문자로 채워서,
	그 크기를 동일하게 처리할 필요가 있을 때 활용한다.
3. PAD라는 덧붙인다는 기본 키워드를 중심을 LEFT PAD ==> LPAD, RIGHT PAD ==> RPAD
	로 오른쪽 왼쪽에 덧붙여서 처리하는 것을 말한다.
4. 기본 형식
	LPAD(데이터, 기준크기, 왼쪽에 덧붙일문자열)
	RPAD(데이터, 기분크기, 오른쪽에 덧붙일문자열)
	참고) 가변형 문자열을 고정형 문자열로 변환할 때, 이외의 자리수에 있는 문자를 특정문자로 채울 때 사용된다.
 * */
SELECT ENAME, RPAD(ENAME, 6, '#') "변형된사원명"
FROM EMP;
-- ex) MAX, LENGTH 함수를 이용해서 JOB의 글자의 최대 크기를 확인하고, 그 크기보다 작은 문자열 데이터는
--    왼쪽에 @로 채워서 출력해보세요.
SELECT MAX(LENGTH(JOB))
FROM EMP;
SELECT JOB, LPAD(JOB, 9,'@') "직책명"
FROM EMP;
/*
# LTRIM(), RTRIM()
1. 필요없는 문자열을 좌/우에서 절삭해서 처리하는 TRIM
2. TRIM이라는 말은 절삭이라는 말로, 왼쪽이나 오른쪽 끝에 있는 특정한 문자열을 반복적으로 삭제할 때, 사용된다.
3. 주요 기능 함수
	1) LTRIM(컬럼|데이터, '제거할문자') : 왼쪽에 제거할 문자를 반복적으로 없애준다.
	2) RTRIM(컬럼|데이터, '제거할문자') : 오른쪽에 제거할 문자를 반복적으로 없애 준다.
	3) TRIM('양쪽에 제거할 문자' FROM  컬럼|데이터) : 양쪽 끝에서부터 반복적으로 제어할 문자처리
	EX) 
	'   HI   ' 입력시, 공백이 처리된 내용을 위 TRIM()통해서 처리할 수 있다.
	이런 경우, 위 함수를 통해 다시 데이터를 입력하거나, 조건이나 선택문에서 위 함수를 적용해서 검색처리한다.
 * */
-- 사원정보의 ENAME은 왼쪽에 A를 절삭해서 처리
SELECT ENAME, LTRIM(ENAME,'A') "절삭ENAME"
FROM EMP;
-- EX) JOB에 오른쪽에 N을 절삭헤서 출력해보세요..
SELECT JOB, RTRIM(JOB,'N') "절삭JOB"
FROM EMP;





