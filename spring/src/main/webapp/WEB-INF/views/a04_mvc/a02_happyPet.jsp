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
  	<h2>좋아하는 활동/동물</h2>
	<h3>특별활동:${param.specialAbility}</h3>
	<h3>동물:${petName}</h3>
</div>
<div class="container">
	<form id="frm01" class="form"  >
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="특별활동 입력" name="specialAbility"  class="form-control mr-sm-2" />
	    <button class="btn btn-info" type="submit">Search</button>
 	</nav>
	</form>
</div>
</body>
</html>