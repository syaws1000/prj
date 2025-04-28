<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
# 숫자형 데이터 입력 처리.
1. input type="number"나 type="range"는 숫자형 데이터의
범위를 설정하여 처리할 수 있다.
2. 기본 형식
	<input type="number" name="요청키" value="숫자형데이터">
	<input type="range" name="요청키" value="숫자형데이터">
3. 추가 속성
	1) min : 입력할 수 있는 숫자의 최소범위 지정
	2) max : 입력할 수 있는 숫자의 최대범위 지정
 -->
<h2>숫자와 범위를 입력</h2>
<form>
	숫자를 입력:<input type="number" name="num01" value="50" min="1" max="100"><br>
	범위를 입력:<input type="range" name="num02" value="50" min="1" max="100"><br>
	<input type="submit">
</form> 
<h2>전송된 데이터</h2>
숫자형:${param.num01}<br>
범위형:${param.num02}
<!--
a15_numberForm.jsp 
위 number와 range를 활용하여  물건의 가격(1000~10000)과  점수(0~100)를 입력해서 출력해보세요..
 -->



</body>
</html>