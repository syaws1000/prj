<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="javaexp.a10_database.A04_ExpDao"
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
// <input name="deptno" 값을 입력하고, enter키를 입력시 submit가 처리되면
// 브라우저 url   a03_multiByone.jsp?deptno=40  ==> ?deptno=입력된데이터
// request.getParameter("요청키") : 입력한 요청값을 받게된다.
String deptnoStr = request.getParameter("deptno");
if(deptnoStr==null || deptnoStr.equals("")) deptnoStr = "0"; // 부서번호가 null(없으면)  "0"으로 처리
int deptno = Integer.parseInt(deptnoStr);  // "10" (문자열)을 숫자 10 로 변환..
A04_ExpDao dao = new A04_ExpDao();

%>
<div class="container">
    <h2 class="title">부서에 속한 사원명 검색</h2>
    <form class="form">
	<label>검색한 부서번호:</label>
	<input type="number" name="deptno" value="<%=deptnoStr%>"/><br>
    </form>
    <table class="data-table">
	<tr><th>사원명</th></tr>
	<%
	for(String ename:dao.getEnamesByDeptno(deptno)){  // List<String> 안에 들어간 문자열을 하나씩 뽑아줌
	%>
	<tr><td><%=ename%></td></tr>
	<%
	}
	%>
    </table>	
</div>
</body>
</html>