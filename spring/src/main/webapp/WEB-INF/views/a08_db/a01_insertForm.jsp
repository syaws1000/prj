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
<style type="text/css">
	.input-group-text{width:100%;background-color:linen;
		color:black;font-weight:bolder;}
	.input-group-prepend{width:20%;}
	#chatArea{
		width:80%;height:200px;overflow-y:auto;text-align:left;
		border:1px solid green;
	}
</style>

<script src="${path}/com/jquery-3.7.1.js"></script>
<script src="${path}/com/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		let msg = "${msg}"
		if(msg!="")
			alert(msg)
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>등록화면</h2>

</div>
<%-- 
// employeeId 
// firstName lastName email hireDate salary		
--%>
<div class="container">
	<form method="post">
		<div class="input-group mb-3">	
			<div class="input-group-prepend ">
				<span class="input-group-text  justify-content-center">성</span>
			</div>
			<input name="firstName" class="form-control" value="" />	
		</div>	
		<div class="input-group mb-3">	
			<div class="input-group-prepend ">
				<span class="input-group-text  justify-content-center">이름</span>
			</div>
			<input name="lastName" class="form-control" value="" />	
		</div>	
		<div class="input-group mb-3">	
			<div class="input-group-prepend ">
				<span class="input-group-text  justify-content-center">이메일</span>
			</div>
			<input name="email" class="form-control" value="" />	
		</div>	
		<div class="input-group mb-3">	
			<div class="input-group-prepend ">
				<span class="input-group-text  justify-content-center">입사일</span>
			</div>
			<input type="date" name="hireDate" class="form-control" value="" />	
		</div>	
		<div class="input-group mb-3">	
			<div class="input-group-prepend ">
				<span class="input-group-text  justify-content-center">급여</span>
			</div>
			<input name="salary" class="form-control" value="" />	
		</div>					
		<div style="text-align:right;">
				<input type="submit" class="btn btn-primary" value="등록" />
				<input type="button" class="btn btn-info" onclick="location.href=''" value="조회리스트" id="mainBtn"/>
		</div>	
	</form>	
</div>
</body>
</html>