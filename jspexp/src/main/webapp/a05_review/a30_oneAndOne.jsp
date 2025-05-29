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
<jsp:useBean id="dao" class="jspexp.a11_database.A01_OneAndOneDao"/>
<div class="jumbotron text-center">
  <h2>부서번호를 통한 부서 건수 확인</h2>
  <h3>부서번호:${param.deptno }</h3>
  <h3>부서건수:${dao.getEmpCount(param.deptno)}</h3>
</div>
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="부서번호입력" name="deptno"  class="form-control mr-sm-2" />
	    <button class="btn btn-info" type="submit">부서건수확인</button>
 	</nav>
	</form>
</div>
</body>
</html>