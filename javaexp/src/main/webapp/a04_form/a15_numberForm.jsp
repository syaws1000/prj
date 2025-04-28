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
a15_numberForm.jsp 
위 number와 range를 활용하여  물건의 가격(1000~10000)과  점수(0~100)를 입력해서 출력해보세요..
 -->
	<form>
	물건의 가격:<input type="number" name="price" value="1000" min="1000" max="10000"><br>
	점수:<input type="range" name="point" value="50" min="0" max="100"><br>
	<input type="submit">
	</form>
	입력된 가격:${param.price}<br>
	입력된 점수:${param.point}
</body>
</html>