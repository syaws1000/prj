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
			location.href="imaginaryAnimalInsert"
		})
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>상상속 동물 리스트</h2>

</div>
<%--

 --%>
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="동물명" name="animalName"  value="${param.animalName}" class="form-control mr-sm-2" />
	    <input placeholder="습관" name="habitat" value="${param.habitat}" class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button id="regBtn" class="btn btn-success" type="button">등록</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
    <thead>
      <tr class="table-success text-center">
        <th>아이디</th>
        <th>동물명</th>
        <th>능력</th>
        <th>습관</th>
        <%--animalId animalName animalAbility habitat
        	 --%>
      </tr>
    </thead>	
    <tbody>
    	<c:forEach var="ani" items="${list}">
    		<tr><td>${ani.animalId}</td><td>${ani.animalName}</td><td>${ani.animalAbility}</td><td>${ani.habitat}</td></tr>
    	</c:forEach>
    </tbody>
	</table>    
    
</div>

</body>
</html>