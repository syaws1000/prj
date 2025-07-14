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
		<h2>슈퍼푸드 상세</h2>
	</div>
	<div class="container">
		<form method="post">
			<div class="form-group">
				<label for="foodId">아이디</label> 
				<input type="text"
					value="${food.foodId}"
					class="form-control" id="foodId" name="foodId"
					placeholder="슈퍼푸드명 입력하세요" required>
			</div>		
			<div class="form-group">
				<label for="foodName">슈퍼푸드명</label> 
				<input type="text"
					value="${food.foodName}"
					class="form-control" id="foodName" name="foodName"
					placeholder="슈퍼푸드명 입력하세요" required>
			</div>
			<div class="form-group">
				<label for="funnyEffect">재미있는 효과</label> 
				<input type="text"
					value="${food.funnyEffect}"
					class="form-control" id="funnyEffect" name="funnyEffect"
					placeholder="재미있는 효과 입력하세요" required>
			</div>
			<button type="button" class="btn btn-primary">수정</button>
			<button type="button" class="btn btn-warning">삭제</button>
			<button type="button" class="btn btn-info">메인</button>
		</form>
	</div>
</body>
</html>