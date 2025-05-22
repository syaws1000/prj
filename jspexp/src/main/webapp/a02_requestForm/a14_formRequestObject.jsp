<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import = "jspexp.a01_vo.Person"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="UTF-8"/> 
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/com/bootstrap.min.css" >
<style>
	td{text-align:center;}
</style>
<script src="${path}/com/jquery-3.7.1.js"></script>
<script src="${path}/com/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>회원등록</h2>

</div>
<%
String name = request.getParameter("name");
String ageStr = request.getParameter("age");
String loc = request.getParameter("loc");
int age =0;
if(ageStr!=null) age = Integer.parseInt(ageStr);
Person p01 = new Person(name,age, loc);


request.setAttribute("p01", new Person()); // el로 객체를 사용할 수 있는 상황...
%>
<div class="container">
	${p01.setName(param.name)} <%-- p01.setName(요청값을 처리함) --%>
	${p01.setAge(param.age)}
	${p01.setLoc(param.loc)}
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="이름" name="name"  class="form-control mr-sm-2" />
	    <input placeholder="나이" name="age"  class="form-control mr-sm-2"/>
	    <input placeholder="사는곳" name="loc"  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">회원등록</button>
 	</nav>
	</form>
	<h2>회원등록 정보(jstl/el)</h2>
	<h3>${p01.name}</h3>
	<h3>${p01.age}</h3>
	<h3>${p01.loc}</h3>
	<h2>회원등록 정보(java)</h2>
	<h3><%=p01.getName()%></h3>
	<h3><%=p01.getAge()%></h3>
	<h3><%=p01.getLoc()%></h3>

</div>
</body>
</html>