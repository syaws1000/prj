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
		let msg = "${msg}"
		if(msg!=""){
			if(!confirm(msg+"\n계속 등록하겠습니까?")){
				location.href="boardList"
			}
		}	
		let sessCk = "${mem.id}"==""
		if(sessCk){
			alert("현재화면은 로그인 하여야 합니다.\n로그인 페이지 이동")
			location.href="login"
		}		
		// 메인 화면 이동 버트
		$("#lstBtn").click(function(){
			location.href="boardList"
		})		
		$("#regBtn").click(function(){
			$("form").attr("action","boardInsert");
			$("form").submit();
		})
	});
</script>
</head>
<body>
   <div class="jumbotron text-center">
        <h2>게시글 등록</h2>
    </div>
    <div class="container">
        <form enctype="multipart/form-data" method="post">
        	<input type="hidden" name="parentId" value="${(empty re.parentId)?0:re.parentId}"/>
            <div class="form-group">
                <label for="title">제목</label>
                <input type="text" value="${re.title}" class="form-control" id="title" name="title" placeholder="제목을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="content">내용</label>
                <textarea class="form-control" id="content" name="content" rows="5" 
                placeholder="내용을 입력하세요" required>${re.content}</textarea>
            </div>
            <%--
            #{title}, #{content}, #{parentId}, #{author}, #{status} reports
             --%>
            <div class="form-group">
                <label for="author">작성자</label>
                <input type="hidden" name="author" value="${mem.id}"/>
                <input type="text" readonly value="${mem.name} [ ${mem.id} ]" class="form-control" >
            </div>
            <div class="form-group">
                <label for="status">상태</label>
                <select class="form-control" id="status" name="status" >
                	<option>공개</option>
                	<option>비공개</option>
                	<option>삭제</option>
                </select>
            </div>
             <div class="form-group">
                <label for="reports">파일첨부</label>
                <input type="file" multiple="multiple" class="form-control" id="reports" name="reports" placeholder="파일을 선택 하세요" >
            </div>           
            <button type="button" id="regBtn" class="btn btn-primary">등록</button>
		    <button id="lstBtn" type="button" class="btn btn-info">메인</button>        
            
        </form>
      </div>  
</body>
</html>