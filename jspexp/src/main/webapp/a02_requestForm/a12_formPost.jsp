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
  <h2>구매물품 등록</h2>

</div>
<%-- 
		
--%>
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="물건명" name="pname"  class="form-control mr-sm-2" />
	    <input placeholder="가격" name="price"  class="form-control mr-sm-2"/>
	    <input placeholder="갯수" name="cnt"  class="form-control mr-sm-2"/>
	    <button class="btn btn-success" type="submit">등록</button>
 	</nav>
	</form>
	<c:if test="${not empty param.pname }">
	<h2 class="text-center">등록된 정보</h2>
   	<table class="table table-hover table-striped">
   	<col width="33%">
   	<col width="34%">
   	<col width="33%">
    <thead>
      <tr class="table-success text-center">
        <th>물건명</th>
        <th>가격</th>
        <th>갯수</th>
      </tr>
    </thead>	
    <tbody>
    	<tr><td>${param.pname}</td><td>${param.price}</td><td>${param.cnt}</td></tr>
    </tbody>
	</table>    
    </c:if>
</div>
</body>
</html>