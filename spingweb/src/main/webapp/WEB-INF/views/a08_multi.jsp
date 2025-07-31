<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p><spring:message code="greeting"/></p>
<a href="?lang=ko"><spring:message code="korean"/></a> 
| <a href="?lang=en"><spring:message code="english"/></a>
</body>
</html>