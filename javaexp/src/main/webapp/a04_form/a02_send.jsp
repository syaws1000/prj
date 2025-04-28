<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
a02_send.jsp?name=홍길동&kor=80 
--%>
	<h2>이름:${param.name}</h2>
	<h2>점수:${param.kor}</h2>
</body>
</html>