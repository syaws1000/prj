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
A03_ExpDao dao = new A03_ExpDao();
String empnoStr = request.getParameter("empno");
int empno = 0;
if(empnoStr!=null) empno = Integer.parseInt(empnoStr);
String ename = dao.getEnameByEmpno(empno);
%>
<div class="container">
	<h2 class="title">단일데이터 입력 단일데이터검색</h2>
	<form class="form">
		<label>사원번호</label>
		<input type="number" name="empno" value="<%=empno%>"/><br>
		<label>사원명</label><%=ename%>
	</form>
</div>

</body>
</html>