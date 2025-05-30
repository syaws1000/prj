<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
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
  <h2>다중의 요청값 처리</h2>

</div>
<%-- 
?name=홍길동&name=김길동&name=마길동		
ex) a32_arrayRequestFruit.jsp
	구매할 과일명(fruits)로 설정해서 과일명을 3개 받아서 화면에 입력한 요청값을 출력
	하세요..
--%>
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="과일명1" name="fruits"  class="form-control mr-sm-2" />
	    <input placeholder="과일명2" name="fruits"  class="form-control mr-sm-2"/>
	    <input placeholder="과일명3" name="fruits"  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
    <thead>
      <tr class="table-success text-center">
        <th>번호</th>
        <th>과일명</th>
      </tr>
    </thead>	
    <tbody>
    	<c:forEach var="fruit" items="${paramValues.fruits}" varStatus="sts">
    	<tr><td>${sts.count}</td><td>${fruit}</td></tr>
    	</c:forEach>
    </tbody>
	</table>    
</div>
</body>
</html>