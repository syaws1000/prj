<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="javaexp.a10_database.A02_EmpDao"
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
	<h2 class="title">사원정보리스트</h2>

	<%
	// java 코드가 삽입되는 부분..
	A02_EmpDao dao = new A02_EmpDao();
	%>
	<table class="data-table">
		<tr><th>사원번호</th><th>사원명</th><th>급여</th><th>부서번호</th></tr>
		<% 
		for(Emp e:dao.getEmpAll()){
		%>
		<tr><td><%=e.getEmpno()%></td><td><%=e.getEname() %></td>
			<td><%=e.getSal() %></td><td><%=e.getDeptno() %></td></tr>
		<% 
		}
		%>
		
	</table>	
</body>
</html>