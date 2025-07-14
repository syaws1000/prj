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
		$("#regBtn").click(function(){
			location.href="insertSuperFood"
		})
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>슈퍼푸드리스트</h2>

</div>

<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="음식명" name="foodName"  value="${param.foodName}" class="form-control mr-sm-2" />
	    <input placeholder="재미있는 효과" name="funnyEffect"   value="${param.funnyEffect}"  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button class="btn btn-success" type="button" id="regBtn">등록</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="20%">
   	<col width="30%">
   	<col width="50%">
    <thead>
    
      <tr class="table-success text-center">
        <th>음식아이디</th>
        <th>음식명</th>
        <th>재미있는효과</th>
      </tr>
    </thead>	
 <%-- 
//foodName funnyEffect
//list foodId foodName funnyEffect		
--%>   
    <tbody>
    	<c:forEach var="food" items="${list}">
    		<tr ondblclick="goDetail(${food.foodId})"><td>${food.foodId}</td><td>${food.foodName}</td><td>${food.funnyEffect}</td></tr>
    	</c:forEach>
    </tbody>
	</table>    
	<script type="text/javascript">
		function goDetail(id){
			location.href="superFoodDetail?foodId="+id
		}
	
	</script>
    
</div>
</body>
</html>