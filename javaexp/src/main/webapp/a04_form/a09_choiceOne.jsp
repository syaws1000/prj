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
	ex) a09_choiceOne.jsp
		가장 좋아하는 과일
		()사과  name="fruit" value="사과"
		()바나나
		()딸기
		()오렌지
		[선택]		
		선택된 과일:@@@  ${param.fruit}
	 -->
	<h2>가장 좋아하는 과일</h2>
	<form>
		<input type="radio" name="fruit" value="사과">사과<br> <!-- br : 줄바꿈 처리  -->
		<input type="radio" name="fruit" value="바나나">바나나<br> <!-- br : 줄바꿈 처리  -->
		<input type="radio" name="fruit" value="딸기">딸기<br> <!-- br : 줄바꿈 처리  -->
		<input type="radio" name="fruit" value="오렌지">오렌지<br> <!-- br : 줄바꿈 처리  -->
		<input type="submit" value="선택"/>
	</form>
	선택된 과일:${param.fruit}
</body>
</html>