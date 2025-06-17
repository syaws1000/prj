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
		let msg = "${msg}"
		if(msg!=""){
			alert(msg)
		}
		
		$("#regBtn").click(function(){
			location.href="customerInsert"
		})
	});
	function goDetail(id){
		location.href="/customerDetail?customerId="+id
	}	
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>고객 리스트</h2>

</div>

<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="고객 명" name="customerName"  value="${param.customerName}" class="form-control mr-sm-2" />
	    <input placeholder="고객 주소" name="customerAddress"  value="${param.customerAddress}" class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button class="btn btn-success" id="regBtn"
	        type="button">등록</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="10%">
   	<col width="20%">
   	<col width="20%">
   	<col width="20%">
   	<col width="30%">
    <thead>
    
      <tr class="table-success text-center">
        <th>아이디</th>
        <th>고객명</th>
        <th>메일</th>
        <th>전화번호</th>
        <th>주소</th>
      </tr>
    </thead>
    <tbody>
    	
    	<c:forEach var="cu" items="${cuList}" >
    	<tr ondblclick="goDetail(${cu.customerId})"><td>${cu.customerId}</td><td>${cu.customerName}</td><td>${cu.customerEmail}</td>
    		<td>${cu.customerPhone}</td><td>${cu.customerAddress}</td></tr>
    	</c:forEach>
    </tbody>
	</table>    
</div>
</body>
</html>