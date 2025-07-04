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
	
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>공지사항 상세화면(${param.boardId})</h2>
</div>
<%-- 
//  ann.boardId ann.title ann.content ann.parentId ann.author ann.createdAt ann.updatedAt ann.status ann.commentCount
			
--%>
  <div class="container">
        <form method="post">
            <div class="form-group">
                <label for="boardId">게시물 아이디</label>
                <input readonly type="text" value="${ann.boardId}" class="form-control" id="boardId" name="boardId" placeholder="제목을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="title">제목</label>
                <input readonly type="text" value="${ann.title}" class="form-control" id="title" name="title" placeholder="제목을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="parentId">상위 글아이디</label>
                <input readonly type="text" value="${ann.parentId}" class="form-control" id="parentId" name="parentId" placeholder="제목을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="author">작성자</label>
                <input readonly type="text" value="${ann.author}" class="form-control" id="author" name="author" placeholder="제목을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="createdAt">등록일</label>
                <input readonly type="text"  value='<fmt:formatDate value="${ann.createdAt}"/>' class="form-control" id="createdAt" >
            </div>
             <div class="form-group">
                <label for="updatedAt">수정일</label>
                <input readonly type="text"  value='<fmt:formatDate value="${ann.updatedAt}"/>' class="form-control" id="createdAt" >
            </div>           
            <div class="form-group">
                <label for="status">상태</label>
                <input readonly type="text" value="${ann.status}" class="form-control" id="status" name="status" >
            </div>
            <div class="form-group">
                <label for="status">답글수</label>
                <input readonly type="text" value="${ann.commentCount}" class="form-control" id="commentCount" name="commentCount" >
            </div>
            
            <div class="form-group">
                <label for="views">조회수</label>
                <input readonly type="text" value="${ann.views}" class="form-control" id="views" name="views" >
            </div>
            
            <div class="form-group">
                <label for="reports">파일</label>
                <br>
                <c:forEach var="fname" items="${fnames}">
                <button ondblclick="download('${fname}')" type="button" class="btn btn-info">${fname}</button>
                </c:forEach>
            </div>
            <script type="text/javascript">
            	function download(fname){
					if(confirm(fname+" 다운 받으시겠습니까?")){
						location.href="download?fileName="+fname
					}
				}
            </script>
            <button type="submit" class="btn btn-primary">등록</button>
        </form>
      </div>  
</body>
</html>