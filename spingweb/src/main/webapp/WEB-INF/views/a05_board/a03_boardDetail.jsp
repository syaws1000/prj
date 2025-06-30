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
		// uptBtn delBtn repBtn lstBtn
		$("#uptBtn").click(function(){ 
			if(confirm("수정하시겠습니까?")){
	
			}
		})
		$("#delBtn").click(function(){ 
			if(confirm("삭제하시겠습니까?")){
				
			}
		})
		$("#repBtn").click(function(){ 

		})
		$("#lstBtn").click(function(){ 
			location.href="boardList"
		})
	
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>게시물 상세</h2>
</div>

 <div class="container">
    <form  method="post">
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="no">번호</label>
                <input type="text" readonly class="form-control" id="no" name="no" value="${board.no}" required>
            </div>
            <div class="form-group">
                <label for="subject">제목</label>
                <input type="text" class="form-control" id="subject" name="subject" value="${board.subject}" required>
            </div>
            <div class="form-group">
                <label for="writer">작성자</label>
                <input type="text" class="form-control" id="writer" readonly name="writer" value="${board.writer}" required>
            </div>              
        
            <div class="form-group">
                <label for="no">첨부파일</label><br>
                <c:forEach var="bfile" items="${bfiles}">
                    <button ondblclick="download('${bfile.fname}')" type="button" 
                    class="btn btn-info">${bfile.fname}</button> 
                </c:forEach>
            </div>
            <script type="text/javascript">
            function download(fname){
            	location.href="download?fileName="+fname
            }           
            </script>

        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="refno">상위번호</label>
                <input type="text" readonly class="form-control" id="refno" name="refno" value="${board.refno}" required>
            </div>
            <div class="form-group">
                <label for="regdte">등록일</label>
                <input type="text" class="form-control" readonly value="<fmt:formatDate value='${board.regdte}'/>">
            </div>      


            <div class="form-group">
                <label for="uptdte">수정일</label>
                <input type="text" class="form-control" readonly value="<fmt:formatDate value='${board.uptdte}'/>">
            </div>

            <div class="form-group">
                <label for="readcnt">조회수</label>
                <input type="text" class="form-control" readonly id="readcnt" value="${board.readcnt}">
            </div>            
        </div>
        <div class="col-md-12">
                <div class="form-group">
                <label for="content">내용</label>
                <textarea class="form-control" id="content" name="content" rows="5" placeholder="내용을 입력하세요">${board.content}</textarea>
        </div>
	    <button id="uptBtn" type="button" class="btn btn-primary">수정</button>
	    <button id="delBtn"  type="button" class="btn btn-danger">삭제</button>
	    <button id="repBtn" type="button" class="btn btn-warning">답글</button>
	    <button id="lstBtn" type="button" class="btn btn-info">메인</button>        
    </div>

   </form>	
</div>
</body>
</html>