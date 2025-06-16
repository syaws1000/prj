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
			location.href="purchaseInsert"
		})
	
	});
	function goDetail(id){
		location.href="purchaseDetail?purchaseId="+id
	}	
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>구매리스트</h2>

</div>

<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="물건명" name="prodName"  value="${param.prodName}" class="form-control mr-sm-2" />
	    <input placeholder="구매가격(시작)" name="start" value="${purchase.start}" class="form-control mr-sm-2"/>
	    <input placeholder="구매가격(마지막)" name="end" value="${purchase.end}"  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button class="btn btn-success" id="regBtn"
	        type="button">등록</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="20%">
   	<col width="20%">
   	<col width="20%">
   	<col width="20%">
   	<col width="20%">
    <thead>
  <%-- 
	// prodName start end
	// prodName purchaseId, customerId,  purchaseDate, purchaseAmount, 		
--%> 
      <tr class="table-success text-center">
      	<th>구매아이디</th>
        <th>물건명</th>
        <th>구매자</th>
        <th>구매일</th>
        <th>구매량</th>
      </tr>
    </thead>	
    <tbody>
    	<c:forEach var="pc" items="${list}">
    	<tr ondblclick="goDetail(${pc.purchaseId})"><td>${pc.purchaseId}</td><td>${pc.prodName}</td><td>${pc.customerName}</td>
    		<td><fmt:formatDate value="${pc.purchaseDate}"/> </td><td>${pc.purchaseAmount}</td></tr>
    	</c:forEach>
    </tbody>
	</table>    

</div>
</body>
</html>