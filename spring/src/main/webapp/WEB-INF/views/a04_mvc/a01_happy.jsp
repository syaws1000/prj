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
  <h2>행복한 휴가!!</h2>
  <h3>요청한 활동:${param.activity}</h3><%-- 요청값 ==> dao까지 가는 내용 --%>
  <h3>목적지:${destination}</h3><%-- dao에서 결과값으로 받은 내용 --%>
</div>
<%-- 
		
--%>
<div class="container">
	<form id="frm01" class="form" >
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="활동입력" name="activity"  class="form-control mr-sm-2" />
	    <button class="btn btn-info" type="submit">Search</button>
 	</nav>
	</form>
</div>
</body>
</html>