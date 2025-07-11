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
		// carInsert   getFutureCar?carId=1
		$("#regBtn").click(function(){
			location.href="carInsert"
		})
		
	});
	function goDetail(carId){
		location.href="getFutureCar?carId="+carId
	}
	// <tr ondblclick="goDetail(${car.carId})"
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>미래 자동차 리스트</h2>

</div>

<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="자동차명" name="carName" value="${param.carName}" class="form-control mr-sm-2" />
	    <input placeholder="연료타입" name="fuelType"  value="${param.fuelType}" class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button class="btn btn-success" id="regBtn" type="button">등록</button>
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
        <th>자동차이름</th>
        <th>최고속도</th>
        <th>연료타입</th>
      </tr>
    </thead>	
    <%-- 
	list carId  carName carFeature fuelType releaseDate topSpeed	
--%>
    <tbody>
    	<c:forEach var="car" items="${list}">
    	<tr ondblclick="goDetail(${car.carId})"><td>${car.carId}</td><td>${car.carName}</td><td>${car.topSpeed}</td><td>${car.fuelType}</td></tr>
    	</c:forEach>
    </tbody>
	</table>    
    
</div>
</body>
</html>