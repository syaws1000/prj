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
  <h2>요청값이 없을 때와 요청값이 있을 때 둘다 처리</h2>
  <h3>별명:${param.nickName }</h3>
</div>
<%-- 
		
--%>
<div class="container">
	<form id="frm01" class="form">
	<%-- action을 생략하면 이 jsp를 view로 호출한 요청 메서드를 다시 호출한다. --%>
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="별명입력" name="nickName"  class="form-control mr-sm-2" />
	    <button class="btn btn-info" type="submit">Search</button>
	    <button class="btn btn-success" 
	    	data-toggle="modal" data-target="#exampleModalCenter"
	        type="button">등록</button>
 	</nav>
	</form>
 
</body>
</html>