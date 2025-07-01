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
						<label for="no">번호</label> <input type="text" readonly
							class="form-control" id="no" name="no" value="${board.no}"
							required>
					</div>
					<div class="form-group">
						<label for="subject">제목</label> <input type="text"
							class="form-control" id="subject" name="subject"
							value="${board.subject}" required>
					</div>
					<div class="form-group">
						<label for="content">내용</label>
						<textarea class="form-control" id="content" name="content"
							rows="5" placeholder="내용을 입력하세요">${board.content}</textarea>
					</div>
					<div class="form-group">
						<label for="writer">작성자</label> <input type="text"
							class="form-control" id="writer" name="writer"
							value="${board.writer}" required>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label for="refno">상위번호</label> <input type="text" readonly
							class="form-control" id="refno" name="refno"
							value="${board.refno}" required>
					</div>
					<div class="form-group">
						<label for="readcnt">조회수</label> <input type="text"
							class="form-control" id="readcnt" value="${board.readcnt}">
					</div>
					<div class="form-group">
						<label for="regdte">등록일</label> <input type="text"
							class="form-control"
							value="<fmt:formatDate value='${board.regdte}'/>">
					</div>
					<div class="form-group">
						<label for="uptdte">수정일</label> <input type="text"
							class="form-control"
							value="<fmt:formatDate value='${board.uptdte}'/>">
					</div>
					<div class="form-group">
						<label for="no">첨부파일</label>
						<c:forEach var="bfile" items="${bfiles}">
							<span class="badge bg-info">${bfile.fname}</span>,
						</c:forEach>
					</div>
				</div>
			</div>
			<button type="submit" class="btn btn-primary">등록</button>
		</form>
	</div>
</body>
</html>