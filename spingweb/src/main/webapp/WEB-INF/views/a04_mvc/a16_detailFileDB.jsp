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
  <h2>등록정보 상세/파일 다운로드</h2>

</div>
<%-- 
// no refno  subject content writer readcnt regdte uptdte		
--%>
<div class="container">
        <form method="post">
            <div class="form-group">
                <label for="no">번호</label>
                <input readonly type="text" value="${board.no}" class="form-control" id="no" name="no" placeholder="제목을 입력하세요" required>
            </div>        
            <div class="form-group">
                <label for="refno">상위글번호</label>
                <input readonly type="text" value="${board.refno}" class="form-control" id="refno" name="refno" placeholder="제목을 입력하세요" required>
            </div>
                   
            <div class="form-group">
                <label for="subject">제목</label>
                <input type="text" value="${board.subject}"  class="form-control" id="subject" name="subject" placeholder="제목을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="content">내용</label>
                <textarea class="form-control" id="content" name="content" 
                	rows="5" placeholder="내용을 입력하세요" >${board.content}</textarea>
            </div>
            <div class="form-group">
                <label for="writer">작성자</label>
                <input type="text" value="${board.writer}" class="form-control" id="writer" name="writer" placeholder="작성자를 입력하세요" required>
            </div>

            <div class="form-group">
                <label for="readcnt">조회수</label>
                <input type="text" readonly value="${board.readcnt}" class="form-control" id="readcnt" name="readcnt" placeholder="작성자를 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="regdte">등록일</label>
                <input readonly type="date" value='<fmt:formatDate value="${board.regdte}" pattern="yyyy-MM-dd"/>' 
                	class="form-control" id="regdte">
            </div>
            <div class="form-group">
                <label for="uptdte">수정일</label>
                <input readonly  type="date" value='<fmt:formatDate value="${board.uptdte}" pattern="yyyy-MM-dd"/>' 
                	class="form-control" id="uptdte">
            </div>
            <div class="form-group">
                <label for="reports">첨부파일</label>
                <c:forEach var="fname" items="${fnames}">
                <button type="button" ondblclick="download('${fname}')" class="btn btn-info" >${fname}</button>
                </c:forEach>
            </div>    
            <script type="text/javascript">
            	function download(fname){
					if(confirm(fname+" 파일다운 하시겠습니까?")){
						location.href="download4?fName="+fname
					}
            	}
            </script>
                             
            <button type="button" class="btn btn-primary">수정</button>
            <button type="button" class="btn btn-danger">삭제</button>
            <button type="button" class="btn btn-info">메인</button>
        </form>
      </div>  
</body>
</html>