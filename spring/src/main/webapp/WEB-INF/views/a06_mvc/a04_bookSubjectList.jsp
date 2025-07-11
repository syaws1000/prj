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
			location.href="insertBookSubject"
		})
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>도서 검색</h2>

</div>
<%-- 
bookId bookTitle subject author		
--%>
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="주제" name="subject" value="${param.subject}"  class="form-control mr-sm-2" />
	    <input placeholder="저자" name="author" value="${param.author}"    class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button class="btn btn-success" 
	       id="regBtn" type="button">등록</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
    <thead>
    
      <tr class="table-success text-center">
        <th>도서아이디</th>
        <th>도서명</th>
        <th>주제</th>
        <th>저자</th>
      </tr>
    </thead>
    <tbody>
    	<c:forEach var="bk" items="${books}">
    	<tr ondblclick="goDetail(${bk.bookId})"><td>${bk.bookId}</td><td>${bk.bookTitle}</td><td>${bk.subject}</td><td>${bk.author}</td></tr>
    	</c:forEach>
    </tbody>
	</table>    
	<script type="text/javascript">
		function goDetail(bookId){
			location.href="detailBookSubject?bookId="+bookId
		}
	</script>
</div>
</body>
</html>