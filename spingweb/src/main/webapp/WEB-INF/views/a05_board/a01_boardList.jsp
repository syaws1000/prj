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
<link rel="stylesheet" href="${path}/css/com.css" >

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
		let sessCk = "${mem.name}"==""
		if(sessCk){
			alert("로그인 하셔야 합니다.")
			location.href="login"
		}
		let msg = "${mem.name}님 ${msg}"
		
		//if(msg!="")
		//	alert(msg)
	});
	function logout(){
		if(confirm("로그아웃하시겠습니까?")){
			location.href="logout"
		}
	}
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>게시판리스트</h2>
</div>
<%-- 
		
--%>
<div class="container">
 <h6 class="text-right" ondblclick="logout()">${mem.name} 로그인중</h6>
	<form id="frm01" class="form" >
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="제목" name="subject" value="${param.subject}" class="form-control mr-sm-2" />
	    <input placeholder="작성자" name="writer" value="${param.writer}" class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button class="btn btn-success" id="regBtn" type="button">등록</button>
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
        <th>작성일</th>
        <th>조회수</th>
      </tr>
    </thead>	
    <tbody>
    	<c:forEach var="b" items="${blist}">
    	<tr ondblclick="goDetail(${b.no})"><td>${b.no}</td><td>${b.subject}</td><td>${b.writer}</td>
    		<td><fmt:formatDate value="${b.regdte}" /></td>
    		<td>${b.readcnt}</td></tr>
    	</c:forEach>
    </tbody>
	</table>       
	<script type="text/javascript">
	function goDetail(no){
		location.href="boardDetail?no="+no
	}
		
	</script>
</div>
</body>
</html>