<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="javaexp.a10_database.A03_ExpDao"
    import="javaexp.a10_database.dto.Emp"       
    %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="/javaexp/a00_com/com.css">
</head>
<body>
<%
// 1. name="deptno" 에 데이터를 입력하여 enter키 submit되어..
// 2. a04_deptInfo.jsp?deptno=10
// 3. request.getParameter("deptno")

%>
<div class="container">
    <h2 class="title">부서정보검색</h2>
    <form class="form">
	<label>부서번호:<%=request.getParameter("deptno")%></label>
	<input type="number" name="deptno" value=""/><br>
    </form>
    
    <table class="data-table">
	<tr><th>사원번호</th><th>사원명</th><th>급여</th><th>부서번호</th></tr>
	<tr><td><td><td><td></tr>
    </table>	
</div>
</body>
</html>