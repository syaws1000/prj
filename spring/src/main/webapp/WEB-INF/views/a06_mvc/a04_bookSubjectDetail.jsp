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
			alert(msg)
		}
		$("#uptBtn").click(function(){ 
			if(confirm("수정하시겠습니까?")){
				$("form").attr("action","updateBookSubject");
				$("form").submit()
			}
		})
		$("#delBtn").click(function(){ 
			if(confirm("삭제하시겠습니까?")){
				$("form").attr("action","deleteBookSubject");
				$("form").submit()
			}
		})
		$("#manBtn").click(function(){ 
			location.href="bookSubject"
		})
	});
</script>
</head>

<body>
	<div class="jumbotron text-center">
		<h2>도서  상세</h2>
	</div><%-- // bookTitle subject author --%>
	<div class="container">
		<form method="post">
			<div class="form-group">
				<label for="bookId">도서아이디 </label> 
				<input type="text" value="${bk.bookId}" readonly
					class="form-control" id="bookId" name="bookId"
					placeholder="도서명 입력하세요" required>
			</div>		
			<div class="form-group">
				<label for="bookTitle">도서명</label> 
				<input type="text"  value="${bk.bookTitle}"
					class="form-control" id="bookTitle" name="bookTitle"
					placeholder="도서명 입력하세요" required>
			</div>
			<div class="form-group">
				<label for="subject">주제</label> 
				<input type="text"   value="${bk.subject}"
					class="form-control" id="subject" name="subject"
					placeholder="주제 입력하세요" required>
			</div>			
			<div class="form-group">
				<label for="author">저자</label> 
				<input type="text"   value="${bk.author}"
					class="form-control" id="author" name="author"
					placeholder="저자를 입력하세요" required>
			</div>
			<button id="uptBtn" type="button" class="btn btn-info">수정</button>
			<button id="delBtn" type="button" class="btn btn-warning">삭제</button>
			<button id="manBtn" type="button" class="btn btn-success">메인</button>
		</form>
	</div>
</body>
</html>