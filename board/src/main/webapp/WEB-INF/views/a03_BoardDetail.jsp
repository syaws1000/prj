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

	});
</script>
</head>

<body>
	<div class="jumbotron text-center">
		<h2>게시판 상세</h2>

	</div>
	<%-- 
		
	--%>
	<div class="container">
		<form method="post">
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label for="boardId">번호</label> <input type="text" readonly
							class="form-control" id="boardId" name="boardId" value="${board.boardId}"
							required>
					</div>
					<div class="form-group">
						<label for="title">제목</label> <input type="text"
							class="form-control" id="title" name="title"
							value="${board.title}" required>
					</div>
					<div class="form-group">
						<label for="content">내용</label>
						<textarea class="form-control" id="content" name="content"
							rows="5" placeholder="내용을 입력하세요">${board.content}</textarea>
					</div>
					<div class="form-group">
						<label for="author">작성자</label> <input type="text"
							class="form-control" id="author" name="author"
							value="${board.author}" required>
					</div>
					<div class="form-group">
						<label for="status">상태</label>
							<select class="form-control" id="status" name="status">
								<option value="">선택하세요</option>
								<option>공개</option>
								<option>비공개</option>
								<option>삭제</option>
							</select>
						<script>
						$("#status").val("${board.status}")	
						</script>	
					</div>					
					
				</div>
				<%--
					// boardId parentId  title   author content  createAt updatedAt status
	//    commentCount
				
				 --%>
				<div class="col-md-6">
					<div class="form-group">
						<label for="parentId">상위번호</label> <input type="text" readonly
							class="form-control" id="parentId" name="parentId"
							value="${board.parentId}" required>
					</div>
					<div class="form-group">
						<label for="commentCount">답글수</label> <input type="text"
							class="form-control" id="commentCount" value="${board.commentCount}">
					</div>
					<div class="form-group">
						<label for="createAt">등록일</label> <input type="text"
							class="form-control"
							value="<fmt:formatDate value='${board.createAt}'/>">
					</div>
					<div class="form-group">
						<label for="uptdte">수정일</label> <input type="text"
							class="form-control"
							value="<fmt:formatDate value='${board.updatedAt}'/>">
					</div>
					<div class="form-group">
						<label for="no">첨부파일</label>
						<c:forEach var="bfile" items="${bfiles}">
							<span class="badge bg-info">${bfile.fname}</span>,
						</c:forEach>
					</div>
				</div>
			</div>
		    <button id="uptBtn" type="button" class="btn btn-primary">수정</button>
		    <button id="delBtn"  type="button" class="btn btn-danger">삭제</button>
		    <button id="repBtn" type="button" class="btn btn-warning">답글</button>
		    <button id="lstBtn" type="button" class="btn btn-info">메인</button>        

		</form>
	</div>
</body>
</html>