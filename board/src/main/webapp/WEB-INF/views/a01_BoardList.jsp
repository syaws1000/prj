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
		$("#regBtn").click(function(){
			location.href="boardInsert"
		})
		let sessCk = "${mem.id}"==""
		if(sessCk){
			alert("현재화면은 로그인 하여야 합니다.\n로그인 페이지 이동")
			location.href="login"
		}
		

	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>게시판연습 시작</h2>

</div>
<%-- 
		
--%>
<div class="container">
	<h6 class="text-right">${mem.name}님 로그인중</h6>
	<form id="frm01" class="form"  >
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="제목" name="title" value="${param.title}" class="form-control mr-sm-2" />
	    <input placeholder="작성자" name="author"  value="${param.author}"   class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button id="regBtn" class="btn btn-success" type="button">등록</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="10%">
   	<col width="50%">
   	<col width="15%">
   	<col width="15%">
   	<col width="10%">
    <thead>  
      <tr class="table-success text-center">
        <th>번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>상태</th>
        <th>댓글수</th>
      </tr>
    </thead>	
    <tbody>
    	<c:forEach var="a" items="${list}">
    	<tr ondblclick="goDetail(${a.boardId}, '${a.status}', '${a.author}')"><td>${a.boardId}</td><td>${a.title}</td><td>${a.author}</td>
    		<td>${a.status}</td><td>${a.commentCount}</td></tr>
    	</c:forEach>
    </tbody>
	</table>  
	<script>
		function goDetail(boardId, status, author){
			if(status=="공개" || author=="${mem.id}"){
				location.href="boardDetail?boardId="+boardId
			}else{
				alert("공개 항목내지 권한이 있을 때 상세 조회 가능 합니다.")
			}
		}
	</script>  
    
</div>
</body>
</html>