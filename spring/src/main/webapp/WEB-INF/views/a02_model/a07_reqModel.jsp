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
  <h2>요청값과 모델 데이터</h2>
  <h3>가격1:${param.price1}</h3>
  <h3>가격2:${param.price2}</h3>
  <h3>합산:${totAll}</h3>

</div>
<%-- 
		
--%>
<div class="container">
	<form id="frm01" class="form"  >
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="가격1" name="price1"  class="form-control mr-sm-2" />
	    <input placeholder="가격2" name="price2"  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
 	</nav>
	</form>
</div>	
</body>
</html>