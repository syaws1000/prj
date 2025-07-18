<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/com/bootstrap.min.css">
<style>
	.input-group-text{width:100%;background-color:linen;
		color:black;font-weight:bolder;}
	.input-group-prepend{width:20%;}
	#chatArea{
		width:80%;height:200px;overflow-y:scroll;text-align:left;
		border:1px solid green;
		padding-right:15px;
	}
</style>
<script src="${path}/com/jquery-3.7.1.js"></script>
<script src="${path}/com/bootstrap.min.js"></script>
<script type="text/javascript">
	let socketServer = "${socketServer}"
	$(document).ready(function() {
		$("#enterBtn").click(function(){

		})
	});
</script>
</head>

<body>
	<div class="jumbotron text-center">
		<h2>채팅</h2>
	</div>
	<div class="container">
		<div class="input-group mb-3">
			<div class="input-group-prepend ">
				<span class="input-group-text  justify-content-center">입장할이름</span>
			</div>
			<input id="id" class="form-control" placeholder="접속할 아이디 입력" />
			<input id="enterBtn"  class="btn btn-primary" value="채팅방입장"/>
		</div>
	</div>
</body>
</html>