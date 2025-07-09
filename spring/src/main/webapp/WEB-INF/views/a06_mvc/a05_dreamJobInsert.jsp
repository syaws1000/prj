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
td {
	text-align: center;
}
</style>
<script src="${path}/com/jquery-3.7.1.js"></script>
<script src="${path}/com/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		let msg = "${msg}"
		if (msg != "") {
			if (!confirm(msg + "\n계속 등록하시겠습니까?")) {
				location.href = "superFoodList"
			}
		}
	});
</script>
</head>

<body>
	<div class="jumbotron text-center">
		<h2>슈퍼푸드 등록</h2>
	</div>
	<div class="container">
		<form method="post">
			<div class="form-group">
				<label for="foodName">슈퍼푸드명</label> 
				<input type="text"
					class="form-control" id="foodName" name="foodName"
					placeholder="슈퍼푸드명 입력하세요" required>
			</div>
			<div class="form-group">
				<label for="funnyEffect">재미있는 효과</label> 
				<input type="text"
					class="form-control" id="funnyEffect" name="funnyEffect"
					placeholder="재미있는 효과 입력하세요" required>
			</div>
			<button type="submit" class="btn btn-primary">등록</button>
		</form>
	</div>
</body>
</html>